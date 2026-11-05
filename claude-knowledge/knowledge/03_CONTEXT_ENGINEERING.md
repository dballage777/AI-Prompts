# 03 — Context Engineering
Use this file when a task is long or has many files, when context feels bloated, or when deciding what to load and when. Sources: S22 (primary), S4, S25, E1, E4, E6, E7.

## 1. Principles [Official: S22]
- **Context rot:** as the token count grows, the model's recall gets worse. This happens with every model; only the degree varies.
- **Attention budget:** "Context... must be treated as a finite resource with diminishing marginal returns." Every token you add uses up some of that budget.
- **Goal:** "the smallest set of high-signal tokens that maximize the likelihood of your desired outcome."
- "Do the simplest thing that works."

## 2. What goes where (load-time strategy)
| Load strategy | Mechanism | Use for |
|---|---|---|
| Always on (pay every turn) | Root CLAUDE.md, unscoped rules, output style | Short facts Claude can't find on its own: commands, gotchas, conventions |
| On demand by path | Subdirectory CLAUDE.md, rules with `paths:` | Conventions for one area of the code |
| On demand by relevance | Skills (only the description loads up front) | Procedures and long reference material |
| Isolated | Subagents (return a summary only) | Exploration, research, log digging, audits |
| Just-in-time | glob/grep/Read, `@file`, MCP resources | The actual data, fetched when needed |
| Outside context entirely | Hooks, scripts run by skills, code execution | Deterministic work like formatting, filtering, and validation |

The CLAUDE.md test: "Could it find this by reading the code? Would it actually go and look? If both are yes, leave it out." [S3]

## 3. Just-in-time retrieval [S22, E6]
- Keep lightweight identifiers in context (file paths, query strings, URLs) and load the content only when it's needed.
- Folder names, file names, and timestamps carry meaning. Organize files so their paths tell you what's in them.
- Progressive disclosure: an index first, then a summary, then detail. This knowledge base follows that pattern: CLAUDE.md, then the INDEX, then a single topic file.
- Code execution with MCP: treat tools as code APIs and filter results in code. One reported example dropped from 150k tokens to 2k [E6].

## 4. Long-horizon techniques [S22, E1, E4, E7]
1. **Compaction:** summarize near the context limit and keep decisions, open bugs, and recent files. Steer it with `/compact keep X and Y`. The lightest form is clearing old tool results.
2. **Structured notes:** keep a progress file (NOTES.md, claude-progress.txt) and a to-do list or feature list (JSON is safer than Markdown because models edit Markdown more loosely [E4]). Use git commits as checkpoints.
3. **Subagents:** each explores in its own context and returns a condensed result of about 1–2k tokens [S22]. They can write outputs to files and pass back the file paths [E1].
4. **Context reset with a handoff file:** this beat compaction for "context anxiety", where the model wraps up early as it nears its limit [E7].

When to use which: compaction suits long conversations, notes suit work with milestones, and subagents suit parallel research [S22].

## 5. Session hygiene in Claude Code [S3, E15, S17]
- Run `/clear` between unrelated tasks. A "kitchen sink" session full of unrelated work is a common failure.
- **After two failed corrections, run `/clear` and rewrite the prompt** instead of piling on more corrections [S3].
- Ask Claude to write the plan or state to a file before a context reset or compaction.
- After compaction, a SessionStart hook with matcher `compact`, or a PostCompact hook, can re-inject critical context [E10, E15].
- Turn off MCP servers you aren't using. Tool definitions cost context unless tool search defers them [S3, E11].
- Watch `/context` and `/usage`.

## 6. Resume ritual for persistent projects [E4]
At the start of every new session or context window:
1. `pwd`, then `git log --oneline -20`, then read the progress file.
2. Read the feature or task list and pick the highest-priority unfinished item.
3. Run init or smoke checks so a broken state is caught before you start new work.
4. Work on one item. Commit it, update the progress file, and leave the repo in a clean, mergeable state.

## 7. Anti-patterns
- Pasting entire docs into the prompt instead of giving their file paths.
- One giant CLAUDE.md (over 200 lines; community warnings start around 300–500 lines) [S25, S19].
- Expecting `@imports` to save tokens. They don't [S4].
- Long-running subagents that return raw dumps instead of distilled findings.
- Keeping stale tool output in context, such as huge logs. Have Claude grep or filter instead.
