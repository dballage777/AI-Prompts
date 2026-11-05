# 07 — MCP and Tool Orchestration
Read this when connecting external systems, designing tools, or when tool use is inefficient or error-prone. Sources: E11, E12, S21, E2, E6, S12, S3. modelcontextprotocol.io was blocked, so the architecture details below come from the spec repo [E12].

## 1. MCP in one paragraph [E12, S21]
A **host** (Claude Code) runs several **clients**. Each client holds one stateful JSON-RPC session with one **server**. Servers expose **tools** (actions), **resources** (data addressed by URI), and **prompts** (templates). Servers can also request sampling through the client. Capabilities are negotiated when the session initializes. The host enforces consent and security, and "Servers should not be able to read the whole conversation, nor 'see into' other servers." Transports are **stdio** (a local subprocess) and **Streamable HTTP**. SSE is deprecated.

## 2. Claude Code MCP usage [E11]
```bash
claude mcp add --transport http notion https://mcp.notion.com/mcp
claude mcp add --transport http api https://api.example.com/mcp --header "Authorization: Bearer $TOKEN"
claude mcp add --env API_KEY=xxx --transport stdio airtable -- npx -y airtable-mcp-server
claude mcp list | get <name> | remove <name> | login <name>
```
- Scopes are `local` (the default, this project only, stored in ~/.claude.json), `project` (`.mcp.json`, committed so the team shares it), and `user` (all projects). Precedence runs local > project > user > plugin > claude.ai connectors, and scopes are not merged.
- `.mcp.json` example: `{"mcpServers": {"name": {"type":"http","url":"${API_URL:-https://...}","headers":{...}}}}`. Variable expansion uses `${VAR}` or `${VAR:-default}`.
- In a session, `/mcp` shows status and handles auth. Resources are referenced as `@server:proto://path`, and prompts run as `/mcp__server__prompt args`.
- Limits: `MAX_MCP_OUTPUT_TOKENS` defaults to 25k (warnings start above 10k). Outputs over 50k characters spill to a file. Timeouts are set with `MCP_TIMEOUT` and `MCP_TOOL_TIMEOUT`.
- Tool search defers loading tool definitions (`ENABLE_TOOL_SEARCH`). Set `alwaysLoad: true` on a server to exempt it. This reading came from a summary of the page, so verify it.
- Security: Claude Code prompts before using servers from `.mcp.json`. `disabledMcpjsonServers` disables specific ones, and `--strict-mcp-config` loads only the configs you name.
- Hook matchers name MCP tools as `mcp__<server>__<tool>`. Plugin servers use `mcp__plugin_<plugin>_<server>__<tool>`.

## 3. CLI first, MCP when needed [S3; Inference]
- If a good CLI exists (`gh`, `aws`, `gcloud`, `psql`), Claude can usually use it directly. Tell it to use `--help` and note the tool in CLAUDE.md.
- Add MCP for systems with no CLI, for auth flows, and for structured resources. Disable unused servers, because tool definitions take up context.
- Reference servers are maintained by the MCP steering group: Everything, Fetch, Filesystem, Git, Memory, Sequential Thinking, Time. Many others (GitHub, Slack, Postgres, Puppeteer) were archived and now have vendor-maintained replacements. Browse registry.modelcontextprotocol.io [S21].
- The reference servers are "not production-ready". Audit any third-party server before trusting it [S21, E11].

## 4. Tool design principles (for MCP servers, skills' scripts, custom tools) [E2, S12]
1. **Fewer, higher-level tools.** For example, `schedule_event` instead of list_users + list_events + create_event, and `search_logs` instead of `read_logs`.
2. **Namespace** by service and resource, e.g. `asana_projects_search`.
3. **Return meaningful context:** names and types, not opaque UUIDs. Offer a `response_format` of `concise` or `detailed`; the concise form used about a third of the tokens.
4. **Token efficiency:** support pagination, filtering, range selection, and truncation with sensible defaults. Claude Code caps tool results at about 25k tokens.
5. **Actionable errors.** Say what went wrong and how to fix it, and steer the caller toward narrower calls.
6. **Descriptions written for a new hire,** with unambiguous parameters (`user_id`, not `user`). Treat descriptions like prompts: "Tool definitions… just as much prompt engineering attention as your overall prompts" [S12].
7. **Poka-yoke** (mistake-proofing): make wrong calls hard to make. Absolute file paths fixed one class of errors [S12].
8. **Evaluate and iterate with Claude.** Run realistic multi-step tasks, paste the transcripts back to Claude, have it refactor the tools, and keep held-out tests [E2]. In one case, an agent rewriting a tool's description made later agents 40% faster [E1].

## 5. Code execution pattern [E6]
- Present tools as code modules (`./servers/<svc>/<tool>.ts`). The agent lists the directory, reads only the files it needs, and composes calls in code.
- Filter and aggregate in code. Return only the result to the model; for example, show 5 rows instead of 10,000.
- Loops and polling run in code. State is kept in workspace files, and saved functions can become skills.
- Sensitive data can stay out of the model's context through tokenization.
- Requires sandboxing, resource limits, and monitoring.

## 6. Orchestration habits
- Make independent tool calls in parallel, and never guess missing parameters [E17].
- Use a dedicated tool over a generic shell call when one exists, because they are safer and easier to read [Inference].
- Large outputs: grep or filter them, or have a subagent digest them, instead of pulling everything into the main context [S22].
