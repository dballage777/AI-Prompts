# MEMORY BRIEF: Accurate title data and media knowledge
Working memory for a Claude Code show/movie/anime recommender that verifies every title. Detail: KNOWLEDGE_BASE.md; sources: SOURCES.md. Companions: topics 1 (appeal factors) and 2 (rec quality).

## Most important learned points
1. **Memory fails where recommendations live.** GPT-4: ~60% right on head IMDb titles, 10.9% on the tail (99.94% of titles) [S17]. Ungrounded models invent 0.6–2.7% of top-10 movie picks but 11–61% on long-tail catalogs [S21].
2. **Recent titles, episodes, and look-alikes are worst.** A vendor study found every checked field wrong for 19.5% of 2,600 titles ("Heel" got the cast of "Heels"); episode info was missing 46.5% of the time [S27]. Search lifted fast-changing-fact accuracy from under 15% (overall 28.6% → 75.6%) [S29].
3. **Confidence doesn't predict errors.** Stated confidence stays at 67–86 whatever the accuracy, so verify every title [S21].
4. **Ground the slot.** Recommendations drawn only from catalog records give 0% invented items [S23]. Search → ID → details, and never use a remembered ID [S25, S3].
5. **Matching matters.** Matchers can disagree by more than 10×. Use title + year + medium plus alternate titles, and review candidates [S21].
6. **Key-free sources that work from Claude Code:** AniList GraphQL (30/min while "degraded"; no hoarding) [S2], TVmaze (CC BY-SA) [S8], Wikidata SPARQL (CC0; descriptive User-Agent) [S10], Wikipedia REST [S20], MangaUpdates (credit, cache) [S16], IMDb daily TSVs (personal non-commercial, credit line) [S1], manami/Fribb offline JSON [S15, S22].
7. **Sources that need a key:** TMDB, MAL (client ID), IGDB (Twitch OAuth) [S3, S11, S19].
8. **TMDB's terms bar use "in connection with… a machine learning (ML) or artificial intelligence (AI) based Application"** and count LLM chatbots as commercial use. Caching is capped at 6 months [S5].
9. **ID bridge:** Wikidata P345 IMDb, P4947/P4983 TMDB, P8600 TVmaze, P8729 AniList, P4086 MAL [S10]. AniList returns `idMal` [S2]. Fribb maps anime to TMDB/TVDB with season offsets, but only about 21% of records have them [S22].
10. **Anime granularity differs by database.** AniList and MAL use one entry per season or cour. IMDb, TMDB and TVmaze use one series [S10, S13]. Frieren S2 = TMDB season 1, offset 28 [S22].
11. **Episode numbers need a named order.** Aired, DVD, absolute and arc orders differ. Never apply a fixed offset [S26]. TMDB puts specials in Season 0 and alternate orders in episode groups [S13, S3].
12. **Relations:** PREQUEL/SEQUEL can follow story order (Nekomonogatari Kuro 2012 is PREQUEL to Bakemonogatari 2009); ALTERNATIVE = another version, not a sequel (FMA vs Brotherhood); SUMMARY = recap. Filter by format [S7, S11].
13. **chiaki.site** lists franchises in air order, recaps included; groups can be narrower than the franchise [S30].
14. **Adaptation status:** MangaUpdates `anime.start/end` gives per-season chapter boundaries. Frieren ends at Vol 9 Ch 80, so the reader continues at 81. Filter results to type Manga [S16].
15. **Demographics** (shōnen, shōjo, seinen, josei, kodomo) are the source magazine's target audience, not genre, age rating or "who will like it". Readership is broader [S28]. MAL assigns them only from the source or a documented target. Missing means unknown [S12].
16. **MAL taxonomy:** 18 Genres, 3 Explicit, 52 Themes and 5 Demographics. Old data used "Dementia" and "Shounen Ai" [S18]. **AniList:** demographics are tags with rank and spoiler flags; `isAdult` excludes ecchi [S2].
17. **MPA:** G/PG/PG-13/R/NC-17, each with a film-specific descriptor whose qualifiers have defined meanings. Theme alone can't exceed PG-13 [S4]. Ratings are voluntary and US-only. Unrated is valid, and other cuts don't inherit the rating [S9].
18. **TV Parental Guidelines:** TV-Y, TV-Y7(-FV), TV-G, TV-PG, TV-14 and TV-MA, plus D/L/S/V/FV. Networks self-rate per episode and per version, so a series-level rating is approximate [S6].
19. **Crowd and in-house ratings** are signals, not official ratings: IMDb Parents Guide votes [S24], MAL's nudity-based rating [S11, S12]. ESRB covers games; digital-only ones are rated via IARC [S14].

## Prompt-writing rules (from KNOWLEDGE_BASE §11)
1. Verify before showing: "Title (Year) · Medium · [source + ID]". Drop or flag anything unresolved.
2. Generate, then ground. Pick only from records the lookup returned.
3. Lookup order: anime → AniList (then manami/Fribb, MAL); TV → TVmaze; film → Wikidata or IMDb datasets; cross-IDs → Wikidata/Fribb; adaptation → MangaUpdates. TMDB only with the user's key and acceptance of its AI clause.
4. Search first, review the top 3–5, and confirm title, year, medium and format. Never use a remembered ID.
5. Read cast, year, runtime, episode count and status from the record. Otherwise say "unverified".
6. Re-check fast-changing facts (status, seasons, renewals, dates) every session. Check the user's premise.
7. Anime: give the format; name the catalogue for season/episode numbers; ALTERNATIVE = choice, SUMMARY = skippable, SIDE_STORY = optional.
8. Adaptation: give the MangaUpdates end point and "continue at chapter N+1"; credit it; note it is editor-entered.
9. Ratings: give system and country (MPA + descriptor; TV-xx + letters, per episode). Label crowd or in-house ratings. Unrated is valid. Show ratings; don't filter (adult user).
10. Describe demographics as publication audience. Use AniList tags with rank ≥ ~60 and hide spoiler tags.
11. API etiquette: descriptive User-Agent, serial requests, honour 429, cache per session, no mass harvesting.
12. Credit TVmaze, IMDb, MangaUpdates (TMDB if used).
13. Keep factual answers short.

## Key terms
grounding · OOD@10 · catalog canonicity · head/torso/tail · ID bridge · granularity mismatch · cour · Season 0 · episode group · aired/DVD/absolute order · MediaRelation (PREQUEL, SEQUEL, ALTERNATIVE, SUMMARY, SIDE_STORY, SOURCE) · demographic vs genre vs theme · tag rank · MPA descriptor · TV Parental Guidelines descriptors · Unrated · `anime.start/end`.
