# B1 — Claude Code core docs (overview, best practices, memory, settings)
Fetched 2026-11-05 by a web-fetch research agent. These are untrusted page extracts, condensed.
**Caveat:** the best-practices and memory pages were cut off at about 40K characters. Items tagged [S] come from a model summary of the rest of the page, not the page text itself, so verify them before quoting.

## code.claude.com/docs/en/overview (OK)
- Available as a CLI, in VS Code and JetBrains, as a desktop app, and on the web (claude.ai/code). All of them share the same CLAUDE.md, settings, and MCP setup.
- Install: `curl -fsSL https://claude.ai/install.sh | bash` (updates itself automatically). Homebrew and WinGet installs do not auto-update.
- CLAUDE.md is "a markdown file you add to your project root that Claude Code reads at the start of every session." If there's no CLAUDE.md, an AGENTS.md is used instead.
- Can be piped into from other commands, e.g. `git diff main --name-only | claude -p "review these changed files for security issues"`.
- Also covers scheduled cloud tasks (`/schedule`), `/loop`, Remote Control, `claude --teleport`, `/desktop`, GitHub Actions/GitLab CI, Slack, and Channels.

## code.claude.com/docs/en/best-practices (OK, partial)
- Instructions come in two kinds. Non-deterministic: the prompt, CLAUDE.md, and skills, where the model decides what to do. Deterministic: hooks, deny rules, and managed settings, which the harness enforces. Anything that must always or never happen belongs in the deterministic kind.
- Test for whether a line belongs in CLAUDE.md: "Could it find this by reading the code? Would it actually go and look? If both are yes, leave it out."
- Suggested CLAUDE.md sections: `# Commands` (including how to run a single test), `# Conventions`, `# Gotchas`. Use `/init` to generate one. `/doctor` and `/doctor prompt-audit` (v2.1.283+) flag outdated lines, dead file references, and contradictions.
- Personal notes go in `CLAUDE.local.md`, which should be gitignored.
- If adding "IMPORTANT" doesn't make Claude follow a line, turn that line into a hook.
- `.claude/rules/*.md` files with `paths:` frontmatter load only when Claude works on matching files.
- Skills that have side effects should set `disable-model-invocation: true` so only the user can start them.
- Prefer CLI tools (`gh`) over MCP servers where possible. Add MCP servers with `claude mcp add --transport http <name> <url>` and turn off ones you aren't using to save context.
- **Give Claude a check that comes back pass or fail:** prompt it to keep going until checks pass, use `/goal`, add a Stop hook, or run `/code-review` in a fresh subagent. Ask for evidence (the command and its output), not just "tests pass."
- Stop hook example: `{"hooks":{"Stop":[{"hooks":[{"type":"command","command":"pnpm tsc --noEmit 1>&2 || exit 2"}]}]}}`. Exit code 2 blocks the stop and sends stderr back to Claude. After 8 blocks in a row the harness overrides it; the cap is set by `CLAUDE_CODE_STOP_HOOK_BLOCK_CAP`.
- Use a PostToolUse formatter with matcher `Edit|Write`. Set `onFailure: "block"` for checks like secret scanners.
- Permissions use allow/ask/deny lists. Deny rules apply in every mode, including bypassPermissions. Rules match the tool call, not its intent: a Read deny doesn't stop a script that opens the same file. `/sandbox` closes that gap.
- Scopes: `~/.claude/settings.json` and `.claude/settings.local.json` are personal; `.claude/settings.json` is shared with the team; managed settings are org-level.
- Shift+Tab cycles permission modes. `/fewer-permission-prompts` builds an allowlist from past transcripts. In autoMode lists, keep `"$defaults"`, otherwise your list replaces the built-in rules.
- Effort: `/effort low|high|xhigh|max`. Typing `ultrathink` gets one deep pass. Phrases like "think hard" are just ordinary text now.
- A subagent with `tools: Read, Grep, Glob` is read-only, enforced by the harness. `model: haiku` suits simple work.
- Context commands: `/usage`, `/clear <name>`, `/compact <focus>`. The prompt cache lasts about 1 hour on subscriptions and 5 minutes with API keys.
- Esc interrupts; `/rewind` (or Esc Esc) goes back. **If two corrections haven't fixed it, `/clear` and rewrite the prompt.**
- A reviewer told to find problems "will always find *something*", so keep the "skip style" scoping in review prompts.
- [S] Headless runs: `claude --bare -p ... --allowedTools ... --permission-mode dontAsk --max-turns 20`. Try a loop on 3 files before scaling it up.
- [S] `claude -w <name>` starts in a worktree, and `.worktreeinclude` lists files to copy in. Related commands: `/batch` (5–30 units, each in its own worktree), `/verify`, `/btw`, `/rename`, `--continue`, `--resume`.

## code.claude.com/docs/en/memory (OK, partial)
- Two systems: CLAUDE.md, which you write, and auto memory, which Claude writes to `~/.claude/projects/<project>/memory/MEMORY.md`. Only the first 200 lines or 25KB of MEMORY.md load. Auto memory entries have types user, feedback, project, and reference.
- Both are treated as **context, not enforced configuration.**
- Load order from broadest to narrowest: managed policy (Linux `/etc/claude-code/CLAUDE.md`), then `~/.claude/CLAUDE.md`, then `./CLAUDE.md` or `./.claude/CLAUDE.md`, then `./CLAUDE.local.md`. The files are concatenated, not overridden, and the closest file is read last.
- CLAUDE.md files in parent directories load at launch. Ones in subdirectories load when Claude touches files there.
- `@path` imports nest up to 4 levels deep and resolve relative to the importing file. Paths with spaces use `@Design\ Docs/x.md`. Imports inside code spans or fences are ignored. Importing a file outside the project needs approval in project files; imports in user-scope files don't.
- **Imports still load into context. They organize the file but don't save tokens.** [S] Keep each CLAUDE.md under 200 lines.
- `.claude/rules/` is read recursively. Rules without `paths` load at launch. User rules live in `~/.claude/rules/` and load before project rules.
- `claudeMdExcludes` skips files matching glob patterns. Block-level HTML comments are removed before the file is injected.
- AGENTS.md interplay: start CLAUDE.md with `@AGENTS.md` to share one file with other tools.
- [S] The project-root CLAUDE.md is re-read after `/compact`. Instructions given only in conversation can be lost at that point.
- [S] Subagents don't receive auto memory; forks do. The `InstructionsLoaded` hook can log which memory files loaded.
- Prefer instructions you can check ("Run `npm test` before committing") over vague ones ("Test your changes").

## code.claude.com/docs/en/settings (OK, full)
- Files by scope: user `~/.claude/settings.json`; project `.claude/settings.json` (shared); `.claude/settings.local.json` (personal, added to gitignore automatically); managed settings. `~/.claude.json` holds account data, MCP config, and trust state.
- Precedence: managed, then CLI `--settings`, then local, then project, then user. Lists such as `permissions.allow` merge across files.
- Settings files are strict JSON: no comments and no trailing commas.
- `$schema: https://json.schemastore.org/claude-code-settings.json` gives editor autocomplete.
- Changes to permissions, hooks, and apiKeyHelper reload while running. Use `/status` and `claude doctor` to diagnose.
- `defaultMode` set to auto or bypassPermissions is ignored in project files.
- **Cloud sessions read only the committed `.claude/settings.json`.** User and local settings and device-managed files are not read there.
- `CLAUDE_CONFIG_DIR` moves the `~/.claude` directory.
