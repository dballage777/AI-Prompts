# 11 — Advanced and Lesser-Known Techniques
These are high-leverage capabilities that are easy to miss. All of them are documented by Anthropic unless tagged otherwise. Details are tied to specific versions, so verify them with `claude --version` and the live docs.

## Claude Code power features
- **Dynamic skill context:** in SKILL.md, a line like !`git diff HEAD` runs before Claude reads the skill, and its output replaces that line [S5].
- **Forked skills:** with `context: fork` plus `agent: Explore`, a skill runs in an isolated subagent and returns only a summary [S5].
- **User-only side-effect skills:** `disable-model-invocation: true` on things like `/release` or `/deploy`, so Claude can't start them on its own [S3, S5].
- **Path-scoped rules:** files in `.claude/rules/*.md` with `paths: ["src/api/**"]` add context only when Claude touches matching files [S4, S25].
- **Free maintainer notes:** block-level `<!-- -->` comments in CLAUDE.md are stripped before the file is loaded into context [S4].
- **Interactive `/init`:** `CLAUDE_CODE_NEW_INIT=1` makes `/init` propose CLAUDE.md, skills, and hooks after exploring the repo with a subagent [S4].
- **`/doctor prompt-audit`:** finds contradictions, outdated statements, and dead references in your instructions (v2.1.283+) [S3, S4].
- **`/fewer-permission-prompts`:** builds an allowlist from your past transcripts [S3].
- **Read-only reviewer agents:** a subagent with `tools: Read, Grep, Glob` is read-only, and the harness enforces it [S3].
- **Worktree parallelism:**
  - `claude -w <name>` creates a worktree.
  - `.worktreeinclude` lists files to copy into it.
  - `isolation: worktree` on a subagent gives it its own worktree.
  - `/batch` fans a migration out to 5–30 worktree agents, each opening a PR [S3, E15].
- **`/btw`:** a side question that sees the full conversation but runs no tools [E15].
- **`/goal`, `/verify`, `/simplify`, `/code-review`:** built-in loops for checking and cleaning up work [S3, S5].
- **Focused compaction:** `/compact keep the API changes and the test commands` [S3].
- **Named sessions:** `/clear <name>`, `/rename`, `claude --resume <name>`, `claude --from-pr N` [S3, E9].
- **Headless speed:** `claude --bare -p …` starts about 10× faster [E15]. Add `--max-turns` and `--output-format stream-json` for pipelines.
- **Stop-hook quality gate:** `pnpm tsc --noEmit 1>&2 || exit 2` blocks Claude from stopping. The harness overrides after 8 blocks in a row, and the cap is set by `CLAUDE_CODE_STOP_HOOK_BLOCK_CAP` [S3].
- **Re-inject after compaction:** a SessionStart hook with matcher `compact`, or a PostCompact hook [E10, E15].
- **Auto-approve plan exit:** a PermissionRequest hook with matcher `ExitPlanMode` returning `behavior: allow`. Never use a `.*` matcher here [E10].
- **InstructionsLoaded hook:** logs which memory files actually loaded, useful for debugging instructions [S4].
- **Model controls for subagents:** `CLAUDE_CODE_SUBAGENT_MODEL` and `CLAUDE_CODE_SUBAGENT_EFFORT` (2.1.316) [S6, S20].
- **Write fence:** `permissions.blockWritesOutsideWorkingDirectories: true` (2.1.314) [S20].
- **Cross-tool instructions:** start CLAUDE.md with `@AGENTS.md` so one file serves several agents [S4].

## Prompting
- **Quote-then-answer** for long documents: put the documents first, ask for `<quotes>`, then the answer. Putting the query at the end can improve results by up to 30% [E17].
- **Explain the reason behind constraints.** Claude generalizes from the reason, not just the rule [E17].
- **Persistence clause** for system prompts that must hold up against pushback [E19].
- **Today's date plus "training data is older"** helps search-heavy tasks [E19].
- **Response-format enums** on tools (concise or detailed) [E2].

## Agent architecture
- **Separate generator and evaluator.** Calibrate the evaluator with scored examples and have it use the product the way a user would (Playwright MCP) [E7].
- **Sprint contracts:** the generator and evaluator agree on "done" criteria before the work starts, and communicate through files [E7].
- **Initializer plus worker sessions,** with a JSON feature list, `init.sh`, and a progress file [E4].
- **Subagents write to files and return references,** which avoids a game of telephone between agents [E1].
- **Effort-scaling rules inside the orchestrator prompt** (1 agent / 2–4 / 10+), so it doesn't over-spawn [E1].
- **Tool descriptions refined by an agent** reading failure transcripts made later agents 40% faster [E1].
- **Code-execution MCP:** load tools as files, filter in code. One example dropped from 150k to 2k tokens [E6].
- **Remove scaffolding after model upgrades.** Each piece of a harness encodes an assumption about what the model can't do [E7].

## Evaluation
- **pass^k for reliability, pass@k for capability.** A task that passes 75% of the time passes all 3 of 3 attempts only about 42% of the time [E8].
- **Graduate saturated capability evals** into the regression suite [E8].
- **Isolate trials.** Agents have been seen reading git history left over from earlier trials [E8].

## Community-discovered (anecdotal; validate before adopting) [S16, S17, S19, E14]
- Superpowers (obra): a skills framework built around TDD and planning.
- TDD Guard: hooks that block edits which break the test-first flow.
- Safety-hook bundles that block destructive commands.
- A "living CLAUDE.md": after each correction, "Update your CLAUDE.md so you don't make that mistake again". This one is also in Anthropic's own tips [E15].
- Have a second Claude instance review the plan before implementation starts.
- claude-code-templates (`npx claude-code-templates@latest`): a catalog of about 1,900 components. Audit before installing.
