# R2: Expansion and community fallback reading
Fetched 2026-11-05.

## Code execution with MCP (anthropic.com/research/code-execution-with-mcp, Nov 2025)
- The problem: tool definitions are loaded up front, and every intermediate result passes through the model.
- The fix: present each MCP server as a code API (files under `./servers/<server>/<tool>.ts`). The agent lists those files and reads only what it needs. The article reports "150,000 tokens to 2,000 tokens... 98.7%".
- Filter data in code before it reaches the model (for example, log 5 rows out of 10,000). Loops and polling run in code too.
- Private data stays in the execution environment. PII can be replaced with tokens such as `[EMAIL_1]` before the model sees it.
- State persists in workspace files, and reusable functions can be saved as skills (add a SKILL.md).
- Caveat: running generated code requires sandboxing, resource limits, and monitoring.

## Harness design for long-running apps (Mar 2026)
- Failure modes: lost context, and "context anxiety", where the model wraps up early. Context resets with a structured handoff file worked better than compaction alone.
- **Agents praise their own work.** Use a separate evaluator, which is "far more tractable" to tune to be skeptical. Calibrate it with few-shot scored examples.
- The planner → generator → evaluator architecture works. Have them negotiate "sprint contracts" (agreed definitions of done) and communicate through files.
- Out of the box, Claude was "a poor QA agent". The fix was reading the evaluator's logs and tuning its prompt.
- Cost: solo run 20 minutes / $9 with a broken core feature; full harness 6 hours / $200 with a working app.
- On newer models, remove scaffolding that no longer helps: "every component in a harness encodes an assumption about what the model can't do on its own". Re-test these assumptions with each new model.

## Demystifying evals for AI agents (Jan 2026)
- Terms: task, trial, grader, transcript, outcome. Three grader types: code (cheap but brittle), model (flexible but needs calibration), and human (the gold standard).
- pass@k is the chance at least one of k trials succeeds; pass^k is the chance all k succeed. Example: 0.75 per trial gives a pass^3 of about 42%.
- Capability evals should start with a low pass rate. Regression evals should sit near 100%.
- "20-50 simple tasks drawn from real failures is a great start." Include cases where the behavior should not happen as well as where it should.
- A good task is one where two experts would independently agree on pass/fail. Write a reference solution for each task. A 0% pass rate usually means the task is broken.
- Isolate trials: in one case, a model read git history left by an earlier trial.
- "grade what the agent produced, not the path it took." Give LLM judges an "Unknown" option, and use one judge per dimension.
- "Read the transcripts!" Fixing grader bugs moved one benchmark from 42% to 95%.

## Common workflows (code.claude.com/docs/en/common-workflows)
- Resuming sessions: `claude --continue`, `--resume`, and `--from-pr 1234`. Worktrees: `claude --worktree <name>`.
- Plan mode: `claude --permission-mode plan`, or press Shift+Tab until "⏸ plan mode on" appears.
- `@file` pulls a file into context (up to a 25k-token limit). **PreToolUse hooks do NOT run for files included with @**, so use a Read deny rule to block paths.
- `@server:resource` references MCP resources.
- Scheduled and autonomous prompts can't ask clarifying questions, so they must state the success criteria and where the output goes.

## Hooks guide plus exit codes (code.claude.com/docs/en/hooks-guide, /hooks)
- **Exit 0**: success. JSON on stdout is applied. With no JSON, there is no decision and the normal permission flow continues. Plain stdout is added to Claude's context only for UserPromptSubmit, UserPromptExpansion, SessionStart, and PostModelSwitch.
- **Exit 2**: blocking error, and stderr becomes the reason. JSON output can't override it.
- **Any other code, including 1**: non-blocking warning. "If your hook is meant to enforce a policy, use `exit 2`."
- Events exit 2 can block: PreToolUse, UserPromptSubmit, Stop, SubagentStop, TeammateIdle, TaskCreated, TaskCompleted, ConfigChange, PostToolBatch, PreCompact, PreModelSwitch, Elicitation, and WorktreeCreate. For PostToolUse, the tool has already run, so stderr just goes to Claude. PermissionRequest ignores exit 2; use its decision object instead.
- A hook's deny still applies under bypassPermissions or --dangerously-skip-permissions.
- Recipes:
  - Auto-format: `jq -r '.tool_input.file_path' | xargs npx prettier --write` (PostToolUse, matcher Edit|Write).
  - Protect files: protect-files.sh exits 2 for .env, lockfiles, and .git/.
  - Re-inject context after compaction: a SessionStart hook with matcher `compact` that echoes the context.
  - Config audit: a ConfigChange hook.
  - direnv: SessionStart/CwdChanged → `$CLAUDE_ENV_FILE`.
  - Notifications: notify-send or osascript.
- Stop-hook loop guard: if `stop_hook_active` is true, exit 0.
- Gotchas:
  - An unconditional echo in a shell profile breaks the JSON output. Wrap it in `if [[ $- == *i* ]]`.
  - Output that doesn't start with `{` is treated as plain text.
  - Test a hook manually: `echo '{...}' | ./hook.sh; echo $?`.

## Community fallbacks
- **support.claude.com "Claude Code power user tips"** (official Anthropic support article, OK):
  - Tip #1 is verification.
  - Run 3–5 parallel sessions in worktrees (`claude --worktree`, `--tmux`).
  - Plan → auto-accept → execute, and re-plan when things go sideways.
  - End a correction with "Update your CLAUDE.md so you don't make that mistake again."
  - Use /permissions with wildcards instead of skipping permissions.
  - Commit settings.json, and use its `env` field.
  - Anything you do more than once a day should become a skill.
  - Commands: /simplify, /btw, /batch, `/loop` (up to 3 days), /schedule (cloud).
  - `--bare` makes -p start about 10× faster.
  - Hooks: PostCompact to re-inject instructions, PermissionRequest to route approvals.
  - `isolation: worktree` for parallel subagents.
  - Caveats from the article: "Everyone's setup is different, so experiment"; verify version details against the docs; community plugins are not reviewed by Anthropic.
- **anthropics/claude-code issues sorted by 👍** (community pain points, OK). Top themes:
  - Usage limits draining fast (#16157 ~1.5k👍).
  - Terminal scroll and flicker (#826, #3648).
  - Sycophancy, "You're absolutely right!" (#3382).
  - Quality-regression reports (#42796).
  - Requests for AGENTS.md support (#6235, now implemented).
  - Multiple accounts, XDG directories.
  - Reaction counts show popularity, not how common an issue actually is.
- BLOCKED (host not allowed in this session): sankalp.bearblog.dev (HN tips synthesis), marmelab.com, dev.to.
