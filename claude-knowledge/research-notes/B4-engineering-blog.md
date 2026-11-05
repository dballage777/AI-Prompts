# B4 — Anthropic engineering/research articles
Fetched 2026-11-05. Every page loaded with HTTP 200. Article URLs now sit under anthropic.com/research/... (the index is at /engineering).

## Index highlights (anthropic.com/engineering)
These articles are relevant to agents. The ones read for these notes are marked (read).
- Harness design for long-running app development (Mar 2026)
- Scaling Managed Agents (Apr 2026)
- Claude Code auto mode (Mar 2026)
- Building a C compiler with parallel Claudes (Feb 2026)
- Demystifying evals for AI agents (Jan 2026)
- Effective harnesses for long-running agents (Nov 2025) (read)
- Advanced tool use (Nov 2025)
- Code execution with MCP (Nov 2025)
- Claude Code sandboxing (Oct 2025)
- Agent Skills (Oct 2025) (read)
- Effective context engineering (Sep 2025) (read)
- Writing tools for agents (Sep 2025) (read)
- Multi-agent research system (Jun 2025) (read)
- Claude Code best practices (Apr 2025) (read, marked historical)
- "think" tool (Mar 2025)

## Building effective agents (Dec 2024)
- Workflows follow predefined code paths. Agents decide their own process and which tools to use.
- "find the simplest solution possible, and only increasing complexity when needed." Often a single call with retrieval and examples is enough.
- The building block is the augmented LLM: retrieval, tools, and memory.
- Five workflow patterns:
  - Prompt chaining, with programmatic gates between steps.
  - Routing.
  - Parallelization, either sectioning or voting.
  - Orchestrator-workers, where subtasks are decided at runtime.
  - Evaluator-optimizer, used when clear criteria exist and feedback measurably helps.
- Autonomous agents need ground truth from the environment, stopping conditions such as max iterations, sandboxing, and guardrails.
- Frameworks can hide the actual prompts. Start by calling the API directly.
- Three principles: simplicity, transparency (show the planning steps), and a well-crafted ACI (agent-computer interface).
- "Tool definitions and specifications should be given just as much prompt engineering attention as your overall prompts." Poka-yoke the arguments, i.e. design them so mistakes are hard to make. Absolute file paths fixed SWE-bench tool errors.

## Effective context engineering (Sep 2025)
- Context engineering means curating the best set of tokens at inference time. It is how prompt engineering has evolved.
- **Context rot:** recall degrades as context grows. **Attention budget:** "Context... must be treated as a finite resource with diminishing marginal returns." Goal: "the smallest set of high-signal tokens that maximize the likelihood of your desired outcome."
- **Right altitude** for system prompts: neither brittle if-else rules nor vague guidance. Use XML or Markdown sections. Start minimal on the best model, then add to it based on observed failures. "Minimal does not necessarily mean short."
- Tools should be self-contained and unambiguous. "If a human engineer can't definitively say which tool should be used... an AI agent can't be expected to do better."
- Few-shot examples: a small set of diverse, canonical examples beats listing every edge case.
- **Just-in-time retrieval:** keep lightweight identifiers (paths, queries) in context and load the content when needed. Claude Code combines both approaches: CLAUDE.md is loaded up front, and glob/grep run just in time. Metadata and folder structure act as signals. Progressive disclosure.
- Long-horizon techniques:
  - **Compaction**: keep decisions, unresolved bugs, and the 5 most recent files. Tool-result clearing is the lightest form.
  - **Structured note-taking**: NOTES.md files and to-do lists.
  - **Sub-agent architectures**: subagents return condensed summaries of 1–2k tokens.
- Which to use: compaction for long dialogues, notes for milestone-driven work, multi-agent for parallel research. "do the simplest thing that works."

