# 13 — Research Changelog
Update this file whenever the knowledge base changes. Add an entry: date, what changed, and which sources were involved. When a technique is replaced, mark the old guidance as superseded rather than silently deleting it.

## 2026-11-05: v1.0 initial build
- **Context:** built in a Claude Code cloud session (CLI v2.1.318 per CHANGELOG). The models current at the time were Fable 5.1, Opus 5.5, Sonnet 5.5, and Haiku 5.5.
- **Sources:** researched the 30 designated sources plus 20 expansion sources (E1–E20). 11 parallel web-fetch research agents worked in 2 rounds.
- **Created:** knowledge/00–13, the global CLAUDE.md block, install.sh, the research report, the completion audit, and the research notes.
- **Access gaps** (recorded, not hidden): Reddit (S26–S28), Hacker News (S29), Discord (S30), the resources.anthropic.com PDFs (S23 via web chapters; S24 not examined), modelcontextprotocol.io (S15 via spec repo plus CC docs), aitmpl.com (S18 via GitHub), docs.anthropic.com (S2/S10 via platform.claude.com).
- **Superseded guidance identified:**
  - The "think < think hard < think harder < ultrathink" ladder (2025 article E5) has been replaced. Only `ultrathink` and `/effort` now have special meaning [S3].
  - Assistant-message prefill is no longer supported on 4.6+ models; it returns a 400 error [E17].
  - `budget_tokens` has been replaced by effort and adaptive thinking; it returns a 400 error on 4.7+ [E17].
  - The 2025 advice to add "IMPORTANT/YOU MUST" for adherence [E5] has been reversed by the current docs: emphasis doesn't fix adherence, so move the rule to a hook [S3]. Newer models also overtrigger on shouty prompts [E17].
  - The Task tool has been renamed Agent (v2.1.63) [S6].
  - Commands have been merged into skills; `.claude/commands/` still works [S5].
- **Open conflicts:**
  - Subagent nesting depth: "five levels" [S25] versus a default of 3 that can be configured [S6].
  - Recommended CLAUDE.md length: under 200 lines [S4, S25] versus 100–300 lines (community, S19).

## Next research (when network allows)
- Re-try S23, S24, S26–S30, and S18 from an unrestricted network.
- Read the remaining parts of the S5, S6, and S7 pages that were only summarized, plus the per-model prompting guides (Opus 5.5, Sonnet 5.5, Fable 5.1).
- Read agentskills.io/specification and the MCP 2026-07-28 spec (transports, auth, elicitation).
