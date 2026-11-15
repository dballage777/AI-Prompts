# KNOWLEDGE BASE: Accurate title data and media knowledge for recommendations
Topic slug: media-recommender-title-data · Built 2026-11-15 from 30 sources (SOURCES.md, S1–S30) · Prompt: Topic_Learning_Master_Prompt_v2
Purpose: building a personal show/movie/anime recommender in Claude Code that verifies every title.
Companions: topic 1, appeal factors (what to match on): research/media-recommender-appeal-factors/knowledge/. Topic 2, recommendation quality and LLM failure modes (it found invalid-title rates of about 1–23%): research/media-recommender-rec-quality/knowledge/.

Evidence labels: **Documented** (official or primary), **Research** (academic), **Reported** (secondary, vendor, or community), **Inferred** (my synthesis). Every point cites [S#].

---

## 1. Topic overview
A recommender is only as trustworthy as its facts. LLMs know canonical films well but fail on the long tail, recent releases, episodes, and look-alike titles:
- Even for the most popular IMDb titles, GPT-4 answered only about 60% of attribute questions correctly. For the 99.9% of titles in the "tail" it got 10.9% right [S17].
- Ungrounded models put out-of-catalog titles in about 1–3% of top-10 movie lists, but 11–61% for long-tail catalogs [S21].
- A vendor study found an ungrounded model wrong on *every* checked field for about 1 in 5 popular titles. For specific episodes it had no information 46.5% of the time [S27].
- Without retrieval, accuracy on fast-changing facts stayed under 15% even for GPT-4. Search augmentation lifted overall strict accuracy from 28.6% to 75.6% [S29].

The fix is grounding. Resolve every title to a real database record (ID + title + year + medium), and read every hard fact from that record [S21, S23, S25, S27] (Strong).

This topic covers:
- which databases a Claude Code session can actually query, and under what terms [S1–S3, S5, S8, S10, S11, S15, S16, S19, S20, S22];
- how anime is modeled differently from Western TV [S2, S10, S12, S13, S22];
- demographics and tags [S2, S11, S12, S18, S28];
- watch order and relations [S7, S11, S13, S26, S30];
- where an anime stops in its source manga [S16];
- what content ratings really mean [S3, S4, S6, S9, S14, S24].

## 2. Core concepts and glossary
- **Grounding:** the recommendation slot can be filled only from catalog items. RecLM reaches 0.00% out-of-domain output by retrieving from an index or decoding along a catalog-only trie [S23]. The prompt-level equivalent: the model proposes queries, a tool returns real IDs, and the model picks only among those [S23 Inferred].
- **OOD@10 / out-of-catalog rate:** the share of top-10 recommendations not in the catalog [S21, S23].
- **Catalog canonicity:** films seen many times on the web are rarely invented; long-tail strings often are [S21].
- **Head / torso / tail:** popularity thirds by cumulative IMDb `numVotes`. Only 767 titles are head, 4,113 torso, and 99.94% tail [S17].
- **External ID bridge:** IMDb `tconst` (tt…), TMDB movie and TV IDs (separate number spaces), TVDB, TVmaze, Wikidata Q-id, AniList id, MAL id, AniDB id [S3, S8, S10, S22].
- **Granularity mismatch:** IMDb, TMDB, and TVmaze model an anime as one series. AniList and MAL split it per season or cour, often many-to-many [S1, S10, S13, S22].
- **Relation types:**
  - AniList: ADAPTATION, PREQUEL, SEQUEL, PARENT, SIDE_STORY, CHARACTER, SUMMARY, ALTERNATIVE, SPIN_OFF, OTHER; plus SOURCE, COMPILATION, CONTAINS (v2) and SAME_UNIVERSE (v3) [S7].
  - MAL: sequel, prequel, alternative_setting, alternative_version, side_story, parent_story, summary, full_story [S11].
  - MangaUpdates: Prequel, Sequel, Spin-Off, Adapted From, Alternate Version, Main/Side Story, and others [S16].
- **Episode order:** "the agreement that makes an episode number meaningful." Aired, DVD, production, absolute, and story-arc orders can number the same material differently [S26, S13, S3].
- **Cour:** a three-month Japanese broadcast block of about 12 episodes. Formats are single, double, split, and continuous [S13].
- **Season 0:** where TMDB puts specials, episode 0 or 0.5, recaps, and OVAs [S13].
- **Demographic (shōnen / shōjo / seinen / josei / kodomo):** an editorial category set by the magazine or label the manga ran in. It is not a genre and not an age rating [S28, S12, S18].
- **MAL taxonomy:** 18 Genres, 3 Explicit Genres (Ecchi, Erotica, Hentai), 52 Themes, and 5 Demographics, all in one ID space [S18].
- **AniList tags:** each has `rank` (0–100 relevance), `category` (for example "Demographic", "Theme-Fantasy"), and spoiler flags [S2].
- **MPA rating:** G, PG, PG-13, R, or NC-17, plus a film-specific descriptor [S4, S9]. **TV Parental Guidelines:** TV-Y, TV-Y7(-FV), TV-G, TV-PG, TV-14, or TV-MA, plus D/L/S/V/FV [S6]. **ESRB:** E, E10+, T, M, or AO, plus 30 descriptors and interactive elements [S14]. **IMDb Parents Guide:** crowd-voted severity, None to Severe, across 5 categories [S24]. **MAL rating:** in-house G to Rx, based on nudity [S11, S12].

## 3. Key principles and frameworks
1. **Memory is not a source.** Model recall collapses at the tail [S17], fails on recent titles [S27, S29], and mixes up same-name titles: "Heel" (2025) got the cast and genre of "Heels" (2021–23) [S27]. (Strong)
2. **Stated confidence can't tell you which titles to check.** Verbalized confidence sits in a narrow band (67–86) while catalog-hit rates range from 39% to 99%. Filtering on confidence cut hallucination by at most 1.65 points [S21]. Verify everything. (Moderate, one strong study)
3. **The catalog defines what "valid" means.** Pick the reference catalog on purpose (TMDB, AniList, Wikidata, IMDb datasets) [S23 Inferred, S21].
4. **Resolve by search, then by ID, never from a remembered ID.** RestGPT's TMDB failures included made-up path IDs, for example the Witcher `tv_id` [S25]. TMDB itself recommends search → id → details [S3]. (Strong)
5. **Matching is a design decision.**
   - Off-the-shelf string matchers disagree on OOD rates by more than 10× [S21].
   - Exact match after Unicode folding recovers only 49.6% of real items, and token-set ≥90 is far too lenient [S21].
   - Use title + year + medium, alternate titles and akas, and a review of the top-N candidates [S21, S1, S2, S8].
6. **Fast-changing facts always need a lookup.** Airing status, latest season, renewals, episode counts of airing shows, availability, and upcoming dates [S29 Inferred, S27]. Check the user's premise too ("season 3 of X") [S29].
7. **Respect each source's terms; they differ sharply** (§7 matrix) [S1, S2, S5, S8, S10, S11, S16, S19, S20].
8. **Anime has its own data model.** Seasons and cours are separate entries on AniList/MAL but merged on TMDB/IMDb. Name the catalogue and the ordering scheme whenever you cite an episode or season number [S12, S13, S22, S26].
9. **Ratings belong to a version and a country.** MPA ratings attach to a specific cut [S9]. TV ratings attach to a specific episode and version [S6]. TMDB stores certifications per country and release type [S3].

## 4. Best practices and methods, step by step
**A. Verify a movie or TV title (key-free path)**
1. Normalize the user's or model's string: Unicode folding, article moves ("Seven (a.k.a. Se7en)"), and the year if given [S21].
2. Pick the medium (film, TV, or anime), then query:
   - TV: TVmaze `/search/shows?q=` to get candidates. `/singlesearch` picks arbitrarily between same-name shows [S8].
   - Film or TV: Wikidata SPARQL by label or by IMDb ID P345 [S10]; Wikipedia REST summary → `wikibase_item` [S20].
   - Bulk offline: the IMDb `title.basics` and `title.akas` TSVs (230 MB compressed; stream them or load into SQLite or DuckDB) [S1].
3. Confirm title + year + type. In IMDb data that means `titleType`, `startYear`, `endYear`; in TVmaze, `premiered`, `ended`, `type`, `network`/`webChannel` [S1, S8].
4. Store IDs: tconst, TVmaze id, Q-id, TMDB id. The Wikidata properties are P345 IMDb, P4947 TMDB movie, P4983 TMDB TV, P8600 TVmaze, P8729 AniList, P4086 MAL [S10].
5. Check details against the record, not memory: cast, overview, runtime, and the status from the episode list. TVmaze `ended` for Breaking Bad shows the 2019 El Camino special, not the 2013 finale [S8].
6. With a TMDB key: use `/search`, then `/find/{id}?external_source=imdb_id|wikidata_id|tvdb_id`, then details with `append_to_response` [S3]. First read the AI-use clause in §7 [S5].

**B. Verify an anime title**
1. Send an AniList GraphQL POST (no key) using `Page{media(search:"…", type:ANIME)}` to see several candidates. Request `id idMal title{romaji english native} synonyms format status episodes season seasonYear source(version:3) isAdult countryOfOrigin genres tags{name rank category isMediaSpoiler}` [S2].
2. Confirm format (TV, TV_SHORT, MOVIE, OVA, ONA, SPECIAL), year, and status (FINISHED, RELEASING, NOT_YET_RELEASED, CANCELLED, HIATUS) [S2].
3. Stay under the limit: currently 30 requests per minute ("degraded", normally 90). Batch with aliases. Don't hoard or mirror the data [S2].
4. For offline or bulk checks, use the manami anime-offline-database: 41,537 entries, ODbL, weekly releases. Check `lastUpdate` first [S15].
5. For cross-ID mapping to TMDB/TVDB/IMDb, use Fribb/anime-lists. Only about 21% of records have TMDB/TVDB IDs, and some were found by search, so confirm title and year [S22].
6. Season numbering: Frieren S2 is TVDB season 2 but TMDB season 1 at episode offset 28 [S22].

**C. Build a watch order and pick an entry point**
1. Walk AniList relations one hop at a time, with `relationType(version:2)` [S7].
2. Main path: TV, MOVIE, and ONA entries linked by SEQUEL/PREQUEL. PREQUEL can mean story order rather than release order: Bakemonogatari (2009) lists Nekomonogatari Kuro (2012) as PREQUEL (verified live) [S7].
3. Label the rest:
   - SUMMARY and COMPILATION → skippable recaps;
   - SIDE_STORY → optional;
   - ALTERNATIVE → a choice between versions (FMA 2003 vs. Brotherhood), not a sequel. ALTERNATIVE also covers manga versions and promo videos, so filter on `node.type` and `format` [S7].
4. Cross-check against chiaki.site, which sorts by air date (MAL + Shikimori data). It includes recaps and one-minute shorts, and its groups can be narrower than the franchise: Fate/stay night has no Apocrypha [S30].
5. For Western franchises:
   - TMDB collections hold films only, and `parts` aren't sorted, so sort by `release_date` yourself [S3].
   - TV alternate orders live in TMDB episode groups (7 types) [S3, S13] and TVmaze `alternatelists` [S8].
   - IGDB `collections`/`franchises` handle games [S19].
6. Name the order and the catalogue when citing episodes ("TMDB aired order, S2E5"). Never convert between orders with a fixed offset [S26].

**D. Find where the anime ends in the manga**
1. Search MangaUpdates (`POST /v1/series/search`, no key) and filter `type == "Manga"`, because doujinshi can rank above the main series [S16].
2. `GET /v1/series/{id}` → `anime.start` / `anime.end` (free text per season). Frieren: end "Vol 7, Chap 60 (S1) / Vol 9, Chap 80 (S2)", so continue at ch. 81 [S16]. Also read `completed`, `status`, `latest_chapter`, `licensed`, and `publishers[type=English]` [S16].
3. Credit MangaUpdates, space requests, and cache. There is "no warranties about… correctness" [S16].
4. A secondary source is the MAL Background field. Guidelines ask editors to note the start and end volume and chapter there [S12].

**E. Show content ratings correctly**
1. Film: show the MPA letter *plus* the descriptor ("Rated PG-13 for some war violence/bloody images…"). The qualifiers have defined meanings: Brief = 1–3 instances, Pervasive = constant [S4]. With a key, TMDB `/movie/{id}/release_dates` gives US certifications by release type [S3].
2. TV: the TV rating is per episode and per version. A series-level value (TMDB `/tv/{id}/content_ratings`) is approximate [S6, S3].
3. Treat "Not Rated / Unrated" as a valid state. It's common for independent films and alternate cuts, and an extended cut does not inherit the theatrical rating [S9].
4. Anime: AniList `isAdult` excludes ecchi [S2]. MAL `rating` is an in-house, nudity-based scale (r+ = nudity, rx = hentai). Label it as MAL's rating, not MPA's [S11, S12].
5. Crowd signals: IMDb Parents Guide severity with its vote count, labeled as community data. Scene text is only in the paid dataset [S24].
6. Games: ESRB category plus descriptors. Digital-only games are rated via IARC and won't appear in esrb.org search [S14].

## 5. Examples and models worth copying
- **Key-free AniList call** (verified 2026-11-14): `curl -s -X POST https://graphql.anilist.co -H 'Content-Type: application/json' -d '{"query":"{Media(search:\"Frieren\",type:ANIME){id idMal format status episodes seasonYear}}"}'` → id 154587, MAL 52991, TV, FINISHED, 28 episodes, 2023 [S2].
- **TVmaze IMDb lookup:** `curl -sL "https://api.tvmaze.com/lookup/shows?imdb=tt0903747"` → 301 to `/shows/169`, Breaking Bad [S8].
- **Wikidata ID bridge:** a SPARQL query on `wdt:P345 "tt…"` returns P4983 and P8600. AniList and MAL IDs sit on the season items, for example Attack on Titan S3 has 2 AniList and 2 MAL IDs [S10].
- **Wikipedia → Wikidata:** `/api/rest_v1/page/summary/Breaking_Bad` → `wikibase_item` Q1079 [S20].
- **MangaUpdates adaptation lookup:** Spy x Family `anime.start` "Vol 1, Chap 1 (S1P1) / Vol 7, Chap 39 (S2) / Vol 9 Chap 60 (S3)" [S16].
- **RestGPT pattern:** planner → API selector (reads endpoint descriptions only) → caller (reads one endpoint's docs) → parser (code over the JSON schema). It reached 75% success on RestBench-TMDB, against 44% for ReAct [S25].
- **FreshPrompt:** put retrieved evidence with dates in the context, newest last, and give short answers. More evidence records help most (+16.2 pts going from 1 to 15) [S29].
- **TMDB docs for agents:** `https://developer.themoviedb.org/llms.txt`; append `.md` to any docs page [S3].

## 6. Common mistakes and how to avoid them
| Mistake | Fix | Source |
|---|---|---|
| Trusting the model's memory for cast, year, runtime, or plot | Read them from the record; keep answers short | S17, S27, S29 |
| Checking only "suspicious" titles | Check every title; confidence doesn't predict errors | S21 |
| Fuzzy token-set match ≥90 accepted as "exists" | Title + year + medium, plus top-N review | S21 |
| Filling an API path ID from memory | Search → ID → detail | S25, S3 |
| Same-name confusion (Heel/Heels, Top Gear) | Key on ID + year + medium; compare cast/overview | S27, S8 |
| Citing "S3E5" for anime without naming the catalogue | Name the catalogue and order; prefer entry or arc names | S13, S22, S26 |
| Adding a fixed offset to convert orders | Use explicit mappings (episode groups, alternate lists, Fribb offsets) | S26, S3, S8, S22 |
| Treating PREQUEL as "aired earlier" or ALTERNATIVE as "sequel" | Read relation semantics; filter by type and format | S7, S11 |
| Treating shōnen/seinen as age ratings or gender filters | Demographic = source magazine; readership is broader | S28, S12 |
| A missing demographic or theme read as "none" | Treat it as unknown; original anime often have none | S12, S18 |
| Old MAL data with "Dementia", "Shounen Ai" | Map to Avant Garde and Boys Love; demographics are now separate | S18 |
| Series TV rating read as covering every episode | Ratings are per episode and per version | S6 |
| Theatrical MPA rating applied to an extended cut | Different version means its own rating or Unrated | S9 |
| AniList `isAdult=false` taken as "no sexual content" | Ecchi isn't adult on AniList; add your own checks | S2 |
| MAL "R+" shown as an MPA R | Label it as MAL's in-house rating | S11, S12 |
| Scraping imdb.com or MAL pages | Use IMDb datasets and official APIs only | S1, S11 |
| Generic or no User-Agent on Wikimedia | Descriptive UA with contact info: 200 req/min vs 10 | S20 |
| Trusting an aggregate dataset's freshness | Check `lastUpdate` (manami README said week 27 of 2026) | S15 |

## 7. Tools and resources: which source is best for what
| Need | Best source | Key? | Terms / limits |
|---|---|---|---|
| Anime existence, format, year, status, tags, relations | AniList GraphQL [S2, S7] | No | Free non-commercial; no hoarding; 30 req/min now |
| Anime (MAL view), MAL rating, nsfw | MAL API v2 [S11] | Client ID | Licence bans scraping; commercial needs permission |
| Offline anime catalog + cross-IDs | manami anime-offline-database [S15] | No | ODbL + DbCL; weekly |
| Anime ↔ TMDB/TVDB/IMDb with season offsets | Fribb/anime-lists [S22] | No | No licence file found |
| Where the anime ends in the manga; manga status | MangaUpdates API [S16] | No | Credit, space and cache; no warranty |
| Franchise air-order list (MAL IDs) | chiaki.site [S30] | No | No documented API or terms |
| TV existence, status, episodes, alternate orders | TVmaze API [S8] | No | CC BY-SA; ≥20 calls/10 s; 60-min cache |
| Film/TV existence, year, type, akas (bulk) | IMDb datasets [S1] | No | Personal non-commercial; credit "Information courtesy of IMDb (https://www.imdb.com). Used with permission."; no scraping |
| Cross-ID mapping and basic facts | Wikidata SPARQL [S10] + Wikipedia REST [S20] | No | CC0; UA required; 60 s/query; endpoints migrating from mid-Nov 2026 |
| Rich film/TV metadata, certifications, providers | TMDB API [S3] | Yes | **§1.C bars use "in connection with… a machine learning (ML) or artificial intelligence (AI) based Application"; §2 counts LLM chatbots as commercial; 6-month cache cap; attribution notice** [S5] |
| Games, ESRB/PEGI ratings, franchises | IGDB [S19] | Twitch OAuth | Non-commercial under Twitch DSA; 4 req/s |
| What MPA ratings mean | filmratings.com [S4, S9] | — | No API; title search on site |
| What TV ratings mean | tvguidelines.org [S6] | — | — |
| Game ratings meaning | ESRB [S14] | — | — |
| Crowd content-severity | IMDb Parents Guide [S24] | Paid bulk | Licensed via AWS Data Exchange |
| Why grounding is needed (evidence) | S17, S21, S23, S27, S29 | — | — |
| How to drive an API with an agent | RestGPT [S25] | — | — |
| Episode-order theory | Emby Learn [S26], TMDB Bible [S13] | — | — |
| Anime taxonomy rules | MAL DB guidelines [S12], MAL overhaul [S18], Wikipedia [S28] | — | — |

**Key-free lookups that worked from this Claude Code session:** AniList GraphQL, TVmaze, Wikidata SPARQL, Wikipedia REST (with a descriptive UA), MangaUpdates, the IMDb dataset files, manami/Fribb/Kometa JSON via raw.githubusercontent.com, and chiaki.site pages. Kitsu reads also worked in Part 1 discovery (outside the set; see NOTES.md). **Need a key:** TMDB, MAL, IGDB, OMDb, Trakt, Simkl. **Blocked from this sandbox:** the Jikan API (connection reset), AniDB, reddit, and imdb.com pages (WAF) [S1–S3, S8, S10, S11, S16, S19, S20; NOTES.md].

## 8. Evidence strength
- **Strong:**
  - LLM memory is unreliable for title facts, especially in the tail, for recent titles, and for episodes [S17, S21, S27, S29].
  - Grounding to a catalog removes invented titles [S23, S21, S25].
  - Resolve names to IDs by search before detail calls [S3, S25].
  - Demographics are editorial categories tied to the publication [S12, S18, S28].
  - TV ratings apply per episode and per version, and MPA ratings per cut [S6, S9].
  - Episode numbers depend on the ordering scheme [S13, S26, S3, S8].
  - Anime granularity differs between databases [S10, S13, S22, S1].
- **Moderate:**
  - Stated confidence is useless for triage [S21; one study].
  - Search augmentation with more evidence beats prompting alone [S29].
  - AniList relation semantics: PREQUEL can mean story order [S7; live tests].
  - MangaUpdates `anime` fields give adaptation boundaries [S16; editor free text].
  - TMDB AI clause [S5; a primary document, but interpretation is inferred].
- **Limited:**
  - Gracenote's figures (vendor, model undisclosed) [S27].
  - chiaki.site group boundaries [S30].
  - Wikipedia demographic details with uncited leads [S28].
  - Fribb mapping coverage [S22].
- **Contested:** see §9.

## 9. Where sources disagree
- **AniList rate limit:** 90 req/min nominal vs. "degraded… 30 requests per minute". The live header shows 30 [S2]. Use 30.
- **AniList PREQUEL:** the docs say "Released before the relation", but live data uses story order (Nekomonogatari Kuro) [S7].
- **Where demographics live:** AniList stores them as user-voted tags with ranks [S2]; MAL as a separate field set only from the source or a documented target [S12, S18]; MangaUpdates as genres [S16]. Old MAL data mixes them into genres [S18].
- **IMDb Parents Guide severity:** the data dictionary says median, the help page says average, and the dictionary's own example fits neither cleanly [S24]. Store the raw votes.
- **Anime seasons:** TMDB keeps continuous-numbered sequels in one season [S13]; MAL splits on a gap of about 12 weeks or more, but only for airing shows [S12]; TVDB and TMDB season numbers differ for the same anime [S22].
- **Scale of hallucination:** 0.6–2.7% OOD for canonical movies [S21]; about 19.5% of titles with every field wrong [S27, vendor]; tail accuracy of 10.9% [S17]. These measure different things: existence, metadata, and attribute QA. They don't contradict each other.
- **manami upstream:** Fribb now names a cedya77 fork [S22], while the manami README is still live [S15]. Not resolved.

## 10. Gaps
- No source gives a key-free, licence-clean API for **US film certifications**. filmratings.com has only a site search [S4]; TMDB needs a key and has the AI clause [S3, S5]. Wikidata may hold MPA ratings, but no source in the set checked this.
- **Streaming availability** without a key: TMDB/JustWatch needs a key and attribution [S3]; TVmaze gives the network or web channel only [S8]. The user said platform doesn't matter, so this is low priority.
- **Curated "recommended" watch orders and entry points** (as opposed to air or story order) for complex franchises such as Monogatari, Fate, and Gundam aren't covered by any authoritative source. Community wikis were blocked and the web is full of SEO farms (NOTES.md).
- **Western franchise chronology** (MCU, Star Wars, Star Trek) has no authoritative key-free source in the set.
- The **Twitch Developer Services Agreement** (IGDB) wasn't read, so its AI terms are unknown [S19].
- **AniDB** terms couldn't be verified (blocked).
- **Content warnings** (DoesTheDogDie, Kids-In-Mind) were blocked and not covered.
- Anime-specific **LLM hallucination rates** aren't measured directly; the long-tail evidence [S17, S21] suggests they're high.
- MangaUpdates `anime` fields are editor free text with no documented coverage rate [S16].

## 11. How to apply this when writing prompts on this topic
Rules a recommender prompt should build in:
1. **Verify before you show.** Every recommended title must be resolved to a database record and shown as "Title (Year) · Medium · [source + ID]". Drop or flag anything unresolved, and never present an unverified title as real [S21, S23, S27].
2. **Generate, then ground.** Brainstorm candidates, look each one up, and select only from the records that came back [S23, S25].
3. **Look up the source in this order:**
   - anime → AniList (then manami/Fribb offline, then MAL if there's a client ID);
   - TV → TVmaze;
   - film → Wikidata or the IMDb datasets;
   - cross-IDs → Wikidata/Fribb;
   - adaptation status → MangaUpdates.
   Only use TMDB if the user has a key and accepts the §1.C AI-use clause [S2, S8, S10, S1, S22, S16, S5].
4. **Search first.** Never use a remembered ID. Review the top 3–5 candidates and confirm title, year, medium, and format [S25, S21, S8].
5. **Read hard facts from the record:** cast, year, runtime, episode count, status, seasons. Otherwise say "unverified" or "unsure" [S17, S27].
6. **Re-check fast-changing facts every session:** airing status, new seasons, renewals, release dates. Check the user's premise [S29].
7. **For anime, report the format and name the catalogue for season and episode numbers.** Present ALTERNATIVE versions as a choice, mark recaps (SUMMARY/COMPILATION) skippable and SIDE_STORY optional. Pick the entry point from relations, not from air order alone [S7, S13, S26, S30].
8. **Adaptation status:** give MangaUpdates' `anime.end` and the "continue at chapter N+1" point, with the source credited and the caveat that it's editor-entered [S16].
9. **Ratings:** show the official rating with its system and country (MPA + descriptor; TV-xx + letters, noting it applies per episode). Label MAL/AniList/IMDb crowd ratings as such, and treat Unrated as valid. Since the user is an adult, no filtering by default, but always show the rating [S4, S6, S9, S11, S24].
10. **Demographics and tags:** describe them as publication audience, not as content or quality. Use AniList tag `rank` ≥ ~60 for "about" claims and hide spoiler tags [S2, S28, S12].
11. **Be a good API citizen:** descriptive User-Agent, serial requests, honour 429/Retry-After, and cache within the session. AniList batching suits its 30/min; no mass harvesting [S2, S8, S20].
12. **Attribution:** credit the data sources in output or in an About section: TVmaze (CC BY-SA), IMDb's credit line, MangaUpdates, and the TMDB notice if used [S1, S5, S8, S16].
13. **Keep factual answers concise.** Long chain-of-thought answers increase hallucination [S29].
