# 10 — Common Failures and Solutions
Look up a symptom here when something goes wrong. Columns: symptom → cause → fix → source. Tags: [Official] / [Community] / [Inference].

## Instruction-following
| Symptom | Cause | Fix | Src |
|---|---|---|---|
| Claude ignores CLAUDE.md rules | The file is too long, so rules compete for attention | Keep it under ~200 lines. Cut anything Claude can learn by reading the code. Move procedures into skills and scoped rules into `paths:` | S3, S4, S25 |
| A rule still fails after adding "IMPORTANT" | Advisory instructions are not guarantees | Move it to a hook (exit 2) or a permission deny | S3 |
| Rules lost mid-session | Compaction dropped instructions that only lived in the conversation | Put them in CLAUDE.md (it is re-read after compaction) or re-inject them with a SessionStart `compact` hook | S4, E10 |
| "Never X" rules are brittle | Negative phrasing with no reason given | State what to do instead, give the reason, and enforce critical rules deterministically | E17, S19 |
| A tool fires too often | Shouting like "CRITICAL / MUST" | Soften to "Use X when…" | E17 |

## Task execution
| Symptom | Cause | Fix | Src |
|---|---|---|---|
| Jumps straight into code and gets it wrong | No exploration or planning step | Use plan mode, and explore before planning | E5, E15 |
| Repeated failed fixes | The context is polluted with wrong attempts | After 2 failed corrections, `/clear` and rewrite the prompt. Re-plan | S3, E15 |
| "Done" but broken | Claude checked its own work | Require evidence, run tests or typecheck in a Stop hook, use a separate reviewer | S3, E7 |
| Edits tests to make them pass | Optimizing for the test, not the goal | "It is unacceptable to remove or edit tests"; "Do not hard-code values…" | E4, E17 |
| Over-engineering or unrequested refactors | No scope boundary | Add the anti-overengineering and scope-creep lines (see 01 §3) | E17, E19 |
| Stops early | Low effort, or "context anxiety" | Raise effort, add an anti-early-stop line, use context resets with a handoff file | E19, E7 |
| Declares the whole project complete too soon | No external definition of done | Keep a JSON feature list with `passes:false` and work one feature per session | E4 |
| Invents APIs or code details | Answered without reading the code | "Never speculate about code you have not opened" | E17 |
| Sycophancy ("You're absolutely right!") | Model tendency (heavily reported) | Ask it to critique before agreeing, use a separate skeptical reviewer, ask for evidence | E16 (community), E7 |

## Context and cost
| Symptom | Cause | Fix | Src |
|---|---|---|---|
| Quality drops over a long session | Context rot | `/clear` between tasks, use subagents for exploration, use notes files | S22, S3 |
| Usage limits hit fast | Parallel sessions, max effort, teams | Lower effort for simple work, use Haiku or Sonnet subagents for easy tasks, don't over-delegate | E15, E16, E1 |
| Context fills with tool definitions | Too many MCP servers | Disable unused servers, use tool search, prefer CLIs | S3, E11 |
| Huge tool outputs | Results that aren't filtered | Grep or filter in code, use response_format, paginate | E2, E6 |
| `@imports` didn't save tokens | Imports load fully into context | Use scoped rules, skills, or file paths read on demand | S4 |

## Configuration
| Symptom | Cause | Fix | Src |
|---|---|---|---|
| Settings ignored or a "Settings Error" appears | Comments or trailing commas in JSON, or the wrong scope | Use strict JSON and `$schema`, and check with `/status` and `claude doctor` | S8 |
| Hook doesn't block | Exited with 1 instead of 2, or the matcher is wrong | Exit 2 to block. Test with `echo '{…}' \| ./hook.sh; echo $?` | E10 |
| Hook JSON is ignored | A shell profile echo pollutes stdout | Wrap the echo in `if [[ $- == *i* ]]` | E10 |
| Subagent field has no effect | Misspelled or camelCase mismatch, silently ignored | Run `claude --debug` and match the field table exactly | S6 |
| Skill never triggers | The description is vague | Say what it does plus when to use it, add trigger phrases. Invoke with `/name` | E13 |
| Skill loads with no metadata | YAML parse error, or `---` is not on the first line | Fix the frontmatter. `--debug` shows the error | S5 |
| Read deny bypassed | The rule matches the tool, not the intent; scripts or `@` still read the file | Turn on `/sandbox`. A Read deny also blocks `@` | S3, E9 |
| Cloud session lacks your setup | The cloud reads only the committed `.claude/settings.json` and repo files | Commit the config and instructions to the repo | S8 |
| Parallel agents clobber files | Two workers on one file | Give each worker its own files, or use worktrees | S9, E15 |

## Research
| Symptom | Cause | Fix | Src |
|---|---|---|---|
| Fabricated citations | Gaps filled from memory | Require access status per URL, and "never fill from memory" | 08 |
| Shallow or SEO-heavy sources | Weak source guidance | Use trust tiers and ask for authoritative sources | E1 |
| Lost findings after compaction | Notes kept only in context | Write raw notes to files after each batch | 08 |
