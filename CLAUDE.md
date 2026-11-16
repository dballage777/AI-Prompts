# AI-Prompts repository

This repo stores reusable AI prompts and a persistent Claude Code knowledge base.

## Layout
- `gemini/`: prompts written for Google Gemini (for example, the NAHS parent-communication mail-merge assistant, v2 `.txt` and `.docx`).
- `claude-knowledge/`: the Claude Code knowledge base.
  - `knowledge/`: topic files, starting at `MASTER_INDEX.md`.
  - `research-notes/`: raw notes.
  - `global/CLAUDE.md`: the global instruction block.
  - `install.sh`: copies the knowledge base into `~/.claude` on a local machine.

## Knowledge base (use it in every session in this repo)
- For prompt writing, agent or workflow design, Claude Code configuration, or research, read `claude-knowledge/knowledge/MASTER_INDEX.md` first. Then open only the topic files or templates that match the task.
- Prompt deliverables follow the framework in `claude-knowledge/knowledge/09_PROMPT_TEMPLATES.md`. Prompts meant for other assistants follow `templates/T00_prompt_for_other_models.md`.
- When you learn something new, update the relevant topic file and `13_RESEARCH_CHANGELOG.md`. Cite sources. Never invent sources or capabilities.
- For stress, anxiety, wellness-bot safety, crisis handling (988), or the Career and Christian Self-Help bot, read `research/stress-anxiety-wellness-safety/knowledge/MEMORY_BRIEF.md` first, then the relevant sections of `KNOWLEDGE_BASE.md` there.

## High school differentiated instruction library (separate project)
- When a prompt or task involves differentiation for grades 9–12 (tiered or leveled materials, remediation, enrichment, assessment versions, grouping, or AI-generated instructional materials), read `HIGH_SCHOOL_DIFFERENTIATION_KNOWLEDGE/CLAUDE.md` first. That file says which library files to open.
- Take the instructional content from that library and the prompt shell (role, governance, platform style) from the matching platform knowledge base. Keep the libraries separate; never merge them.

## Conventions
- Each prompt deliverable gets a plain-text `.txt` copy for pasting, plus a `.docx` when a formatted version helps.
- Generate `.docx` from `.txt` with python-docx (headings from `PART`/`STEP` lines).
- Prompts are user-facing documents, so write them in plain language with no model identifiers.
