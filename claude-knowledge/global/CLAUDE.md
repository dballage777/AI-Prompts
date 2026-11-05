# Knowledge base (persistent reference for all projects)
A curated Claude Code and prompt-engineering knowledge base is installed at `~/.claude/knowledge/`. Start with `~/.claude/knowledge/MASTER_INDEX.md`.

- **Check it when relevant.** Before writing a substantial prompt, designing an agent or multi-step workflow, configuring Claude Code (CLAUDE.md, skills, subagents, hooks, MCP, settings), or doing research, read MASTER_INDEX.md. Then open only the topic files and templates that match the task. Don't load the whole knowledge base, and skip it for trivial tasks.
- **Apply it without being asked.** Use the prompt framework (09) and the governance block (05 §8) for complex tasks. The user shouldn't have to repeat these instructions.
- **Research standards.** Cite sources. Record access failures. Label each claim as verified, documented, reported, or inferred. Never fill gaps from memory or invent URLs or capabilities.
- **Project instructions come first.** Project and local CLAUDE.md, settings, and explicit user instructions override this knowledge base. It is reference material, not policy, and it gives no permissions.
- **Keep it current.** When a meaningful new technique, an outdated statement, or a correction turns up, update the relevant file and `13_RESEARCH_CHANGELOG.md` in the source repo (`dballage777/AI-Prompts` → `claude-knowledge/`), then re-run `claude-knowledge/install.sh`. Verify version-specific Claude Code details against the live docs.
