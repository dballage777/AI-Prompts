# NOTES — media-recommender-title-data (Top 30 research)
Run date: 2026-11-14 · Prompt: prompts/claude/Top30_Resource_Research_Prompt_v3.txt

## Scope
- Topic: Accurate title data and media knowledge for recommendations: reliable title databases (TMDB, IMDb, AniList, MyAnimeList, IGDB), anime demographics and genre/theme tags, franchise watch orders and entry points, manga-to-anime adaptation status, and content ratings (MPA, TV Parental Guidelines).
- Recency: 2022+ · Language: English · Audience/region: any (defaults); US rating systems emphasized because the user is US-based and wants content ratings shown.
- The run instructions gave the topic, so the "ask for the topic" step was skipped.
- Downstream use: a personal show/movie/anime recommender in Claude Code that verifies every title. Extra requirement: record which databases a Claude Code session can query, with or without a key, plus terms and attribution rules. That is the "Database access matrix" below.
- Relation to topics 1–2: topic 1 = what to match on (appeal factors); topic 2 = how a recommender behaves (calibration, explanations, LLM failure modes, including the 1–23% invalid-title finding). This topic = how to get facts right. Sources already on topic 1/2 Top-30 lists were excluded to avoid duplication (see the excluded log).

## Weights
Default weights (Relevance 20, Reliability 20, Authority 15, Depth 15, Accuracy 10, Practical 10, Currentness 5, Community 5). No change. For this topic, official docs and rules are the ground truth, so the default weighting on reliability and authority already fits.

## Pool
- 5 discovery batches: candidates_primary.md (43), candidates_ratings_tags.md (35), candidates_academic_oss.md (43), candidates_community_media.md (36), candidates_watchorder.md (21 opened). About 178 accessible candidates, roughly 150 after deduplication; many TMDB, AniList, and IMDb pages appeared in several batches.
- The watch-order batch's subagent was refused by the session's permission check (its brief mentioned looking for mirrors of blocked pages). The lead researcher ran that batch directly, and no blocked site was routed around.
- 63 shortlisted and scored (SCORED_CANDIDATES.csv). Others stay in the candidates files.
- Pass 6 deduplication merged sub-pages of the same site into one entry: motionpictures.org/film-ratings restates filmratings.com; tvguidelines.org FAQs; the MAL API licence goes with the MAL API reference. Those pages are still read during learning.
- Diversity check: final 30 = official database/API docs and terms (14), official rating bodies (5), database editorial rules and taxonomy (4: MAL guidelines, MAL overhaul, TMDB Bible, plus the AniList relation reference counted with docs), open-source datasets/tools (3), research papers (5), industry study (1), vendor docs (1), encyclopedia (1). PEGI and BBFC were scored down on relevance and practicality, because the user is in the US and games are an optional input.

## Access preflight (2026-11-14)
| Category | Test hosts | Result |
|---|---|---|
| Official DB docs | developer.themoviedb.org, developer.imdb.com (→ data.imdb.com), docs.anilist.co, myanimelist.net, api-docs.igdb.com, tvmaze.com, api.mangaupdates.com | OPEN |
| Official DB main sites | themoviedb.org, anilist.co, myanimelist.net OPEN; imdb.com 202 (empty body / WAF), igdb.com 403, anidb.net 403, kitsu.app 403, animenewsnetwork.com 403 | MIXED |
| Rating bodies | filmratings.com, motionpictures.org, tvguidelines.org, esrb.org, pegi.info, bbfc.co.uk OPEN; fcc.gov 403 | MOSTLY OPEN |
| Preprints | arxiv.org OPEN; dl.acm.org 403 (from topic 2) | OPEN |
| Encyclopedia / KG | en.wikipedia.org (needs descriptive User-Agent), wikidata.org, query.wikidata.org OPEN; Wikimedia action API rate-limited for generic UAs | OPEN |
| Communities | reddit.com 403; Stack Exchange 403 (Cloudflare); news.ycombinator.com, TMDB Talk, MAL forum, Plex/Sonarr/Jellyfin forums OPEN; AniList forum JS-only (readable via GraphQL) | MIXED |
| Code hosts | github.com HTML 403; raw.githubusercontent.com OPEN; pypi.org HTML JS-challenge (JSON API OPEN) | MIXED |
| Independent media | animecorner.me, anime-atelier.com, slashfilm.com, thepopverse.com, gracenote.com OPEN; crunchyroll.com/news JS-only | MIXED |
| Archives | web.archive.org BLOCKED (000 / reset / 403) | BLOCKED |

