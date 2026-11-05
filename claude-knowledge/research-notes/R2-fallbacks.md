# R2: Fallback sources for blocked originals
Fetched 2026-11-05.

## For #23, the Complete Guide to Building Skills
The PDF host was blocked. I used the official guide's web chapters instead.
- Landing page: claude.com/resources/guides/the-complete-guide-to-building-skills-for-claude
- Chapters read: introduction, fundamentals, planning-and-design, testing-and-iteration.
- Not read: the distribution-and-sharing chapter, and the PDF itself (hosted on assets.claude.com, not fetched).

Findings:
- Folder layout: `kebab-case-name/` containing `SKILL.md` (exact case), plus optional `scripts/`, `references/`, and `assets/`. No README.md inside the skill folder.
- `name`: kebab-case, should match the folder name. Must not contain "claude" or "anthropic", which are reserved.
- `description`: required. It must say both WHAT the skill does and WHEN to use it. Under 1024 characters, no `<` or `>`. Include the trigger phrases users would actually say, and file types where relevant.
  - Suggested pattern: [What it does] + [When to use it] + [Key capabilities].
  - Bad examples from the guide: "Helps with projects." and "Implements the Project entity model with hierarchical relationships."
- Optional fields: `license`, `compatibility` (1–500 characters), and `metadata` (author, version, mcp-server).
- Suggested body sections: `# Name`, then `## Instructions` with `### Step N`, then `## Examples`, then `## Troubleshooting` (Cause / Solution).
- Write concrete commands, e.g. "Run `python scripts/validate.py --input {filename}`", rather than "Validate the data."
- Three kinds of skill: document and asset creation, workflow automation, and MCP enhancement.
- Testing:
  - Triggering tests: lists of prompts that should and should not trigger the skill. The guide's aspirational target is 90% triggering on 10–20 relevant queries.
  - Functional tests.
  - Comparing results with and without the skill.
- Fixing triggering problems:
  - Under-triggering: make the description more detailed.
  - Over-triggering: add negative triggers and be more specific.
  - Execution problems: improve the instructions and the error handling.
- "Iterate on a single task before expanding." The `skill-creator` skill can help draft a skill, but it doesn't run evals.

## For #24, Claude Code Advanced Patterns
- Not found on the claude.com guides listing; the host resources.anthropic.com was blocked. **Not examined.**
- Possibly related guide, not read: claude.com/resources/guides/zero-trust-for-ai-agents.

## For #15, modelcontextprotocol.io
Used code.claude.com/docs/en/mcp and the spec repo instead.
- **Claude Code MCP commands:**
  - HTTP: `claude mcp add --transport http <name> <url> [--header "Authorization: Bearer ..."]`
  - stdio: `claude mcp add [--env K=V] [--transport stdio] <name> -- <command> [args]`
  - SSE is deprecated. WebSocket is added via `add-json`.
  - Other commands: list, get, remove, login, logout, serve, reset-project-choices. In a session, use `/mcp`.
- **Scopes:** `local` (the default, stored in ~/.claude.json, this project only), `project` (`.mcp.json` at the repo root, shared with the team), `user` (all projects).
  - Precedence: local > project > user > plugin > claude.ai connectors. Scopes are not merged.
- `.mcp.json` uses a top-level `mcpServers` key. Values can use `${VAR}` and `${VAR:-default}` expansion. Credential variables are blanked in remote URLs and headers.
- **Limits:**
  - `MAX_MCP_OUTPUT_TOKENS` defaults to 25,000, with a warning above 10k.
  - Output over 50k characters is written to a file instead.
  - Timeouts are set with `MCP_TIMEOUT` and `MCP_TOOL_TIMEOUT`.
- **Tool search** (from the model summary, not verbatim): `ENABLE_TOOL_SEARCH` defers loading tools, with `auto:N` options. Setting `alwaysLoad:true` on a server exempts it.
- MCP resources are referenced as `@server:proto://path`. MCP prompts run as `/mcp__server__prompt args`.
- **Security:**
  - Claude Code prompts before trusting servers listed in `.mcp.json`.
  - `disabledMcpjsonServers` turns off listed servers.
  - `--strict-mcp-config` loads only explicitly named configs.
  - "Verify you trust each server before connecting it."
- **Spec repo** (github.com/modelcontextprotocol/modelcontextprotocol):
  - The schema is written in TypeScript first, with JSON Schema generated from it.
  - Spec versions: 2024-11-05, 2025-03-26, 2025-06-18, 2025-11-25, 2026-07-28, and draft.
- **Architecture** (from the 2025-11-25 spec's architecture index):
  - A host contains several clients. Each client has a 1:1, stateful JSON-RPC session with one server.
  - The host enforces security, consent, and lifecycle.
  - Servers expose tools, resources, and prompts. Servers may request sampling through the client.
  - Capabilities are negotiated when the session initializes.
  - Design principle: "Servers should not be able to read the whole conversation, nor 'see into' other servers." Servers should also be easy to build and composable.
  - Transports, from the servers repo: stdio and Streamable HTTP.

## For #18, aitmpl.com
Used github.com/davila7/claude-code-templates instead (OK).
- "CLI tool for configuring and monitoring Claude Code". About 1,900 components: 890+ skills, 420+ agents, 280+ commands, 100+ MCPs, 60+ hooks, and more.
- Install with `npx claude-code-templates@latest [--agent|--command|--mcp|--skill|--hook|--setting|--mod|--loop] <category/name> --yes`.
- Local dashboards: `--analytics` and `--chats`, both bound to 127.0.0.1. Note that they serve your conversation history.
- Components come from third parties under their own licenses. PRs are validated with the plugin validator and the SkillSpector scanner.
- Community project, not Anthropic. Beware typosquat packages (per a web search).