## Multi-agent research system (Jun 2025)
- Orchestrator-worker design: an Opus lead and Sonnet subagents, plus a CitationAgent. It beat a single agent by 90.2% on Anthropic's internal eval.
- Token usage explained 80% of the variance in performance. Agents use about 4× the tokens of chat, and multi-agent systems about 15×. Use them only for high-value, breadth-first, parallelizable work, not for tightly coupled coding.
- **Delegation spec:** every subagent needs an objective, an output format, tool/source guidance, and clear boundaries. Vague delegation produced duplicated work.
- **Effort scaling rules:**
  - Simple facts: 1 agent, 3–10 tool calls.
  - Comparisons: 2–4 subagents, 10–15 calls each.
  - Complex research: more than 10 subagents.
- Start wide (short, broad queries), then narrow. Use interleaved thinking after tool results to judge their quality.
- Running 3–5 subagents and 3+ tool calls in parallel cut time by up to 90%.
- Evals: start with about 20 real queries. An LLM judge scoring 0–1 with a rubric (facts, citations, completeness, source quality, tool efficiency) works. Humans still caught SEO-farm source bias. Grade the outcome, not the path taken.
- "Agents are stateful and errors compound": build checkpoints and resume, and tell the agent when a tool fails.
- Have subagents write outputs to the filesystem and pass back references, which avoids a game of telephone. Save the plan to memory before the context limit.
- An agent rewrote a flawed tool description, which made later agents 40% faster.

## Writing tools for agents (Sep 2025)
- "Tools are... a contract between deterministic systems and non-deterministic agents."
- Process: prototype, then evaluate on realistic multi-step tasks with verifiable outcomes, then iterate with Claude by pasting transcripts and having it refactor the tools. Keep held-out test sets.
- Metrics: accuracy, runtime, number of calls, tokens, errors.
- Build fewer, higher-level tools: e.g. schedule_event rather than three separate calls, search_logs rather than read_logs. Namespace them (asana_projects_search).
- Return meaningful context (names rather than UUIDs). Offer a `response_format` of concise or detailed; concise used about 1/3 of the tokens.
- Use pagination, filtering, and truncation. Claude Code caps tool output at 25k tokens.
- Error messages should be actionable. Write tool descriptions as if for a new hire, with unambiguous parameter names (`user_id`).

## Agent Skills (Oct 2025; open standard at agentskills.io since Dec 2025)
- A skill is a directory containing SKILL.md (YAML with name and description) plus optional files and scripts.
- **Three levels of progressive disclosure:** (1) name and description are always loaded, (2) the SKILL.md body loads when the skill is relevant, (3) linked files load only when needed. So the total context a skill can bundle is effectively unbounded.
- Scripts run without being loaded into context, which suits deterministic operations. Split mutually exclusive contexts into separate files. Say clearly whether a script should be run or read.
- Start with evaluation. Have Claude capture what worked and common mistakes back into the skill.
- Security: only use trusted sources, and audit the scripts and any network instructions.

## Effective harnesses for long-running agents (Nov 2025)
- Two failure modes: trying to one-shot the whole job and running out of context midway, and declaring victory too early.
- Solution: an **initializer agent** creates init.sh, claude-progress.txt, an initial git commit, and a JSON feature list (200+ items, each with `passes:false`). Then a **coding agent** does one feature per session.
- "It is unacceptable to remove or edit tests..." JSON is used because models modify Markdown more freely.
- Session-start ritual: pwd, then read the git log and progress file, then pick the highest-priority unfinished feature, run init.sh, and run a smoke end-to-end test before doing new work.
- Require end-to-end testing "as a human user would", e.g. with browser automation. Leave the repo clean and mergeable at the end of every session.

## Claude Code best practices (Apr 2025; "no longer maintained", superseded by the docs)
- Historical, but still accurate:
  - The explore, plan, code, commit loop ("Steps #1-#2 are crucial").
  - The TDD loop: write the tests, confirm they fail, commit, implement without changing the tests.
  - Iterating on screenshots.
  - Markdown checklists as a scratchpad for large migrations.
  - One Claude writes and another reviews.
  - Git worktrees for parallel work.
  - Headless fan-out and pipelines.
  - "Claude can infer intent, but it can't read minds."
  - Only use `--dangerously-skip-permissions` in a container with no internet.
- Outdated: the "think < think hard < ultrathink" ladder. Current docs say only `ultrathink` and effort settings matter.
