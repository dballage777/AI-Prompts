# 06 — Skills, Subagents, Hooks, Rules, and Output Styles
Use this file to decide which mechanism should carry a given instruction, and how to write each one. Sources: S25 (decision table), S5, S6, S7, E10, E3, E13, S14.

## 1. Decision table [Official: S25, reproduced]
| Method | When loaded | Compaction | Context cost | Use for |
|---|---|---|---|---|
| CLAUDE.md (root) | Session start, kept the whole session | Re-read after compaction | High: every line, every turn | Build commands, layout, conventions, team norms |
| CLAUDE.md (subdir) | When files in that directory are touched | Lost until the directory is touched again | Low | Conventions for that subdirectory |
| Rules (`.claude/rules/`) | At start, or by `paths:` | Re-injected | Medium, unless path-scoped | Specific constraints, e.g. "API handlers validate with Zod" |
| Skills | Name and description at start; body when invoked | Re-injected up to a shared budget, oldest dropped first | Low | Procedural workflows and checklists |
| Subagents | Name, description, and tools at start; body when called | Only the final message returns | Zero until called; isolated window | Parallel or side work: search, log analysis, audits |
| Hooks | On lifecycle events | Not affected by compaction | Low | Deterministic automation: lint, block, notify, back up |
| Output styles | System prompt | Never compacted | High; replaces default instructions | Large role changes |
| Append system prompt | CLI flag, per run | Never compacted | Moderate | Tone, length, format for one run |

**Quick chooser**
- Must always or never happen → **hook or permission rule**.
- A procedure (more than about 5 steps), or reference material → **skill**.
- Applies only to some paths → **path-scoped rule**.
- Noisy exploration you only want the conclusion from → **subagent**.
- A short fact needed every time that Claude can't discover itself → **CLAUDE.md**.
- Personal preference → user-level files (`~/.claude/...` or CLAUDE.local.md), not the project CLAUDE.md.
- Subagent vs. skill: "Use a skill when you want the procedure to play out inside the main thread so you can see and steer each step." [S25]

## 2. Skills [S5, E3, E13, S14]
**Location:** `~/.claude/skills/<name>/SKILL.md` (personal) or `.claude/skills/<name>/SKILL.md` (project). Plugin skills are invoked as `/plugin:skill`. Old `.claude/commands/*.md` files still work.

**Layout:** a kebab-case folder containing `SKILL.md`. The filename is case-sensitive. Optional subfolders are `scripts/`, `references/`, and `assets/`. Don't put a README inside the skill folder [E13].

**Frontmatter**
- `name` is lowercase kebab-case, should match the folder name, and must not contain "claude" or "anthropic" [E13].
- `description` is required. It states **what the skill does and when to use it**, with real trigger phrases, in 1,024 characters or fewer, and with no `<` or `>` [E13]. The guide's formula is [What it does] + [When to use it] + [Key capabilities].
- Claude Code also supports these fields [S5]:
  - `when_to_use`, `argument-hint`, `arguments`
  - `disable-model-invocation: true`: only the user can invoke it. Use this for workflows with side effects, such as `/release`.
  - `user-invocable: false`: only Claude can invoke it.
  - `allowed-tools`, `disallowed-tools`, `model`, `effort`
  - `context: fork` with `agent`: runs the skill in a subagent.
  - `paths`, `hooks`, `shell`, `license`, `compatibility`, `metadata`
- Unknown frontmatter fields are silently ignored. Outside Claude Code, only name, description, license, compatibility, metadata, and allowed-tools are portable [S5].

**Body**
- Keep SKILL.md under 500 lines and move details into referenced files [S5].
- Suggested sections: Instructions (as steps), Examples, Troubleshooting (cause and solution for each problem) [E13].
- Give concrete commands ("Run `python scripts/validate.py --input {file}`") rather than vague verbs [E13].
- Say whether a script should be *executed* or *read* [E3].

**Dynamic context:** a line of the form !`git diff HEAD` runs before Claude sees the skill and is replaced by the command's output. Also available: `$ARGUMENTS`, `$1`, `${CLAUDE_SKILL_DIR}` [S5].

**Progressive disclosure, in three levels** [E3]:
1. The name and description are always loaded.
2. The body loads when the skill is relevant.
3. Linked files load only when needed.
Scripts can run without being loaded into context.

**Testing** [E13]:
- Lists of prompts that should trigger the skill and prompts that should not. The guide's target is about 90% correct triggering on 10–20 queries.
- Functional tests, and a comparison of results with and without the skill.
- Fixes for triggering problems:
  - Undertriggers: give the description more detail and more trigger phrases.
  - Overtriggers: add negative triggers and narrow the scope.
- Community reports say auto-invocation is unreliable [S19, anecdotal]. Invoke critical skills explicitly with `/name`.

