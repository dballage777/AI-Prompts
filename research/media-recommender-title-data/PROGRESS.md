# PROGRESS — media-recommender-title-data (Top 30 research)
Started 2026-11-14 · Prompt: prompts/claude/Top30_Resource_Research_Prompt_v3.txt

- [x] Setup: topic given by run instructions (ask step skipped); defaults: any audience, 2022+, English, any region.
- [x] Access preflight (NOTES.md)
- [x] Pass 1 Discovery: 5 batches (4 subagents + watch-order batch run by lead)
- [x] Pass 2 Expansion: followed links from docs nav, ID-mapping READMEs, MAL forum index, HN Algolia
- [x] Pass 3 Validation: content pages opened for all shortlisted candidates (workers + lead)
- [x] Pass 4 Community check (NOTES.md, anecdotal)
- [x] Pass 5 Cross-check: AniList limit confirmed by live header; key-free endpoints tested live; MangaUpdates anime field tested; TMDB terms read directly
- [x] Pass 6 Dedupe/clean: same-site sub-pages merged; topic 1/2 duplicates excluded
- [x] Pass 7 Score: SCORED_CANDIDATES.csv (63 scored)
- [x] Pass 8 Omission check
- [x] Final verification: all 30 URLs re-opened, HTTP 200 (2026-11-14)
