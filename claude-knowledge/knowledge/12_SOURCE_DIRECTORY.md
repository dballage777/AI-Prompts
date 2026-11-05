# 12 — Source Directory
Last verified: **2026-11-05**, by web-fetch research agents running in a Claude Code cloud session.

**Status codes**
- READ: the page was fetched and read.
- PARTIAL: the page was truncated. Parts of it came only from a model summary.
- ALT: the original was blocked, so an official or equivalent alternative was read instead.
- BLOCKED: nothing was read.

**Trust tiers**
- **T1** Official Anthropic docs (current)
- **T2** Official Anthropic articles (dated; may be superseded)
- **T3** Official repositories
- **T4** Community repositories and lists
- **T5** Community discussion

Other knowledge files cite sources as `[S#]` or `[E#]`. Raw notes are in `../research-notes/`.

## Designated sources (S1–S30)
| # | Source | URL | Type | Status | Key findings | Access limits |
|---|---|---|---|---|---|---|
| S1 | Claude Code overview | https://code.claude.com/docs/en/overview | T1 | READ | Surfaces, install, CLAUDE.md, headless piping | — |
| S2 | Anthropic docs (home) | https://docs.anthropic.com/ | T1 | ALT | Read https://platform.claude.com/docs/en/home instead. Current models: Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 5.5 | docs.anthropic.com DNS blocked |
| S3 | Claude Code best practices | https://code.claude.com/docs/en/best-practices | T1 | PARTIAL | Deterministic vs non-deterministic control; give Claude a pass/fail check; CLAUDE.md test; `/clear` after 2 failed corrections | ~25% summary-only |
| S4 | Claude Code memory | https://code.claude.com/docs/en/memory | T1 | PARTIAL | Load order; `@` imports (4 hops); rules/paths; auto memory 200 lines/25KB; imports don't save tokens | ~28% summary-only |
| S5 | Skills | https://code.claude.com/docs/en/skills | T1 | PARTIAL | Locations, frontmatter fields, `!`cmd`` injection, invocation control | ~66% summary-only |
| S6 | Subagents | https://code.claude.com/docs/en/sub-agents | T1 | PARTIAL | Frontmatter fields; subagents get no CC system prompt; priority order | ~66% summary-only |
| S7 | Hooks reference | https://code.claude.com/docs/en/hooks | T1 | PARTIAL | 30+ events, handler types, matchers, JSON decisions | ~50% unread; exit codes taken from E10 |
| S8 | Settings | https://code.claude.com/docs/en/settings | T1 | READ | Scopes and precedence; strict JSON; cloud reads only project settings | — |
| S9 | Agent teams | https://code.claude.com/docs/en/agent-teams | T1 | READ | Experimental flag; 3–5 teammates; file ownership | — |
| S10 | Prompt engineering overview | https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview | T1 | ALT | Read the platform.claude.com equivalent plus the best-practices page (E17) | docs.anthropic.com blocked |
| S11 | Engineering blog index | https://www.anthropic.com/engineering | T2 | READ | Index of ~27 articles; articles now live at /research/... | ~23 rendered |
| S12 | Building effective agents | https://www.anthropic.com/research/building-effective-agents | T2 | READ | Workflows vs agents; 5 patterns; ACI; simplicity first (Dec 2024) | — |
| S13 | Anthropic Cookbook | https://github.com/anthropics/anthropic-cookbook | T3 | READ | Now claude-cookbooks: tool_use, memory, compaction, agents patterns | — |
| S14 | Skills repo | https://github.com/anthropics/skills | T3 | READ | Required name and description; spec at agentskills.io; plugin install | Example skills not opened |
| S15 | MCP docs | https://modelcontextprotocol.io/ | T1-ext | ALT | Read E11 and E12 instead | Host blocked |
| S16 | awesome-claude-code (ianwieds) | https://github.com/ianwieds/awesome-claude-code | T4 | READ | Categorized list: Superpowers, TDD Guard, safety hooks | Tiny repo, low adoption |
| S17 | awesome-claude-code (hztBUAA) | https://github.com/hztbuaa/awesome-claude-code | T4 | READ | "Working Effectively" section (verification-first, context hygiene) | Badge dated Feb 2026 |
| S18 | Claude Code Templates | https://www.aitmpl.com/ | T4 | ALT | Read E14 (the GitHub repo) instead | Host blocked |
| S19 | claude-bootstrap state of the art | https://github.com/ulissesflores/claude-bootstrap/blob/main/docs/02-state-of-the-art.md | T4 | READ | Synthesis of 36 sources; anti-patterns; self-promotional; consensus % unmeasured | Validated Jun 2026 |
| S20 | claude-code repo | https://github.com/anthropics/claude-code | T3 | READ | CHANGELOG top is v2.1.318; plugin layout | CHANGELOG mostly summary-only |
| S21 | MCP servers repo | https://github.com/modelcontextprotocol/servers | T3 | READ | 7 reference servers; many archived; "not production-ready" | — |
| S22 | Effective context engineering | https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents | T2 | READ | Context rot, attention budget, right altitude, JIT retrieval, compaction/notes/subagents (Sep 2025) | — |
| S23 | Complete Guide to Building Skills (PDF) | https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf | T2 | ALT | Read 4 of the web chapters (E13) | PDF host blocked; distribution chapter unread |
| S24 | Claude Code Advanced Patterns (PDF) | https://resources.anthropic.com/hubfs/Claude%20Code%20Advanced%20Patterns_%20Subagents%2C%20MCP%2C%20and%20Scaling%20to%20Real%20Codebases.pdf | T2 | BLOCKED | — | Host blocked; no web equivalent found |
| S25 | Steering Claude Code | https://claude.com/resources/articles/steering-claude-code-skills-hooks-rules-subagents-and-more | T2 | READ | 7-mechanism comparison table; "a real guardrail needs to be deterministic" (Jun 2026) | — |
| S26 | r/ClaudeAI | https://www.reddit.com/r/ClaudeAI/ | T5 | BLOCKED | Indirect web-search snippets only | reddit.com refused |
| S27 | r/ClaudeCode | https://www.reddit.com/r/ClaudeCode/ | T5 | BLOCKED | Indirect web-search snippets only | reddit.com refused |
| S28 | r/PromptEngineering | https://www.reddit.com/r/PromptEngineering/ | T5 | BLOCKED | — | reddit.com refused |
| S29 | Hacker News | https://news.ycombinator.com/ | T5 | BLOCKED | Indirect: web-search snippets of HN mirrors | HN and Algolia hosts blocked |
| S30 | Claude Developers Discord | https://discord.com/invite/6PPFFzqPDZ | T5 | BLOCKED | — | discord.com blocked |

