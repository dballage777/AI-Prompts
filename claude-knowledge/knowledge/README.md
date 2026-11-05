# Claude Code Knowledge Base
This is a reusable reference for prompt engineering, context engineering, agentic workflows, governance, and Claude Code configuration. It was built on 2026-11-05 from 30 designated sources plus 20 expansion sources (see `12_SOURCE_DIRECTORY.md`).

## How it is used
- A short block in the global `~/.claude/CLAUDE.md` (and a root `CLAUDE.md` in the AI-Prompts repo) tells every Claude Code session that this knowledge base exists and how to use it.
- Sessions read **MASTER_INDEX.md** first, then load only the topic files relevant to the task. This is progressive disclosure, so the knowledge base doesn't take up context unless it's needed.
- The detailed files are deliberately **not** imported with `@`, because imports always load into context.

## Where it lives
- Source of truth: the `claude-knowledge/` folder in the `dballage777/AI-Prompts` repo, version-controlled.
- Installed copy: `~/.claude/knowledge/` on any machine where `bash claude-knowledge/install.sh` has been run.
- Cloud sessions on the AI-Prompts repo read the repo copy through the repo's root `CLAUDE.md`. In those sessions `~/.claude` is temporary, so the installed copy does not persist.

## Maintaining it
1. When you learn something new and meaningful, update the relevant topic file. Cite the source ID, and add the source to 12 if it's new.
2. Add an entry to `13_RESEARCH_CHANGELOG.md`. Mark replaced guidance as superseded instead of deleting it.
3. Commit to the repo, then re-run `install.sh` on each machine to refresh `~/.claude/knowledge`.
4. Keep each topic file focused. If one grows past about 300 lines, split it and update the MASTER_INDEX.

## Evidence tags used throughout
`[Official]` Anthropic docs and articles · `[Community]` third-party sources · `[Inference]` synthesis written for this knowledge base · `[S#]`/`[E#]` source IDs (see 12).
