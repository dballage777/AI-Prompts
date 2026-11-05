# 02 — Claude Code Architecture (as of v2.1.318, 2026-11-05)
Use this file when configuring Claude Code or deciding where an instruction or setting should live. Sources: S1, S3, S4, S8, S20, E9. Details tied to specific versions go stale quickly, so check the live docs before relying on an exact flag.

## 1. The two layers
- **Context (advisory):** CLAUDE.md, rules, skills, auto memory, and prompts. "Claude treats them as context, not enforced configuration." [S4]
- **Enforcement (deterministic):** permissions (allow/ask/deny), hooks, sandbox, and managed settings. "Settings rules are enforced by the client regardless of what Claude decides to do." [S4/S8]
- Rule of thumb: if something *must always* or *must never* happen, put it in the enforcement layer [S3, S25].

## 2. CLAUDE.md memory hierarchy [S4]
Files are loaded from broadest to most specific. They are concatenated, not overridden, and the closest file is read last.
1. Managed policy: `/etc/claude-code/CLAUDE.md` (Linux/WSL), `/Library/Application Support/ClaudeCode/CLAUDE.md` (macOS), `C:\Program Files\ClaudeCode\CLAUDE.md` (Windows).
2. User: `~/.claude/CLAUDE.md` (applies to all your projects).
3. Project: `./CLAUDE.md` or `./.claude/CLAUDE.md` (committed and shared).
4. Local: `./CLAUDE.local.md` (personal; add it to .gitignore).
- CLAUDE.md files in parent directories load at launch. Files in subdirectories load **on demand**, when Claude touches files there.
- Imports: `@path/to/file` anywhere in the file, nested up to 4 levels deep and relative to the importing file. Escape spaces (`@Design\ Docs/x.md`). Imports inside code spans or fenced blocks are ignored. Importing a file outside the project from a *project* file requires approval; *user*-scope imports don't.
- **Imports still load into context, so they don't save tokens** [S4]. For token savings, use path-scoped rules, skills, or plain file references that Claude reads only when needed.
- `.claude/rules/*.md` is read recursively. A rule with no `paths:` loads at launch. `paths:` frontmatter (globs, brace expansion allowed) loads the rule only when matching files are touched. User-level rules live in `~/.claude/rules/`.
- Block-level `<!-- comments -->` are stripped before injection, so they're free maintainer notes.
- `claudeMdExcludes` skips the listed files, which is useful in monorepos. AGENTS.md is used when there's no CLAUDE.md, or you can import it with `@AGENTS.md`.
- The root CLAUDE.md is **re-read after /compact**. Instructions given only in the conversation can be lost.
- **Size:** keep each CLAUDE.md under about 200 lines [S4, S25].

## 3. Auto memory [S4]
- Claude writes `~/.claude/projects/<project>/memory/MEMORY.md` (an index) plus topic files. Only the first 200 lines or 25KB are loaded. Entry types are user, feedback, project, and reference.
- Turn it on or off with `/memory` (`autoMemoryEnabled`). "Always use pnpm" goes to auto memory; "add this to CLAUDE.md" goes to CLAUDE.md.
- Subagents don't receive auto memory, but forks do.

## 4. Settings [S8]
- Scope files: user `~/.claude/settings.json`; project `.claude/settings.json` (commit it); local `.claude/settings.local.json` (personal, auto-gitignored); managed (organization). `~/.claude.json` holds account data, MCP servers, and trust state.
- Precedence: **managed > CLI `--settings` > local > project > user**. Lists such as `permissions.allow` merge across scopes.
- Strict JSON: no comments and no trailing commas. Add `"$schema": "https://json.schemastore.org/claude-code-settings.json"` for autocomplete.
- Permissions, hooks, and apiKeyHelper reload live. Diagnose with `/status` and `claude doctor`.
- `defaultMode: auto` or `bypassPermissions` is ignored in project files.
- **Cloud sessions read only the committed `.claude/settings.json`.** User and local files aren't read there, so put anything a cloud session needs into the repo.
- `CLAUDE_CONFIG_DIR` relocates `~/.claude`.

## 5. Permissions [S3, S8, E10]
- Rule form is `Tool(specifier)`, e.g. `"allow": ["Bash(npm run test *)"]`, `"ask": ["Bash(git push *)"]`, `"deny": ["Read(./.env)", "Read(./secrets/**)"]`.
- Deny rules hold in every mode, including bypassPermissions. Hook denies also hold under `--dangerously-skip-permissions`.
- **Rules match tool calls, not intent.** A Read deny doesn't stop a script that opens the same file, and `@file` references bypass PreToolUse hooks. Use `/sandbox` for OS-level isolation.
- Modes (cycle with Shift+Tab): default/manual, acceptEdits, plan, auto (classifier-based), dontAsk, bypassPermissions.
- `/fewer-permission-prompts` builds an allowlist from your transcripts. In `autoMode` lists, keep `"$defaults"`.

## 6. Context and session commands [S3, E9, E15]
`/clear [name]`, `/compact <focus>`, `/context`, `/usage`, `/rewind` (or Esc Esc), `/btw` (side question with no tools), `/effort`, `/model`, `/init` (`CLAUDE_CODE_NEW_INIT=1` makes it interactive), `/memory`, `/doctor` (and `/doctor prompt-audit`), `/permissions`, `/sandbox`, `/hooks`, `/mcp`, `/agents`, `/skills`, `/plugin`, `/code-review`, `/simplify`, `/verify`, `/batch`, `/goal`, `/loop <interval> <prompt>`, `/schedule`.
- Resume a session: `claude --continue`, `claude --resume [name]`, `claude --from-pr N`.
- Parallel work: `claude --worktree <name>` (or `-w`). `.worktreeinclude` lists files to copy into new worktrees.
- Headless: `claude -p "..."` with `--allowedTools`, `--permission-mode dontAsk`, `--max-turns N`, `--output-format json|stream-json`, and `--bare` (about 10× faster startup [E15]). Try it on 3 items before fanning out [S3].

## 7. Plugins [S20, S14]
- Layout: `.claude-plugin/plugin.json` plus optional `commands/`, `agents/`, `skills/`, `hooks/hooks.json`, and `.mcp.json`. Install with `/plugin marketplace add <owner/repo>`, then `/plugin install <name>@<marketplace>`.
- Official plugins live in `anthropics/claude-plugins-official`. Community plugins aren't reviewed by Anthropic [E15], so audit them before installing.

## 8. Cloud and remote specifics [S8; this session's own environment]
- Cloud containers are temporary. Anything outside the git repo, including `~/.claude`, is lost when the session ends.
- To keep knowledge across cloud sessions, store it **in the repo**: a root `CLAUDE.md` plus `.claude/` folders such as skills, agents, and settings.json.