## Expansion sources (E1–E20)
| # | Source | URL | Type | Status | Key findings |
|---|---|---|---|---|---|
| E1 | Multi-agent research system | https://www.anthropic.com/research/multi-agent-research-system | T2 | READ | Orchestrator-worker; delegation spec; effort-scaling rules; ~15× tokens (Jun 2025) |
| E2 | Writing tools for agents | https://www.anthropic.com/research/writing-tools-for-agents | T2 | READ | Tool design, response_format, eval-driven iteration (Sep 2025) |
| E3 | Equipping agents with Agent Skills | https://www.anthropic.com/research/equipping-agents-for-the-real-world-with-agent-skills | T2 | READ | 3-level progressive disclosure; scripts outside context (Oct 2025) |
| E4 | Effective harnesses for long-running agents | https://www.anthropic.com/research/effective-harnesses-for-long-running-agents | T2 | READ | Initializer and coding agent; feature list JSON; progress file; init.sh (Nov 2025) |
| E5 | Claude Code best practices (2025 article) | https://www.anthropic.com/research/claude-code-best-practices | T2-historical | READ | Explore→plan→code→commit; TDD; worktrees. Marked "no longer maintained" |
| E6 | Code execution with MCP | https://www.anthropic.com/research/code-execution-with-mcp | T2 | READ | Tools as code APIs; reported 98.7% token reduction (Nov 2025) |
| E7 | Harness design for long-running apps | https://www.anthropic.com/research/harness-design-long-running-apps | T2 | READ | Separate skeptical evaluator; planner/generator/evaluator; remove stale scaffolding (Mar 2026) |
| E8 | Demystifying evals for AI agents | https://www.anthropic.com/research/demystifying-evals-for-ai-agents | T2 | READ | pass@k vs pass^k; 20–50 tasks; grade outcomes; read transcripts (Jan 2026) |
| E9 | Common workflows | https://code.claude.com/docs/en/common-workflows | T1 | READ | --continue/--resume; worktrees; @ bypasses PreToolUse |
| E10 | Hooks guide | https://code.claude.com/docs/en/hooks-guide | T1 | READ | Exit codes (0/2/other); recipes; gotchas |
| E11 | Claude Code MCP | https://code.claude.com/docs/en/mcp | T1 | READ | `claude mcp add`; scopes; .mcp.json; limits; tool search |
| E12 | MCP spec repo and architecture | https://github.com/modelcontextprotocol/modelcontextprotocol | T3 | PARTIAL | Host/client/server; JSON-RPC; servers can't see the conversation |
| E13 | Skills guide (web chapters) | https://claude.com/resources/guides/the-complete-guide-to-building-skills-for-claude | T2 | PARTIAL | Naming rules; description formula; triggering tests |
| E14 | claude-code-templates | https://github.com/davila7/claude-code-templates | T4 | READ | ~1,900 community components; npx installer |
| E15 | Claude Code power-user tips | https://support.claude.com/en/articles/14554000-claude-code-power-user-tips | T1/T2 | READ | Verification is tip #1; worktrees; "update your CLAUDE.md" |
| E16 | claude-code issues by 👍 | https://github.com/anthropics/claude-code/issues | T5 | READ | Pain points: usage limits, terminal UX, sycophancy |
| E17 | Prompting best practices | https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices | T1 | PARTIAL | Living reference for techniques; prefill unsupported on 4.6+ |
| E18 | Increase consistency | https://platform.claude.com/docs/en/test-and-evaluate/strengthen-guardrails/increase-consistency | T1 | READ | Structured outputs, examples, retrieval grounding, chaining |
| E19 | Prompting Haiku 5.5 | https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-haiku-5-5 | T1 | READ | Effort levels; anti-early-stop; date grounding |
| E20 | awesome-claude-code (hesreallyhim) | https://github.com/hesreallyhim/awesome-claude-code | T4 | PARTIAL | Largest community list (57k★); README body didn't load |

## Re-verification guidance
- Claude Code changes almost weekly. Treat version-gated details as perishable (this snapshot is v2.1.318).
- Before relying on an exact flag or field, check the live doc with Claude Code's built-in claude-code-guide agent, or fetch the doc page.
- To fill the BLOCKED rows, re-run the research from a machine whose network allows reddit.com, news.ycombinator.com, discord.com, resources.anthropic.com, modelcontextprotocol.io, and aitmpl.com.
