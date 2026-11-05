# B2 — Skills, Subagents, Hooks, Agent Teams (code.claude.com docs)
Fetched 2026-11-05. The skills, subagents, and hooks pages were only partly read: about 40K characters of text came back, the rest only as a model summary ([S]). The full hooks exit-code table was not read, and the agent-teams page was read in full.

## Skills (code.claude.com/docs/en/skills)
- Where skills live: enterprise (managed), personal `~/.claude/skills/<name>/SKILL.md`, project `.claude/skills/<name>/SKILL.md`, nested `<subdir>/.claude/skills/`, `--add-dir`, and plugins (invoked as `/plugin:skill`). The older `.claude/commands/x.md` files still work, because commands were merged into skills.
- The opening `---` must be the first line. Bad YAML loads the skill without metadata, and unknown frontmatter fields are silently ignored.
- Frontmatter fields: `name`, `description`, `when_to_use`, `argument-hint`, `arguments`, `disable-model-invocation`, `user-invocable`, `allowed-tools`, `disallowed-tools`, `model`, `effort`, `context: fork`, `agent`, `background`, `hooks`, `paths`, `shell`, `metadata`, `license`, `compatibility`.
- description plus when_to_use is cut off at 1,536 characters in the skill listing. [S] Keep SKILL.md under 500 lines and put detail in referenced files.
- Invocation: by default both the user and Claude can invoke a skill. `disable-model-invocation: true` means only the user can; `user-invocable: false` means only Claude can.
- Substitutions: `$ARGUMENTS`, `$N`, `${CLAUDE_SKILL_DIR}`, `${CLAUDE_PROJECT_DIR}`, `${CLAUDE_SESSION_ID}`, `${CLAUDE_EFFORT}`.
- **Dynamic context:** a line of the form !`cmd` runs before Claude sees the skill and is replaced by the command's output. Example: !`git diff HEAD`.
- Edits are picked up live. A newly added top-level skills directory needs `/reload-skills`.
- When names collide, enterprise beats personal and personal beats project.
- Portability: outside Claude Code, only name, description, license, compatibility, metadata, and allowed-tools are valid frontmatter fields.
- Bundled skills: /doctor, /code-review, /batch, /debug, /loop, /claude-api, /verify, /run, /simplify.
- Quote: "a skill's body loads only when it's used, so long reference material costs almost nothing until you need it."

## Subagents (code.claude.com/docs/en/sub-agents)
- A subagent gets its own context window, its own system prompt, its own tools, and its own permissions. **It does NOT receive the Claude Code system prompt, only its own prompt plus basic environment details.**
- Priority: managed, then the `--agents` CLI flag, then `.claude/agents/`, then `~/.claude/agents/`, then plugins. Agents are identified by the frontmatter `name`, not the filename.
- Frontmatter fields: name (required), description (required), tools, disallowedTools, model (`inherit`/sonnet/haiku/opus...), permissionMode, maxTurns, autoCompactWindow, skills, mcpServers, hooks, memory (user/project/local), background, omitClaudeMd, effort, isolation: worktree, color, initialPrompt. Use camelCase exactly, because misspelled fields are silently ignored (`claude --debug` shows them).
- Model order: the per-call model, then frontmatter, then `CLAUDE_CODE_SUBAGENT_MODEL`, then the main session's model.
- Built-in agents: Explore (read-only), Plan (read-only), general-purpose, statusline-setup, claude-code-guide.
- [S] Up to 20 subagents run at once by default and they nest up to 3 levels deep (both configurable by environment variable). Startup warns if subagent descriptions total more than 15k tokens.
- Other ways in: `@"name (agent)"` mentions, `claude --agent <name>`, and `--agents '{json}'`.
- The Task tool was renamed Agent in v2.1.63.

## Hooks (code.claude.com/docs/en/hooks)
- Events: SessionStart, Setup, UserPromptSubmit, UserPromptExpansion, PreToolUse, PermissionRequest, PermissionDenied, PostToolUse, PostToolUseFailure, PostToolBatch, Notification, MessageDisplay, SubagentStart/Stop, TaskCreated/Completed, Stop, StopFailure, TeammateIdle, InstructionsLoaded, ConfigChange, CwdChanged, DirectoryAdded, FileChanged, WorktreeCreate/Remove, PreCompact, PostCompact, Pre/PostModelSwitch, Elicitation(Result), SessionEnd.
- Hooks can be defined in user, project, or local settings, in managed policy, in a plugin's `hooks/hooks.json`, or in skill or agent frontmatter.
- Handler types: command, http, mcp_tool, prompt, agent. Agent handlers are experimental.
- Command handler fields: command, args (exec form), timeout (default 600s), async, asyncRewake, shell, onFailure, statusMessage, once, `if` (one permission-rule pattern such as `"Bash(git *)"`).
- Matchers: `*`, empty, or omitted match everything. Plain words, or words separated by `|`, match exactly. Anything else is treated as a JavaScript regex. MCP tools are named `mcp__server__tool`, and `mcp__memory__.*` matches all of one server's tools.
- Input JSON on stdin: session_id, transcript_path, cwd, permission_mode, hook_event_name, tool_name, tool_input.
- Output: most events take top-level `decision: "block"` plus a `reason`. PreToolUse instead uses `hookSpecificOutput.permissionDecision` (allow/deny/ask/defer) with `permissionDecisionReason`, `updatedInput`, and `additionalContext`. Every event also accepts `continue`, `stopReason`, and `systemMessage`.
- Exit 0 with no output means the hook makes no decision. Exit 2 blocks the action (see best practices for Stop). **"The hook can deny the call, but staying silent doesn't approve it."**
- "Because the `if` filter is best-effort, use the permission system rather than a hook to enforce a hard allow or deny."

## Agent teams (code.claude.com/docs/en/agent-teams) — EXPERIMENTAL
- Turned off by default. Enable with `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1` (as an env var or in settings `env`). Requires an interactive session.
- Structure: a lead plus teammates, each a separate Claude Code instance, sharing a task list (`~/.claude/tasks/{team}/`) and a mailbox (`~/.claude/teams/{team}/inboxes/`).
- `teammateMode` can be auto, in-process, tmux, or iterm2.
- Quality gates: TeammateIdle, TaskCreated, and TaskCompleted hooks, where exit 2 sends feedback back to the teammate.
- Start with 3–5 teammates and about 5–6 tasks each. **"Two teammates editing the same file leads to overwrites. Break the work so each teammate owns a different set of files."**
- Uses "significantly more tokens than a single session." Limits: one team per session, no nested teams, no per-teammate permission modes, and in-process teammates can't be restored with resume or rewind.
- Teammate messages count as messages from another session, not from the user, so they cannot approve prompts.
