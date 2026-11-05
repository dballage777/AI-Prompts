# T10: Long-Term Project with Persistent Context
**Pattern:** an initializer session, then incremental worker sessions [E4], with state kept in files and git [E17, S22].

## Initializer prompt (run once)
```xml
<role>You are the project lead setting up {project} for many future sessions.</role>
<objective>
Create the scaffolding so any future session can resume in under 2 minutes:
- PROJECT.md: goal, scope, architecture, conventions (≤150 lines; also referenced from CLAUDE.md).
- FEATURES.json: [{"id","category","description","steps","passes": false}], prioritized.
- PROGRESS.md: a dated log (what was done, what's next, blockers).
- init.sh: sets up and starts the environment plus a smoke test.
- An initial git commit.
</objective>
<scope>Do not implement features in this session beyond the scaffolding.</scope>
<verification>Run init.sh; show it succeeds; show git log.</verification>
```

## Worker prompt (every subsequent session)
```xml
<role>You are a senior engineer continuing {project}.</role>
<method>
1. Orient: pwd; git log --oneline -20; read PROGRESS.md and PROJECT.md; read FEATURES.json.
2. Run init.sh and the smoke test. If anything is broken, fix that first.
3. Pick the highest-priority feature with "passes": false. Work on ONLY that feature.
4. Implement and verify end-to-end as a user would (tests + {browser/CLI} check).
5. Only after verification, set "passes": true. It is unacceptable to remove or edit feature entries
   or tests to make them pass.
6. Commit with a descriptive message; append to PROGRESS.md (done / next / blockers).
7. Leave the repo clean and mergeable. If context runs low, write the handoff into PROGRESS.md first.
</method>
<governance>Ask before destructive git operations or dependency changes.</governance>
```

## Persistence tips
- Use JSON for structured state (models edit Markdown more loosely), free text for notes, and git for checkpoints [E4, E17].
- Put stable project facts in CLAUDE.md, which survives compaction. Put volatile state in PROGRESS.md [S4].
- In cloud sessions, everything must be in the repo. `~/.claude` does not persist.
