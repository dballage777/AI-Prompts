# Research Updates: Maintenance Process and Log

## Update process (follow every time)
1. **Verify** the new information against current official sources. Product facts must come from Google Help, Workspace Admin Help, Workspace Updates, or ai.google.dev. Educational claims should come from peer-reviewed or official guidance. Record the access date.
2. **Find what it affects.** Search this knowledge base for the old claim, e.g. `grep -rn "Gems" gemini_k12_assistant_engineering/`.
3. **Document it** with a dated entry in the log below, including its source and evidence tier.
4. **Update the files** that depend on it. Bump the version line on any template you change.
5. **Keep the history.** Don't delete old guidance. Mark it `~~superseded YYYY-MM-DD~~` and explain what replaced it.
6. **Re-test.** Re-run the affected test cases and log the results in 06/improvement_log.md.
7. **Flag outdated recommendations.** Add anything outdated to knowledge_gaps.md or new_gemini_features.md.

Things that trigger a review:
- Gemini model or app changes
- Gems or skills changes
- Classroom or Workspace edition changes
- new federal or state privacy rules
- new major RCTs or reviews
- a test failure

Every semester, also check the release notes and Workspace Updates.

## Log
| Date | Change | Source (tier) | Files affected |
|---|---|---|---|
| 2026-11-05 | v1.0 initial build. All 30 originals were blocked, so everything was search-derived. | see 01 | all |
| 2026-11-05 | Recorded the Gems → skills transition: personal accounts Nov 17 / Dec 17, 2026; school accounts in 2027 | X13, X14 (B) | custom_gems_design, limitations, templates (packaging) |
| 2026-11-05 | Recorded Gemini 3+ guidance: be concise, put instructions after the data, sampling parameters are ignored | X4 (B) | gemini_prompt_architecture |
