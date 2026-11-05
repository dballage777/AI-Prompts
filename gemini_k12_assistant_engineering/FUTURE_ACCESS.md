# How Future Claude Code Sessions Will Find This Knowledge Base (Deliverable 8)

## How Claude Code loads instructions (from the separate Claude knowledge base; official docs [S4] there)
- The repo-root `CLAUDE.md` loads at the start of every session in this repo.
- A **subdirectory** CLAUDE.md, such as this folder's `CLAUDE.md`, loads **only on demand**, when Claude reads or edits files inside this folder. So a new session asked to "write a Gemini assistant" won't automatically know this folder exists.
- `~/.claude/CLAUDE.md` (user level) loads for all projects on a machine. Cloud sessions don't keep `~/.claude` between sessions.

## Options
| Option | How | Pros | Cons |
|---|---|---|---|
| **A. One pointer line in the repo-root CLAUDE.md** (recommended) | Add 2–3 lines under a new heading, pointing to `gemini_k12_assistant_engineering/CLAUDE.md` | Works in every session on this repo, local and cloud. Tiny context cost. Keeps the projects separate, because the line only routes | Modifies an existing instruction file, so **it needs your approval** |
| B. Do nothing; you mention the folder when needed | Say "use the Gemini K-12 knowledge base" | Changes no files | Easy to forget. Not automatic |
| C. A user-level pointer in `~/.claude/CLAUDE.md` on your computer | Add a line there yourself | Works across all your local repos | Modifies global instructions, which you said not to do. Doesn't help cloud sessions |
| D. A project skill (`.claude/skills/gemini-k12-assistant/SKILL.md`) | A new file whose description triggers on Gemini education requests | Loads only when relevant. Doesn't touch any CLAUDE.md | Auto-triggering is probabilistic. It's a new `.claude/` configuration, so it's worth your OK too |

**Recommendation:** use **A**. Optionally add **D** as well. Both stay separate from the Claude knowledge base and from the global instructions.

## Proposed change for Option A (NOT applied; awaiting approval)
Add this section to the repo-root `/CLAUDE.md`, after "## Knowledge base (use it in every session in this repo)":

```markdown
## Gemini K–12 assistant knowledge base (separate project)
- For any Gemini prompt, Gem/skill, or educational AI assistant for K–12 (teacher, student tutor, subject specialist, admin, SpEd/ELL support), first read `gemini_k12_assistant_engineering/CLAUDE.md` and follow it.
- Keep it separate from `claude-knowledge/`: Gemini and Claude prompting are different disciplines; don't merge or cross-edit them.
```

Nothing else in the existing file changes.
