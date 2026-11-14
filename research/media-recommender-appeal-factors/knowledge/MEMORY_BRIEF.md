# MEMORY BRIEF: Appeal factors and cross-media advisory
Working memory for a personal show/movie/anime recommender built in Claude Code. Full detail: KNOWLEDGE_BASE.md. Sources: SOURCES.md (S1–S30).

## Most important learned points
1. **Match on the experience, not the subject.** Readers' advisory (RA) matches people on "appeal," the felt experience of a work. Surface matches by genre or subject fail, for example le Carré for Ludlum fans [S20, S21, S10].
2. **The classic factors** are pacing, characterization, story line, frame/setting, tone/mood, and language/style [S1, S14]. Pearl's four "doorways" are story, character, setting, and language [S10, S21].
3. **Appeal crosses formats.** Genre appeal is "not limited by media format" [S1], and appeal applies to the whole collection "regardless of format" [S10].
4. **Shared cross-media core.** Across books, film/TV, games, comics, and music, users most often name mood, theme, setting, complexity, and character [S3].
5. **Mood is central.** It is the feeling a work evokes, and it has two senses: the mood a work expresses and the feeling the user wants [S3, S4, S5]. NoveList renamed Tone to Mood in 2024 [S9].
6. **Setting as appeal means atmosphere, not location.** "Setting really meant mood" [S20, S14]. For world type, users think in three options: our world, an imaginary world, or an alternate world [S3].
7. **Complexity has three parts:** intellectual, structural (non-linear, multiple points of view), and time commitment [S3].
8. **One or two appeals dominate.** Most works are driven by one or two, and factor weight varies by genre; for thrillers, pacing comes first [S10, S1].
9. **Cross genres and media by keeping the dominant appeal.** Hold the dominant appeals constant and vary the rest [S21, S18]. A frame-plus-character-arc match can beat a genre match: Brooklyn for Mrs. Maisel fans [S18].
10. **Appeals reveal cross-genre kinship.** In games, puzzle and simulation share "submission," which makes for more diverse recommendations [S2].
11. **Each format adds facets:**
    - Film: cinematography works as the "silent narrator," roughly equal to a book's tone and language [S8].
    - Audio: narrator voice and performance [S4, S8, S18].
    - Comics and manga: art style and layout [S4, S10].
    - Games: 16 appeals, from narrative and challenge to submission [S2], plus co-op vs. competitive play [S15].
12. **Anime facets:** audience, setting, mood, character, plot/narrative, subjects, association with other works, feature, and production [S5]. Demographics like seinen and shōnen describe the intended audience, not the genre, and are used inconsistently [S5, S17]. Iyashikei is a "healing" mood [S5].
13. **Combine genre, appeal, and theme (trope).** No single heading is enough [S4, S14].
14. **Dislikes are first-class signals:** "non-appeal," avoid-moods, "not like this" seeds, and content limits [S12, S3, S16, S10]. Content tolerance can differ between reading and watching [S8].
15. **Context matters:** mood today, time budget, finished vs. ongoing, company, platform, and the purpose of the session [S6, S26, S12].
16. **People ask with example titles and "vibes."** More seeds bring more recommendations (r=0.385); request length doesn't [S7]. Search engines match plot when seekers care about another trait [S6].
17. **Platforms miss most dimensions,** and none supports cross-media queries [S6].
18. **Describe items in audience language.** Review-like words beat catalog metadata. Combine the narrative with examples, and don't expand by creator alone [S11].
19. **LLMs handle narrative requests well:** about 70% better than older methods on movie requests, with plain prompts. Flaws: post-2000 recency bias, less variety in large models, format slips in small ones [S13].
20. **Netflix microgenres** = genre + appeal adjectives + frame, built from human ratings (romance, gore, quirkiness) [S29].
21. **Tagging rules:** pace only at the extremes; one blunt term per concept; no vague praise words ("compelling"); weigh critic and audience reviews [S14, S9, S4].
22. **Critique:** item-centered appeal misses the reader's context and "anticipated effects" ("reading appeal"), so supplement item tags with the user's situation [S26].
23. **Emotional arcs** (six shapes) track mood over a story, separate from plot; tested on books only [S24].

## Prompt-writing rules (from KNOWLEDGE_BASE §11)
1. **Intake:** use open prompts ("tell me about something you loved and why"). Ask for 2–5 seed titles in any medium, today's mood, anything to avoid, content limits, time budget, finished vs. ongoing series, solo or group viewing, and whether they want one pick or a list.
2. **Translate** the user's words into an appeal profile: pacing, story, character, frame/world type, mood, style. Name the one or two dominant appeals and confirm them with the user.
3. **Treat dislikes as hard filters:** avoid-moods, negative seeds, and content limits per medium.
4. **Match on dominant appeals:** give close matches plus cross-media "around" picks.
5. **Use format facets:** anime audience/mood/production, the 16 game appeals, narrator, art style.
6. **Explain every pick** in appeal language tied to the user's profile ("Because you liked X's [appeal]…"), with honest caveats on content, length, and commitment.
7. **Use specific terms,** not praise words.
8. **Guard against LLM failure modes:** verify that titles exist (title, year, medium), dedupe, ask for a spread of eras, and respect constraints.
9. **Ask for feedback** in appeal terms after each round, and refine.
10. **Be non-judgmental.** Re-ask about mood each session.

## Key terms
Appeal (a work's "feel") · dominant appeals · pacing · story line · frame (background + mood) · tone/mood · style · doorways (Pearl) · Adrenaline/Intellect/Emotion/Landscape (Saricks) · theme/trope · non-appeal · reading appeal · whole-collection advisory · watch-alike/-around · narrative-driven recommendation · mini-profile (seed examples) · kodomo/shōnen/shōjo/seinen/josei (audiences) · iyashikei (healing) · microgenre · emotional arc.
