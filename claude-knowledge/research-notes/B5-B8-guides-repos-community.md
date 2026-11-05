# B5–B8 — Guides, repos, MCP, community
Fetched 2026-11-05.

## B5: Guides
- **#23 Complete Guide to Building Skills (PDF)** and **#24 Claude Code Advanced Patterns (PDF)**: both FAILED. The host resources.anthropic.com is not allowed from this session (DNS/proxy rejected). Fallback attempts are recorded in research-notes/R2-fallbacks.md.
- **#25 Steering Claude Code** (claude.com/resources/articles/steering-claude-code-skills-hooks-rules-subagents-and-more, by Michael Segner, June 18 2026): OK.
  - It covers seven ways to steer Claude: CLAUDE.md, rules, skills, subagents, hooks, output styles, and appending to the system prompt. It compares them on when each loads, how each behaves under compaction, and how much context each costs. The full table is in knowledge/06.
  - "Keep CLAUDE.md under 200 lines, give it an owner, and review changes to it like code."
  - Anti-patterns:
    - "Every time X do Y" belongs in a hook, not CLAUDE.md. Quote: "The model choosing to run a formatter is different from the formatter running automatically."
    - "Never do X" belongs in a hook or permission rule. Quote: "A real guardrail needs to be deterministic."
    - A 30-line procedure in CLAUDE.md should be a skill instead.
    - An unscoped rule meant for one directory should be scoped with `paths:`.
    - Personal preferences don't belong in the project's CLAUDE.md.
  - Subagent vs. skill: use a subagent for side work you want isolated, returning only a summary. "Use a skill when you want the procedure to play out inside the main thread so you can see and steer each step."
  - Subagents can nest up to 5 levels (per this article; the docs say the default depth is 3, configurable). Hooks have five types; command, http, and mcp_tool are deterministic, while prompt and agent hooks use model judgment.
  - Output styles are never compacted and carry the most weight. Appended system prompts follow less reliably as the number of instructions grows.
  - Monorepos: a CLAUDE.md per subdirectory, plus `claudeMdExcludes`. Org-wide policy goes in managed settings. Plugins bundle everything together.

## B6: Repos and MCP
- **#13 claude-cookbooks** (formerly anthropic-cookbook; about 54k stars): OK.
  - Folders: capabilities (classification, RAG, summarization), tool_use (parallel tools, tool_choice, pydantic, structured JSON, programmatic tool calling, memory cookbook, automatic context compaction, tool search), patterns/agents, extended_thinking, claude_agent_sdk, managed_agents, evals, cost/latency optimization, observability, multimodal, skills.
  - It has its own CLAUDE.md.
- **#14 anthropics/skills** (about 188k stars): OK.
  - Only `name` (lowercase, hyphens) and `description` ("what the skill does and when to use it") are required.
  - The template is 6 lines. The spec now lives at agentskills.io/specification.
  - Install with `/plugin marketplace add anthropics/skills`, then `/plugin install document-skills@anthropic-agent-skills`.
  - The docx/pdf/pptx/xlsx skills are source-available, not open source.
- **#15 modelcontextprotocol.io**: FAILED (host not allowed). See R2-fallbacks for alternatives.
- **#20 anthropics/claude-code**: OK.
  - CHANGELOG top entry is **v2.1.318**.
  - Recent additions: `permissions.blockWritesOutsideWorkingDirectories` (2.1.314), `CLAUDE_CODE_SUBAGENT_EFFORT` and `CLAUDE_CODE_DISABLE_ULTRATHINK` (2.1.316), and `onFailure:"block"` for SDK hooks (2.1.317). Fast mode for Opus 4.8 was deprecated on Oct 30 2026.
  - Plugin layout: `.claude-plugin/plugin.json` plus commands/, agents/, skills/, hooks/, .mcp.json. Official plugins live in anthropics/claude-plugins-official.
- **#21 modelcontextprotocol/servers**: OK.
  - Current reference servers: Everything, Fetch, Filesystem, Git, Memory, Sequential Thinking, Time.
  - Many servers were archived: GitHub, Slack, Postgres, Puppeteer, and others.
  - Transports are stdio and Streamable HTTP. SSE is deprecated.
  - Debug with the Inspector: `npx @modelcontextprotocol/inspector ...`.
  - The README calls these servers "not as production-ready solutions." The registry is registry.modelcontextprotocol.io.

## B7: Community repos (unofficial; treat as opinion)
- **#16 ianwieds/awesome-claude-code**: OK.
  - Small (1 star, 5 commits) but well-categorized list of plugins, skills, subagents, hooks, and MCP.
  - Notable entries: Superpowers (obra; TDD/planning skills framework), TDD Guard hook, cc-safe-setup (blocks destructive commands), "Writing a Good CLAUDE.md" (humanlayer.dev), and "Dive into Claude Code" (an academic paper).
- **#17 hztBUAA/awesome-claude-code**: OK. Small (5 stars), badge dated 2026-02-20.
  - Useful "Working Effectively" section with these points:
    - Verification-first is the highest-leverage habit.
    - Use `/clear` between tasks.
    - Start fresh after 2 or more failed corrections.
    - Plan mode, then implement.
    - For headless runs use `--max-turns` and `--max-budget-usd`.
    - Multi-agent patterns: coordinator-worker, judge-review, pipeline.
- **#18 aitmpl.com**: FAILED (host not allowed). The underlying project is github.com/davila7/claude-code-templates (MIT; a community catalog of 400+ agents, commands, hooks, MCP servers, and settings).
  - Installed with `npx claude-code-templates@latest`.
  - Beware typosquatted package names. Source: web search 2026-11-05.
- **#19 claude-bootstrap 02-state-of-the-art.md**: OK.
  - A single-author synthesis of 36 sources, validated 2026-06-02. It is self-promotional, and its "consensus %" figures are not measured.
  - Claims:
    - CLAUDE.md of about 100–300 lines.
    - Plan mode for tasks of 3+ steps.
    - Self-verification.
    - Hooks for enforcement.
    - Subagents for isolation.
    - Phrase rules positively instead of "Do NOT".
  - Anti-patterns it lists:
    - CLAUDE.md over 500 lines.
    - The "kitchen sink session".
    - Endless fix-fail loops.
    - Over-engineering.
    - Skills as a silver bullet.
    - Unintegrated memory layers.
  - Debates: skill auto-invocation reliability (it cites "<70%" from MindStudio, unverified).
- Fallback: **hesreallyhim/awesome-claude-code** (57.3k stars, very active) loaded, but its README body didn't return.

## B8: Communities (#26–30)
- Reddit r/ClaudeAI, r/ClaudeCode, and r/PromptEngineering: BLOCKED (the fetch tool refuses reddit.com, including old.reddit and .json).
- Hacker News and the Algolia HN API: BLOCKED (host not allowed). Discord invite: BLOCKED.
- Nothing was read directly. The secondary and indirect evidence gathered through web search (2026-11-05) is labelled anecdotal:
  - Commonly repeated advice in search results and secondary write-ups:
    - Plan mode first (Shift+Tab), and re-plan rather than pushing through.
    - Keep CLAUDE.md short (under about 200 lines).
    - Have Claude add each correction to CLAUDE.md so the mistake doesn't repeat (attributed to Boris Cherny via mirrors).
    - Use subagents to keep the main context clean.
    - Parallel sessions burn through usage limits quickly.
    - Have a second instance review the plan.
  - HN mirror discussions: long CLAUDE.md files get partially ignored, because "every instruction added competes for attention". Trim `/init` output, since much of it is discoverable from the code.
  - Search results that were only mirrors or scraped snapshots of Reddit were not treated as evidence.