**Live reload:** edits are picked up without restarting. A new top-level skills directory needs `/reload-skills`.

## 3. Subagents [S6, S25, E1]
**Files:** `.claude/agents/<name>.md` (project) or `~/.claude/agents/` (user). You can also define them with `--agents '{json}'` or run a whole session as one with `claude --agent <name>`.

**Frontmatter (camelCase; misspelled fields are silently ignored, `claude --debug` shows them):**
- `name` and `description` are required.
- Optional: `tools`, `disallowedTools`, `model` (`inherit`, `sonnet`, `haiku`, `opus`), `permissionMode`, `maxTurns`, `skills`, `mcpServers`, `hooks`, `memory` (user, project, or local), `background`, `isolation: worktree`, `effort`, `omitClaudeMd`, `color`, `initialPrompt`.

**Key facts**
- The body becomes the subagent's entire system prompt. **It does not receive the Claude Code system prompt or your conversation.** Put all the context it needs in the definition or the delegation prompt.
- Restricting tools makes it read-only, enforced by the harness (`tools: Read, Grep, Glob`).
- Built-in subagents: Explore and Plan (both read-only), general-purpose, claude-code-guide.

**Description-writing tip:** say *when* to delegate, for example "Use proactively after code changes…".

**Example**
```markdown
---
name: code-reviewer
description: Reviews diffs for correctness bugs and security issues. Use proactively after code changes; skip style nits.
tools: Read, Grep, Glob, Bash
model: sonnet
---
You are a senior reviewer. Report only issues with a concrete failure scenario.
Output: a ranked list with file:line, the issue, the scenario, and a suggested fix. Max 10 items.
```

## 4. Hooks [S7, E10, S3]
**Where they're defined:** `settings.json` (user, project, local, or managed), a plugin's `hooks/hooks.json`, or skill/agent frontmatter.

**Structure:** event → matcher group → handlers.
- Handler types: `command`, `http`, `mcp_tool`, `prompt`, `agent` (agent is experimental).
- Fields: `command`, `args` (exec form, no shell), `timeout` (600s default for command), `async`, `if` (a single permission-rule pattern, e.g. `"Bash(rm *)"`), `onFailure: "block"`, `once`.

**Events you'll use most**
- `PreToolUse`: block or modify a tool call before it runs.
- `PostToolUse`: format or lint after edits.
- `Stop`: refuse to stop until checks pass.
- `UserPromptSubmit`: add context or validate the prompt.
- `SessionStart`: load environment or context. Matcher `compact` runs after compaction.
- `PreCompact` and `PostCompact`, `Notification`, `ConfigChange` (audit).
- `SubagentStop`, `TaskCompleted`, `TeammateIdle`.

**Matchers:** `*` or empty matches everything. `Edit|Write` matches either exactly. Anything else is treated as a JavaScript regex. MCP tools use `mcp__server__tool`, e.g. `mcp__github__.*`.

**Exit codes** [E10]
- **0** = success. Any JSON on stdout is applied. With no output, there's no decision and the normal flow continues.
- **2** = block. stderr becomes the reason, and JSON output can't override it.
- **Any other code** = a non-blocking warning. "If your hook is meant to enforce a policy, use `exit 2`."

Exit 2 *blocks* PreToolUse, UserPromptSubmit, Stop, SubagentStop, TaskCreated, TaskCompleted, PreCompact, and ConfigChange. For PostToolUse the tool has already run, so exit 2 only sends stderr back to Claude. PermissionRequest ignores exit 2; use its decision object instead.

**PreToolUse JSON decision**
```json
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"Destructive command blocked"}}
```

**Recipes** [E10, S3]
- Auto-format: `PostToolUse` with matcher `Edit|Write` and command `jq -r '.tool_input.file_path' | xargs npx prettier --write`.
- Typecheck gate: `Stop` with command `pnpm tsc --noEmit 1>&2 || exit 2`. Guard against loops by checking `stop_hook_active`. The harness overrides a Stop hook after 8 blocks in a row.
- Protect files: a PreToolUse script reads `.tool_input.file_path` and exits 2 for `.env`, lockfiles, or `.git/`.
- Re-inject after compaction: `SessionStart` with matcher `compact` echoes the context to stdout.

**Gotchas**
- Any `echo` in your shell profile (`.bashrc`/`.zshrc`) breaks JSON output. Wrap it in `if [[ $- == *i* ]]`.
- Output that doesn't start with `{` is treated as plain text.
- `@file` includes bypass PreToolUse entirely [E9].
- Test a hook manually: `echo '{"tool_name":"Bash","tool_input":{"command":"ls"}}' | ./hook.sh; echo $?`.

## 5. Output styles [S25]
These replace the default coding instructions unless `keep-coding-instructions: true` is set, and they're never compacted. Try the built-in styles first (Explanatory, Learning, Proactive). Use them for large role changes, not small tweaks.
