# 04 — Agentic Workflows
Use this file when choosing an architecture for multi-step work, delegating to subagents or a team, or running long or autonomous jobs. Sources: S12, E1, E4, E7, E8, S9, S3, E15.

## 1. Choose the simplest architecture that works [S12]
- **Workflows** follow predefined code paths. **Agents** decide their own process and which tools to use.
- Start with one well-prompted call that has retrieval and examples. Add agency only when it measurably helps, because agents trade latency and cost for performance.

| Pattern | Use when | Claude Code realization |
|---|---|---|
| Prompt chaining (+ gates) | The task splits into fixed sequential steps | A plan file, then step prompts, with a check between steps |
| Routing | Inputs fall into distinct categories | A skill picked by its description, or a prompt that classifies the request first |
| Parallelization: sectioning | Independent subtasks | Several subagents in parallel, or `/batch` with worktrees |
| Parallelization: voting | Several opinions raise confidence | Several reviewers, then merge their findings |
| Orchestrator-workers | Subtasks are only known at runtime | The main session delegates to subagents through the Agent tool |
| Evaluator-optimizer | Clear criteria exist and feedback helps | A generator and a separate skeptical reviewer subagent, or a Stop hook |
| Autonomous agent | Open-ended work with ground truth from tests | A headless or long-running loop with stop conditions |

## 2. Delegation spec (every subagent or teammate prompt) [E1]
Vague delegation leads to duplicated or wasted work. Every delegation must state:
1. **Objective**: one clear goal, plus why it matters.
2. **Output format**: the exact structure, a length cap, and where to write it (a file path is better than a big inline dump).
3. **Tools and sources**: what to use and what to avoid, with source-quality guidance.
4. **Boundaries**: the scope, what NOT to do, and when to stop.
5. **Context**: relevant facts the worker can't discover itself. A subagent does not see your conversation, and does not receive Claude Code's system prompt [S6].

**Effort scaling** [E1]:
- Simple fact-finding: 1 agent, 3–10 tool calls.
- Comparisons: 2–4 subagents, 10–15 calls each.
- Complex research: 10 or more subagents.

Run 3–5 workers in parallel. Start with broad searches, then narrow.

## 3. When NOT to go multi-agent [E1, S9, E17]
- Multi-agent systems use about 15× the tokens of a chat, and single agents about 4× [E1]. Agent teams use "significantly more tokens" [S9].
- They are a poor fit for tightly coupled work, such as most coding with shared context or many dependencies.
- **Never have two workers edit the same file. Give each worker its own set of files** [S9].
- Models that delegate too eagerly should work directly on simple, sequential, or single-file tasks [E17].

## 4. Verification loops (highest leverage) [S3, E15, E7]
- "Give Claude something it can run that comes back pass or fail" [S3]. This was tip #1 in Anthropic's power-user tips [E15].
- Require **evidence**, meaning the command and its output, not "all tests pass".
- **Use a separate evaluator.** Agents praise their own work, and tuning a standalone skeptical reviewer is "far more tractable" [E7]. Calibrate it with scored examples, and have it test as a user would (browser automation for UIs) [E4, E7].
- Scope reviewers (e.g., "skip style"), because a reviewer told to find problems "will always find *something*" [S3].
- Automate the check: a Stop hook that exits 2 when typecheck or tests fail, `/goal`, or `/code-review` in a fresh subagent [S3].

## 5. Planning and execution [S3, E5, E9, E15]
- Explore, then plan, then implement, then commit. Use plan mode (Shift+Tab, or `--permission-mode plan`) for anything non-trivial. "Steps #1-#2 are crucial" [E5].
- If execution goes sideways, **re-plan** instead of pushing on [E15].
- TDD loop: write the tests, confirm they fail, commit them, then implement without changing the tests [E5].
- For large migrations, keep a checklist file and check items off one at a time [E5], or use `/batch` to fan out to worktrees [E15].

## 6. Long-running and autonomous jobs [E4, E7, E8, S3]
- **Initializer session**: create `init.sh`, a progress file, a JSON feature list (`"passes": false`), and an initial commit.
- **Worker sessions**: one feature per session, a commit each time, and an updated progress file. "It is unacceptable to remove or edit tests."
- Set stop conditions (`--max-turns`, budgets) and use sandboxing. Agents are stateful and errors compound, so build in checkpoints and resume points [E1].
- Scheduled or headless prompts can't ask clarifying questions, so state the success criteria and where the output goes [E9].
- When a new model arrives, re-test the scaffolding and remove parts that no longer help [E7].

## 7. Agent teams (experimental) [S9]
- Enable with `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`. Requires an interactive session. The team is a lead plus teammates, sharing a task list and a mailbox.
- Start with 3–5 teammates and about 5–6 tasks each. Use TeammateIdle, TaskCreated, and TaskCompleted hooks (exit 2) as quality gates.
- A teammate's message is not user input and cannot approve prompts.

## 8. Evaluating agentic work [E8, E1]
- Start with 20–50 real tasks. Include cases where the behavior should and should not happen. Write a reference solution for each task.
- pass@k (at least one of k runs succeeds) is not the same as pass^k (all k runs succeed). Reliability needs pass^k.
- Grade the outcome, not the path. Give the LLM judge an "Unknown" option. **Read the transcripts.**
