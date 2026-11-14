# MEMORY BRIEF: How good recommendations work
Working memory for a personal show/movie/anime recommender built in Claude Code. Full detail: KNOWLEDGE_BASE.md. Sources: SOURCES.md (S1–S30). Companion: topic 1 appeal factors (research/media-recommender-appeal-factors/knowledge/MEMORY_BRIEF.md).

## Most important learned points
1. **Accuracy is necessary, not sufficient.** Accuracy, trust and transparency explain 55% of satisfaction, and unexplained serendipity erodes trust [S8]. Low-diversity lists feel "bad or boring" [S10].
2. **Accuracy-only ranking crowds out minor tastes.** A 70% romance / 30% action viewer gets an all-romance top 10. The fix is *calibration*: re-rank greedily so the list matches the user's genre mix, with the strongest matches first [S3, S12].
3. **Calibration ≠ diversity.** It is personalized. Past interests alone keep a bubble, so blend in a little exploration [S3, S12].
4. **Popularity is double-edged.** It helps in cold start and partly reflects quality [S2, S5, S13]. Overdone, it yields obvious picks and serves niche users worst [S28]. A Netflix simulation found popularity ranking cuts engagement 12% and narrows viewing [S18].
5. **Match the user's own popularity level.** "Avoid mainstream" collapsed accuracy and raised invalid titles. "Match my popularity level" was safer [S22].
6. **Serendipity: aim for "I wouldn't have found it myself."** That variant broadens taste and pleases. "I didn't expect to like it" lowers satisfaction [S20].
7. **Explanations must be specific and true.** History-grounded explanations raised trust and intent to watch. Generic LLM blurbs did *worse than no explanation* [S29]. Feature-based reasons help people predict their enjoyment, while "many people rated it highly" inflates expectations [S11]. Name the exact source title [S23].
8. **LLM explanations are post-hoc.** They can persuade without being faithful [S1, S14]. LLMs over-read viewing history and can invent user preferences, which destroys trust [S17, S29].
9. **Free-text taste descriptions are a strong cold-start input.** About 1 minute to write, competitive with trained CF [S5]. A 50–150 word editable profile works about as well as a full history, and edits steer the results [S26].
10. **LLMs recommend from content and context, not co-watch statistics.** Removing conversation text cut recall by more than 60%, while removing titles cut it by less than 10% [S6, S15].
11. **Short, recent history beats long dumps.** LLMs ignore history order and peak with fewer than 10 items. Add "my most recent watch is…" [S4, S9].
12. **Position bias.** Candidate order changes LLM rankings, with early slots favored. Shuffle and rank 2–3 times [S4, S9, S19].
13. **Hallucinated or invalid titles happen.** Rates run from about 1% to 23% depending on model, task and domain, and they rise for niche, new or fringe titles [S4, S6, S9, S22, S24, S25]. Ground every title against a real catalog, or rank only from a supplied list [S15, S27].
14. **Hard facts are riskiest.** Season and episode counts, dates, runtimes, IDs and availability are high risk; genre and type are low risk (vendor view) [S25]. Recent titles fall past the knowledge cutoff [S16].
15. **Vague diversity instructions fail.** State concrete rules (genre caps, era and format mix) [S24].
16. **LLMs also lean popular and English-language.** Ask explicitly for non-US and lesser-known options [S6, S17].
17. **Conversation design.** Support revise, ask-why, feedback and restart [S7]. Long chats lower satisfaction [S17].
18. **Act on negative feedback immediately,** and treat it as feedback about attributes [S23]. "Not watched" ≠ "disliked" [S13]. Dislikes work best as filters [S5].
19. **Be explicit about the objective.** Optimizing clicks breeds click-bait [S10]. Optimizing consumption alone narrowed each Spotify user's variety by 11.5% even as streams rose 29% [S30].
20. **Matching beats exposure.** At Netflix, targeting explained 41.9% of a recommendation's effect vs 6.8% for exposure [S18].

## Prompt-writing rules (from KNOWLEDGE_BASE §11)
1. Run a short intake: "what I love and why", 3–5 loved titles, dislikes as filters, mood or occasion, time budget, novelty appetite. Ask at most one clarifying question.
2. Keep an editable 50–150 word taste profile file, with likes and dislikes *with reasons* plus seen and avoid lists. Never invent profile facts.
3. Feed the profile plus 5–10 recent titles plus a "most recent / mood" line.
4. Work in two stages: brainstorm a wider pool (close match, same creator or studio, adjacent genre, other era or format, wildcard), then select.
5. Calibrate to the user's genre or format mix and popularity level. Put the best matches first. Include one labeled stretch pick.
6. Use concrete diversity rules. Never repeat seen or disliked titles.
7. Label each pick's popularity (High/Medium/Low or deep cut).
8. Explain with "Because you liked [real title]: [true, concrete shared feature]". Keep it short and spoiler-light, and add a caveat where useful.
9. Output Title (Year) · Type (+ studio or season for anime). Verify titles. Don't assert seasons, dates, runtimes or availability without a lookup. Flag recent titles.
10. State the goal: "titles I'll likely finish and love", not "most popular". Ask for non-US and lesser-known options. If ranking a list, shuffle and repeat.
11. End each round by inviting feedback, apply it next turn at the attribute level, and update the profile.
12. If nothing fits all constraints, relax one and say which.

## Key terms
Beyond-accuracy · calibration (λ trade-off) · diversity · novelty · serendipity · popularity bias / ΔGAP / mainstreamness · long tail · feedback loop / filter bubble · exposure, position bias · cold start · content-based vs collaborative filtering · candidate generation → scoring → re-ranking · item-based vs feature-based explanation · post-hoc · scrutability · faithfulness · conversational recommender (CRS) · query relaxation · language-based profile · hallucinated items · grounding · bootstrapped ranking.