## Database access matrix (key-free lookups tested live from this Claude Code session)
| Database | Public API | Key needed | Tested from this session | Terms / attribution (short) |
|---|---|---|---|---|
| AniList | GraphQL (POST https://graphql.anilist.co) | No for public reads | Works: Frieren → id 154587, MAL 52991, tags with rank, relations | Free non-commercial; no hoarding/mass collection; 90 req/min nominal, currently degraded to 30 (header `x-ratelimit-limit: 30`) — docs.anilist.co/guide/terms-of-use, /rate-limiting |
| TMDB | REST v3/v4 | Yes (free key) | 401 without key. Docs readable as .md plus llms.txt | Non-commercial use; must show "This product uses the TMDB API but is not endorsed or certified by TMDB"; logo rules; ~40 req/s; no caching beyond 6 months. **§1.C bars use "in connection with… a machine learning (ML) or artificial intelligence (AI) based Application", and §2 treats LLM chatbots as commercial use. So a Claude-driven recommender likely conflicts with the terms unless TMDB agrees in writing (verified on the terms page, 2026-11-15).** — api-terms-of-use |
| IMDb | No free API; daily TSV datasets; paid GraphQL API on AWS Data Exchange | Datasets: no | Works: datasets.imdbws.com/title.ratings.tsv.gz HEAD 200 (~8.7 MB) | Personal, non-commercial only; credit "Information courtesy of IMDb (https://www.imdb.com). Used with permission."; no scraping of imdb.com |
| MyAnimeList | REST v2 | Yes (`X-MAL-CLIENT-ID`) | 403 without client ID | API licence & developer agreement; commercial vs non-commercial rules |
| Jikan (unofficial MAL) | REST | No | BLOCKED from sandbox (connection reset) | Unofficial scraper; 60 req/min, 3 req/s per its docs |
| IGDB | REST (Apicalypse, POST) | Yes (Twitch Client-ID + OAuth) | 401 without auth | Free non-commercial under the Twitch Developer Services Agreement; 4 req/s |
| Wikidata | SPARQL, EntityData JSON, Action API | No | Works: SPARQL P345 "tt0111161" → Q172241; EntityData works; Action API rate-limited without a good UA | CC0 data; descriptive User-Agent required; 2026 limits ~200 req/min for identified clients vs 10 for unidentified; 60 s query deadline; WDQS backend moves to new endpoints from mid-Nov 2026 |
| Wikipedia | REST page summary | No | Works with descriptive UA (Frieren summary → Q98642652) | CC BY-SA text; same Wikimedia UA and rate rules |
| TVmaze | REST | No | Works: singlesearch "severance", lookup by IMDb ID | CC BY-SA; link back to TVmaze; ≥20 calls / 10 s; 60-min cache |
| Kitsu | JSON:API (kitsu.io/api/edge) | No for reads | Works (curl -g) | Docs Apache-2.0; no explicit data licence found |
| MangaUpdates | REST (api.mangaupdates.com/v1) | No for public reads | Works: series search and record; `anime.start/end` chapter fields | AUP: credit MangaUpdates; space requests and cache; "no warranties about… correctness" |
| AniDB | HTTP XML / UDP | Registered client | No response; docs 403 | Not verified |
| OMDb | REST | Yes (free key) | 401 without key | CC BY-NC 4.0; 1,000/day free |
| Trakt / Simkl | REST | Yes (client id) | 403 / 412 without key | Simkl requires visible "View on Simkl"; Trakt 1000 calls/5 min |
| JustWatch | Partner API (contract) | Yes | Not testable; TMDB watch providers carry JustWatch data (key + "JustWatch" attribution) | Branded links required |
| Offline mappings | manami anime-offline-database (ODbL), Fribb/anime-lists, Kometa Anime-IDs | No | raw.githubusercontent.com READMEs open; JSON files downloadable | ODbL for manami; check each repo licence |

## Excluded-source log (not described, not listed)
- Already used in topic 1/2 Top 30 (duplicates across the plan): Beyond Utility (arXiv 2411.00331), He et al. zero-shot CRS (2308.10053), Gracenote "Hallucinations: What's the risk?", Cho et al. Facet Analysis of Anime Genres (also pre-2022), Carraro & Bridge (2401.11506), Lichtenberg et al. (2406.01285).
- BLOCKED: reddit.com (403), Stack Exchange (403), github.com HTML (403), animenewsnetwork.com (403), anidb.net + wiki.anidb.net (403), kitsu.app (403), igdb.com (403), fcc.gov V-chip (403), kids-in-mind.com (403), doesthedogdie.com (403), api.jikan.moe (connection reset), mangadex.org (bot check), web.archive.org (reset/403), alternativeto.net and neowin.net (403), pypi.org HTML (JS challenge).
- DEAD: filmratings.com old rating-rules PDF path /Content/Downloads/rating-rules.pdf (404; the current copy at /wp-content/uploads/2025/08/rating_rules.pdf opens and was read in Part 2), tvguidelines.org/monitoringboard.html (404), several BBFC about-classification paths (404), jikan.moe/faqs (404), CBR shonen article (404), Trakt forum thread (moved), MovieLens README (timeout), Jikan READMEs (404), api.anidb.net (000).
- NO CONTENT (JS shell): crunchyroll.com/news/guides, docs.api.jikan.moe, kitsu/trakt Apiary HTML, 50th.filmratings.com.
- LOGIN/KEY: api.themoviedb.org, api.myanimelist.net, api.igdb.com, omdbapi.com, api.trakt.tv, api.simkl.com (API endpoints only; their docs pages are open).
- Quality exclusions: alibaba.com "product-insights" watch-order pages, *.pages.dev guides, shapes.inc bot pages (AI content farms); oneesports/twinfinite/upcomer/sportskeeda "where does the anime end" posts (low-authority SEO).

## Community findings (anecdotal — reputation, not proof)
- Demographics come from the source magazine, not from tone. MAL's DB guidelines (IV.13.1) assign a demographic only from the manga/LN source or an explicit published statement. A missing tag doesn't mean there's no demographic: a MAL user stack lists female-targeted shows without a shoujo/josei tag.
- An AniList data moderator (2023 thread) said demographics should move from user-voted tags to an entry field.
- TMDB vs TVDB: no consensus (2024 Sonarr thread: "TVDB missed at least 15%" vs "TMDB is wrong quite often"). Most repeated advice: TVDB for TV, TMDB for movies, AniDB/AniList/MAL for anime.
- Anime episode numbering (absolute vs seasonal, TMDB's single-season rule for long-running anime) is the most repeated complaint. Tools like XEM exist only to remap it.
- Air dates follow conventions: TMDB files late-night (24:00+) anime under the next day. An independent 2026 write-up found US streaming shows recorded on the previous US day.
- Content ratings vary by country, change over time (a 2025 Plex report of BBFC re-ratings not reflected), and are sometimes missing; treat "not rated" as unknown.
- IMDb access is shrinking: Cinemagoer reports an IMDb WAF from April 2026 and now works from datasets only.
- Web search for watch-order and "where does the anime end" content is dominated by SEO/AI farms. Sources disagree even on simple chapter boundaries (Chainsaw Man S1: "ch. 38" vs "two pages before ch. 39"; MangaUpdates says "Vol 5, Chap 38 (S1)").

## Disagreements between sources
- AniList rate limit: docs say 90/min nominal but "degraded" to 30/min; the live header shows 30. Use 30.
- Is a demographic a genre? MAL lists Demographics separately from Genres/Themes; AniList stores them as tags (category "Demographic") voted by users. Wikipedia and MAL rules agree it is the source publication's target readership.
- TMDB vs TVDB episode data quality (see community findings).
- LLM title validity: out-of-catalog rates of 0.6–2.7% on MovieLens vs 49–61% on Amazon Toys (2608.10008), against Gracenote's "every measured detail wrong for ~1 in 5 titles" (vendor study with commercial interest).

## Omission check (Pass 8)
Searches: "LLM movie recommendation verify titles TMDB lookup grounding", "anime demographics explained magazine readership", "anime watch order guide", "where does the anime end in the manga". Added Gracenote's 2026 report and its episode-accuracy insight (rank 34, near-miss), and the MangaUpdates `anime` field (rank 16). Nothing else new met the bar.
