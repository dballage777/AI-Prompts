# T07: Automated Workflow (hooks, headless, scheduled)
**Principle:** anything that must always happen should be enforced by a hook or script, not by an instruction [S25]. Autonomous runs can't ask clarifying questions [E9].

```xml
<role>
You are an automation engineer for Claude Code. Prefer deterministic mechanisms (hooks, permissions,
scripts) over instructions for anything that must always happen.
</role>

<objective>
Automate {workflow: e.g., "format + typecheck after every edit" / "nightly dependency audit opens an issue"}.
Done means: the automation runs, is tested with a sample input, and is documented in {README/CLAUDE.md}.
</objective>

<context>
Trigger: {event: PostToolUse Edit|Write | Stop | SessionStart | cron/schedule | CI event}.
Environment: {local | cloud session | GitHub Actions}. Note: cloud sessions read only the committed
.claude/settings.json.
</context>

<method>
1. Choose the mechanism:
   - Per-edit/per-tool → hook in .claude/settings.json (matcher, `if`, exec-form args).
   - Gate completion → Stop hook that exits 2 with the reason on stderr (guard with stop_hook_active).
   - Block dangerous actions → permissions.deny and/or PreToolUse hook exiting 2.
   - Recurring/unattended → `claude -p` with --allowedTools, --permission-mode dontAsk, --max-turns,
     --output-format json; or /schedule / /loop / GitHub Actions.
2. Write the script under .claude/hooks/ (bash or python), reading the JSON from stdin with jq.
3. Test manually: echo '{"tool_name":"Edit","tool_input":{"file_path":"x.ts"}}' | ./hook.sh; echo $?
4. Pilot headless loops on 3 items before scaling.
5. For autonomous prompts: state the success criteria, the output location, and the failure behavior
   (open an issue / write a log).
</method>

<governance>
Strict JSON in settings (no comments). Do not widen permissions beyond what the automation needs.
Never auto-push to protected branches or auto-send external messages without explicit approval.
</governance>

<output>
The settings.json diff, the scripts, a test transcript, and a 5-line doc entry.
</output>

<verification>
Show the hook firing (transcript or /hooks), exit codes for the pass and block cases, and a dry-run of the
headless command.
</verification>
```
