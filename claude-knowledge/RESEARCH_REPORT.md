# Research Report: Claude Code Prompt Engineering, Context Engineering, Agentic Workflows, and Governance
Date: 2026-11-05. Scope: the 30 designated sources plus 20 expansion sources. Method: 11 parallel web-fetch research agents in two rounds (primary sources, then fallbacks and expansion). Raw notes are in `research-notes/`, the source status table is in `knowledge/12_SOURCE_DIRECTORY.md`, and the synthesized reference is in `knowledge/`.

## 1. Coverage summary
| Status | Count | Sources |
|---|---|---|
| READ (fully or substantially) | 19 | S1, S3, S4, S5, S6, S7, S8, S9, S11, S12, S13, S14, S16, S17, S19, S20, S21, S22, S25 (S3–S7 partly from summaries) |
| ALT (blocked; official equivalent read) | 5 | S2 and S10 via platform.claude.com · S15 via the Claude Code MCP docs and the spec repo · S18 via the claude-code-templates GitHub repo · S23 via the guide's web chapters |
| BLOCKED (not examined) | 6 | S24 (Advanced Patterns PDF) · S26–S28 (Reddit) · S29 (Hacker News) · S30 (Discord) |
| Expansion sources read | 20 | E1–E20 (Anthropic engineering articles, docs pages, support tips, the claude-code issue tracker, community lists) |

The six blocked sources were refused by this cloud session's network. **I did not examine them and make no claims about their content.** I used web-search snippets only as indirect, anecdotal signals, and labeled them that way.

## 2. Key findings
### 2.1 The central idea: advisory vs. deterministic control
Every official source draws the same line. CLAUDE.md, skills, and prompts are *context*: the model decides whether to follow them. Hooks, permission rules, the sandbox, and managed settings are *enforcement*: the harness applies them regardless [S3, S4, S25]. "A real guardrail needs to be deterministic" [S25]. "If you keep adding emphasis… that line belongs in a hook" [S3]. This reverses the 2025 advice to add "IMPORTANT / YOU MUST" for adherence [E5]. The reversal is recorded in 13.

### 2.2 Verification is the highest-leverage practice
Three independent official sources call verification the top lever: the best-practices doc ("Give Claude something it can run that comes back pass or fail") [S3], the support tips ("#1 tip") [E15], and the harness-design article [E7]. Two companion findings:
- Require *evidence* (commands and their output) rather than claims [S3].
- Agents over-praise their own work, so use a **separate, skeptical evaluator** [E7].

### 2.3 Context is a finite attention budget
Context rot and the attention budget [S22] explain many observed failures: CLAUDE.md rules getting ignored, quality drifting in long sessions. The recommended remedies:
- Keep CLAUDE.md small (under 200 lines) and include only what Claude can't discover itself [S3, S4, S25].
- Load information just in time [S22].
- Use progressive disclosure through skills [E3].
- Use path-scoped rules [S4].
- Use subagents to isolate exploration [S6, S22].
- Compact, take structured notes, or reset context with a handoff file for long work [S22, E7].

One non-obvious fact: `@imports` do **not** save tokens [S4].

### 2.4 Prompting has shifted with the 2026 models
The best-practices page is now a single "living reference" [E17]. Changes worth knowing:
- Prefill is unsupported on 4.6+ models.
- `budget_tokens` has been replaced by effort and adaptive thinking.
- Shouting in prompts causes over-triggering.
- Models are more concise and may skip summaries.
- Effort level strongly affects thoroughness [E17, E19].

Durable techniques still hold: be clear and direct, explain why, give 3–5 examples, use XML structure, put documents first and the query last (up to 30% better), and ground answers in quotes [E17].

### 2.5 Agent architecture: simplicity first, then specified delegation
- Start with the simplest workflow, and escalate only for measured gains [S12, S22].
- Multi-agent setups pay off for breadth-first, parallelizable work, at about 15× the tokens [E1].
- Delegation fails without a full spec: objective, output format, tools, boundaries [E1].
- Teams need separate file ownership [S9].
- Long-running work needs externalized state: a JSON feature list, a progress file, init.sh, and git [E4].
- Re-test the scaffolding whenever a new model ships [E7].

### 2.6 Tools and MCP
- Tools are prompts too [S12, E2]. Build fewer, higher-level tools, namespace them, return meaningful fields, offer concise and detailed response formats, write actionable errors, and design them so they're hard to misuse.
- The code-execution pattern can cut tokens by orders of magnitude [E6].
- MCP: a host manages clients, each with a 1:1 stateful session to a server [E12]. Claude Code scopes and limits are in [E11]. Prefer a CLI when one exists [S3]. Reference servers are "not production-ready" [S21].

## 3. Conflicts and outdated guidance
| Topic | Conflict | Resolution |
|---|---|---|
| Emphasis ("IMPORTANT") | E5 (2025) recommends it; S3 says move the rule to a hook | Follow S3, the current docs |
| Thinking keywords | E5's "think < think hard < ultrathink" ladder vs S3's "only ultrathink and /effort" | Follow S3. The ladder is superseded |
| Prefill | Older guides recommend it; E17 says it returns 400 on 4.6+ | Don't prefill. Use structured outputs or instructions |
| Subagent nesting | S25 says "five levels"; S6 says the default is 3, configurable | Use the documented default and configuration |
| CLAUDE.md length | Under 200 lines (S4, S25) vs 100–300 (S19, community) | Under 200. Community numbers aren't measured |
| Skill auto-invocation | Docs describe description matching; community reports it as unreliable (S19, anecdotal) | Write strong descriptions, and invoke critical skills explicitly |
| Model choice | E15: "Use Opus with thinking for everything"; community reports usage-limit pain (E16) | Match model and effort to the task; use cheaper subagents for simple work |

## 4. Community signals (anecdotal; direct forums were not accessible)
- The issue tracker sorted by 👍 shows the most common complaints: usage limits, terminal UX, sycophancy, and quality regressions [E16].
- Community lists recommend TDD guard hooks, safety-hook bundles, Superpowers-style planning skills, and a "living CLAUDE.md" that is updated after each correction. The living-CLAUDE.md idea also appears in official tips [E15].
- These are hypotheses to test, not established facts.

## 5. What was built
- `knowledge/`: 13 topic files, a MASTER_INDEX, a README, and 11 templates (T00–T10).
- `global/CLAUDE.md`: a short global block, installed into `~/.claude/CLAUDE.md` by `install.sh`.
- The repo's root `CLAUDE.md`, so cloud sessions on this repo use the knowledge base.
- `research-notes/`: raw extracts. `RESEARCH_PROGRESS.md`: a file for resuming the work.
- `COMPLETION_AUDIT.md`: what was verified.

## 6. Limitations
- Several long doc pages were truncated by the fetch tool. Parts of S3–S7 and E17 come from model summaries, and those items are marked.
- Six sources were blocked (see §1).
- The knowledge base is a snapshot (CLI v2.1.318). Details tied to specific versions will go stale.
- **Persistence:** this cloud session's `~/.claude` is temporary. The durable copy is the git repo. To make it global on a local machine, run `install.sh` there.
