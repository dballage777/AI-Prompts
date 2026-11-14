# Candidates: communities, independent writers and media, archives

Batch: communities, independent writers and media, archives. Topic: accurate title data and media knowledge for recommendations.
Compiled 2026-11-14. Every URL below was opened with `curl -sL` in this session. "Final URL" means the URL after redirects. Dates come from the page itself. "n/d" means the page shows no date.
Community material is ANECDOTAL. It shows what people say and how they rate sources, not whether the data is accurate.

Format: name | canonical (final) URL | type | one-line reason | how found | status

## Candidates

1. Servarr Wiki, Sonarr FAQ | https://wiki.servarr.com/sonarr/faq | project docs (community-maintained) | Says the Sonarr "series type" (Standard/Daily/Anime) follows how releases are numbered on indexers, "not necessarily the true 'type' of the series"; anime usually uses absolute numbering (n/d) | direct (brief) | ACCESSIBLE
2. Servarr Wiki, TheXEM Moderation Guide | https://wiki.servarr.com/sonarr/xem-guide | project docs | Explains scene/absolute/SxxExx remapping between TVDB numbering and release numbering, with examples of basic and complex anime mappings and their limits (n/d) | WebSearch | ACCESSIBLE
3. Jellyfin Docs, Metadata | https://jellyfin.org/docs/general/server/metadata/ | project docs | Default providers are TMDb, OMDb and local .nfo; TheTVDB, fanart.tv and AniDB come as official plugins (n/d) | direct (brief) | ACCESSIBLE
4. Jellyfin Docs, Metadata Provider Identifiers | https://jellyfin.org/docs/general/server/metadata/identifiers/ | project docs | Shows how to pin a title to a provider ID ([tmdbid-], [imdbid-], [tvdbid-]); useful as a pattern for ID-first title verification (n/d) | link from #3 | ACCESSIBLE
5. Jellyfin Docs, Plugins | https://jellyfin.org/docs/general/server/plugins/ | project docs | Lists official anime metadata plugins: Anilist, Anidb, Anisearch, Kitsu (n/d) | WebSearch | ACCESSIBLE
6. Kometa Wiki, AniDB service config | https://kometa.wiki/en/latest/config/anidb/ | project docs | Kometa's AniDB integration uses "a replacement API service" and filters adult or mature content by default (`enable_mature: false`) (n/d) | direct plus link crawl | ACCESSIBLE
7. Kometa Wiki, US Content Ratings (Show) | https://kometa.wiki/en/latest/defaults/show/content_rating_us/ | project docs | Groups shows into TV-Y…TV-MA collections and puts uncommon or unrated values in an "other" bucket; a working model for normalizing ratings (n/d) | link crawl from Kometa home | ACCESSIBLE
8. TMDB Talk, "Clarification on Air Date policy" | https://www.themoviedb.org/talk/63eb406c8e870200a988f22d | community forum (moderator answers) | A TMDB moderator quotes the rule that anime listed after 24:00 (for example "26:00") is recorded under the next calendar date (2023-02-14 to 02-19) | WebSearch | ACCESSIBLE
9. TMDB Talk, "Continuous episode numbers (anime)" | https://www.themoviedb.org/talk/63283b9b0f21c6007faa71d6 | community forum | Dispute over the TMDB Bible rule that long-running anime with continuous numbers go into a single season, and complaints that editors apply it too broadly (2022-09-19 to 2025-09-24) | WebSearch | ACCESSIBLE
10. TMDB Talk, "Certification - Problems updating information" | https://www.themoviedb.org/talk/63b7df66f44f2700a020d6f4?page=2 | community forum | Editors report they could not add or update certifications for some countries, for example Singapore (2023-01-06 to 2025-06-10) | WebSearch | ACCESSIBLE
11. TMDB TV Bible, Seasons | https://www.themoviedb.org/bible/tv/59f73eb49251416e71000026 | editorial rules (official, surfaced by community search) | "reproduce the seasons exactly as they first aired on the original network. An exception is anime series. They have their own guidelines" (n/d) | WebSearch | ACCESSIBLE
12. WatchNext blog, "Why TMDB says your Apple TV+ show airs a day early" | https://watchnext.leyu.studio/blog/apple-tv-air-dates-off-by-one | independent developer write-up | Checked TMDB air_date against press release dates (Silo S3E6 and S3E7 one day early; Slow Horses unchanged) and quotes a TMDB moderator: air_date is the earliest availability in the origin country (2026-08-13) | HN Algolia API (HN item 49297902, 2026-08-14) | ACCESSIBLE
13. Simkl Docs, "Why is TVDB better for TV shows than TMDB?" | https://docs.simkl.org/how-to-use-simkl/getting-started-with-simkl/basic-navigation/tv-shows-tracking/why-is-tvdb-better-for-tv-shows-than-tmdb | vendor docs (opinion) | A tracker vendor's stated source policy: "TVDB - For TV Shows, TMDB - For Movies, AniDB - For Anime". It is an interested party (n/d) | WebSearch | ACCESSIBLE
14. Sonarr Forums, "TMDB as Metadata Source" | https://forums.sonarr.tv/t/tmdb-as-metadata-source/32403 (and ?page=2) | community forum | Users split: "TMDB has never missed one while TVDB has missed at least 15%" against "TMDB is wrong quite often as well"; it also covers aired versus DVD order (2023-08-06 to 2024-01) | WebSearch | ACCESSIBLE
15. Plex Forum, "Episode ordering - missing TheTVDB (streaming)" | https://forums.plex.tv/t/episode-ordering-missing-thetvdb-streaming/846879 | community forum | Lists Plex's ordering options (TMDB Aired, TVDB Aired/DVD/Absolute) and asks for streaming order (2023-07-10) | WebSearch | ACCESSIBLE
16. Plex Forum, "Support Alternate Order / Flexible Seasons (TVDB) [implemented] and Episode Groups (TMDB) [open]" | https://forums.plex.tv/t/support-alternate-order-flexible-seasons-tvdb-implemented-and-episode-groups-tmdb-open/537737?page=2 | community forum | Long-running request; the title says TVDB alternate orders are implemented and TMDB episode groups are still open (2019 to 2024-06-21) | WebSearch | ACCESSIBLE
17. Plex Forum, "Outdated certifications (UK)" | https://forums.plex.tv/t/outdated-certifications-uk/934909 | community forum | A parent reports films re-rated from 15 to 12A by BBFC still show the old rating in metadata, so content ratings change over time (2025-12-28 to 2026-01-03) | WebSearch | ACCESSIBLE
18. Emby Community, "It seems that the tv db api require authentication now" | https://emby.media/community/topic/122939-it-seems-that-the-tv-db%C2%A0api-require-authentication-now/ | community forum | Log excerpt shows TVDB v4 /search returning "Unauthorized" (2023-11-06); evidence that TVDB access is fragile for clients | WebSearch | ACCESSIBLE
19. TheTVDB Support KB, FAQ id=62 (v4 API: licensed vs user-supported) | https://support.thetvdb.com/kb/faq.php?id=62 | vendor knowledge base | "v4 API keys are now per-project"; user-supported access needs a subscriber PIN (no date shown; sibling FAQ id=81 says "Last Updated 5 years ago") | WebSearch | ACCESSIBLE
20. Jellyfin Forum, "Absolute Numbering for Anime" | https://forum.jellyfin.org/t-absolute-numbering-for-anime | community forum | A user hits duplicated seasons and episodes when switching Bleach, One Piece and MHA to TVDB absolute order (2025-01-10) | WebSearch | ACCESSIBLE
21. MyAnimeList, Anime DB Guidelines (forum topic 141101) | https://myanimelist.net/forum/?topicid=141101 | database editorial rules | IV.13.1: an anime gets a demographic only if its manga or light-novel source has one in MAL's manga DB, or a news or interview source states the target audience; IV.13.3: genres and themes must fit 70–80% of a series (n/d, live) | MAL forum crawl (Anime DB subboard) | ACCESSIBLE
22. MyAnimeList, "Isekai is Here! Genres/Themes Overhaul Part 1.5" | https://myanimelist.net/forum/?topicid=2004234 | official announcement on community forum | MAL split its 15-year-old genre system into genres, themes and demographics (2022-03-28, Lead Admin) | MAL forum crawl (Updates & Announcements) | ACCESSIBLE
23. MyAnimeList Forum, "Re:Zero Anime should have seinen tag." | https://myanimelist.net/forum/?topicid=2266474 | community forum | A reply explains why a database does not copy a streamer's "seinen" label: demographics belong to the source magazine, and a light-novel original has none (2026-05-31 to 06-07) | MAL forum crawl (Anime DB subboard) | ACCESSIBLE
24. MyAnimeList Interest Stack 48481, "Anime targeted at a female audience but NOT tagged as Shoujo/Josei on MAL" | https://myanimelist.net/stacks/48481 | user-curated list | Lists titles whose MAL demographic tag is missing, so an untagged demographic does not mean an absent one (created 2024-06-09, updated 2025-07-01) | WebSearch | ACCESSIBLE
25. AniList Forum thread 62020, "Change how demographics work" | https://anilist.co/forum/thread/62020 | community forum | Proposes moving demographics out of user-voted tags. An AniList ANIME_DATA moderator (Basenji) replied: "This is our plan in the upcoming tag rework… moving the demographic tags to a field on the entry rather than user-voted" (2023-01-08 to 01-09) | AniList GraphQL API thread search | ACCESSIBLE (via graphql.anilist.co; HTML needs JavaScript)
26. AniList Forum thread 76167, "Why are data submissions so archaic and bad?" | https://anilist.co/forum/thread/76167 | community forum | Users and data moderators (LEAD_ANIME_DATA, MANGA_DATA roles) describe the submission and moderation workflow, which shows how AniList data gets edited (2024-08-17) | AniList GraphQL API thread search | ACCESSIBLE (via API)
27. Cinemagoer documentation (formerly IMDbPY) | https://cinemagoer.readthedocs.io/en/latest/ | open-source project docs | Revamp notice: "Starting on April 2026… introduction of a WAF in front of the IMDb website", so the project now works only on IMDb's non-commercial datasets. Scraping IMDb pages is no longer viable (docs v2026.11.3) | WebSearch | ACCESSIBLE
28. IMDb Non-Commercial Datasets page | https://data.imdb.com/non-commercial-datasets/ (from developer.imdb.com) | official page, surfaced in the IMDb-changes search | "As of March 18, 2024 the datasets… are backed by a new data source… no change in location or schema"; personal and non-commercial use only | WebSearch | ACCESSIBLE
29. Outlook Respawn, "Shonen, Seinen, Shojo & Josei in Anime: Explained" | https://respawn.outlookindia.com/pop-culture/pop-culture-guides/shonen-vs-seinen-vs-shojo-vs-josei-anime-demographics-explained | media explainer (mainstream outlet, medium quality) | Defines demographics by source magazine (Banana Fish is shojo because it ran in Bessatsu Shōjo Comic); gives approximate age ranges (2026-08-01) | WebSearch | ACCESSIBLE
30. SlashFilm, "The 5 Movie Ratings Explained: G, PG, PG-13, R & NC-17" | https://www.slashfilm.com/1693847/movie-ratings-explained-meaning/ | media explainer | Recent plain-language explainer of the MPA ratings; secondary to the MPA itself (2024-10-26) | WebSearch | ACCESSIBLE
31. Anime Atelier, "Reading Guide: Continuing Summer 2025 Anime With Manga" | https://www.anime-atelier.com/reading-guide-continuing-summer-2025-anime-with-manga/ | independent anime media | Seasonal "which chapter to continue from" list linking official publishers (MANGA Plus, K MANGA and others) (2025-10-09, by Andrea Tran) | WebSearch | ACCESSIBLE
32. Anime Corner, "Which Manga Chapter Did Your Favorite 2023 Fall Anime End With?" | https://animecorner.me/which-manga-chapter-did-your-favorite-2023-fall-anime-end-with/ | independent anime media | Seasonal adaptation-endpoint roundup, the same pattern as #31 (2023-12-31) | WebSearch | ACCESSIBLE
33. Popverse, "How to watch Jujutsu Kaisen in order" | https://www.thepopverse.com/tv-jujutsu-kaisen-watch-order-anime-netflix-where-to | entertainment media (ReedPop) | Watch-order and entry-point guide that gets updated (2023-09-05, updated 2026-01-06) | WebSearch | ACCESSIBLE
34. JustWatch Guides, "How to Watch the One Piece Franchise in Order" | https://guides.justwatch.com/uk/one-piece-franchise-in-order | streaming-guide media | Recommends release order as the entry point for a franchise with non-canon films (the page shows today's date, so it is dynamic and the publish date is unverified) | WebSearch | ACCESSIBLE
35. Anime Feminist, "Demolishing the Demographic Double Standard" | https://www.animefeminist.com/discourse-demolishing-the-demographic-double-standard-why-more-manga-for-boys-need-to-treat-their-girls-better/ | independent critical media | Thoughtful demographic commentary but OLD (2018-05-23; updated 2020-01-23). It falls outside the 2022+ window, so keep it as background only | WebSearch | ACCESSIBLE (pre-2022)
36. Sonarr Forums, "TVDB is going payed - New Metadata Site?" | https://forums.sonarr.tv/t/tvdb-is-going-payed-new-metadata-site/26946 | community forum | Origin of the "move to TMDB" sentiment after TVDB's subscription model (2020-11-11). Pre-2022 context only | WebSearch | ACCESSIBLE (pre-2022)

## Community findings (anecdotal)

- **Demographic tags are source-magazine facts, not audience or tone.** MAL's rules apply them only from the manga or light-novel source, or from an explicit published statement (https://myanimelist.net/forum/?topicid=141101). A MAL user explains that a streamer's "seinen" label is marketing, not a database demographic (https://myanimelist.net/forum/?topicid=2266474). AniList's data moderator said in 2023 that demographics would move from user-voted tags to an entry field (https://anilist.co/forum/thread/62020). For the recommender: treat a demographic as "where it was serialized" and never infer it from content.
- **A missing demographic tag does not mean the title has none.** A MAL user stack catalogs female-targeted titles that lack shoujo or josei tags (https://myanimelist.net/stacks/48481). Anime originals and game adaptations often have no demographic at all.
- **TMDB vs TVDB reliability is contested, with no consensus.** In 2024 Sonarr users posted opposite claims: TVDB "missed at least 15%" against "TMDB is wrong quite often as well", and both are said to ignore DVD order (https://forums.sonarr.tv/t/tmdb-as-metadata-source/32403?page=2). Simkl, a vendor, prefers TVDB for TV, TMDB for movies and AniDB for anime (Simkl doc above). This repeated three-way split (TVDB for TV, TMDB for film, AniDB, AniList or MAL for anime) is the most common community recommendation.
- **Anime episode numbering is the biggest pain point.** It comes up repeatedly: Sonarr's series type and XEM remapping (servarr wiki), Jellyfin duplicates under TVDB absolute order (https://forum.jellyfin.org/t-absolute-numbering-for-anime), the dispute over TMDB's single-season rule for long-running anime (https://www.themoviedb.org/talk/63283b9b0f21c6007faa71d6), and Plex's open TMDB episode-groups request (Plex thread #16). For the recommender: never state "Season N" for anime without naming the source and its ordering scheme.
- **Air dates follow documented conventions, not the advertised date.** TMDB records late-night anime (24:00+ listings) under the next day (https://www.themoviedb.org/talk/63eb406c8e870200a988f22d). For US-origin streaming shows released at 00:00 GMT or Irish time, TMDB records the previous US day (https://watchnext.leyu.studio/blog/apple-tv-air-dates-off-by-one). An independent developer verified this on two episodes. Expect off-by-one dates.
- **Content ratings vary by country, change over time, and are sometimes missing.** TMDB editors could not add some countries' certifications from 2023 to 2025 (TMDB talk #10). In 2025 a Plex user found BBFC re-ratings (15 to 12A) not reflected in metadata (https://forums.plex.tv/t/outdated-certifications-uk/934909). Kometa puts uncommon or unrated values in an "other" bucket. For the recommender: cite rating, country and source, and treat "not rated" as unknown, not "all ages".
- **Access to IMDb and TVDB keeps shrinking.** Cinemagoer reports an IMDb WAF from April 2026 and moved to datasets only (https://cinemagoer.readthedocs.io/en/latest/). IMDb datasets switched to a new backing source on 2024-03-18 (https://data.imdb.com/non-commercial-datasets/). TVDB v4 uses per-project keys plus subscriber PINs (https://support.thetvdb.com/kb/faq.php?id=62), and Emby saw "Unauthorized" errors in 2023 (Emby thread above). Trakt's old forum is closed and moved, and its own page points to r/trakt (forums.trakt.tv).
- **AniList data is edited through moderated submissions, and the workflow gets complaints** (https://anilist.co/forum/thread/76167). AniList's GraphQL API exposes forum threads and moderator roles, which makes it a reliable way to read AniList community material.
- **Adaptation-status ("where the anime ends") info comes mostly from seasonal media roundups** (Anime Atelier 2025, Anime Corner 2023). Many search results were AI-generated "shapes.inc" bot pages and .pages.dev mirrors with no sourcing. Avoid those.
- **Hacker News had little on this topic.** HN Algolia (2022+ stories) mostly returned Show HN tracker apps. The only substantive find was the TMDB air-date post (item 49297902).

## Access log

- news.ycombinator.com → OPEN (item pages)
- hn.algolia.com API → OPEN (`numericFilters=created_at_i>1640995200` must be URL-encoded with `-G --data-urlencode`)
- wiki.servarr.com → OPEN
- forums.sonarr.tv → OPEN
- jellyfin.org/docs → OPEN
- forum.jellyfin.org → OPEN
- kometa.wiki → OPEN (redirects to /en/latest/)
- forums.plex.tv → OPEN
- emby.media/community → OPEN
- www.themoviedb.org/talk and /bible → OPEN
- support.thetvdb.com → OPEN
- thetvdb.com → OPEN (home only)
- forums.thetvdb.com → BLOCKED/DEAD (curl 000, no response)
- trakt.tv → OPEN (redirects to app.trakt.tv)
- forums.trakt.tv → OPEN but forum CLOSED ("The Trakt Forum has moved", 2026)
- forum.trakt.tv → BLOCKED/DEAD (curl 000)
- myanimelist.net (forum, stacks) → OPEN
- anilist.co/forum HTML → needs JavaScript (no content)
- graphql.anilist.co → OPEN (POST thread and threadComments queries work)
- movies.stackexchange.com and anime.stackexchange.com → home page 200, but tag and question pages 403 Cloudflare ("Just a moment…")
- api.stackexchange.com → intermittent: first calls returned unfiltered results, then "too many requests from this IP" (shared-IP throttle). Treat as UNRELIABLE
- web.archive.org → BLOCKED (https: connection reset by peer, curl 35; http: 403; CDX endpoint: 000). Retested 3 times
- archive.org/wayback/available (availability API) → OPEN (returns snapshot metadata; for example themoviedb.org snapshot 2026-10-04 and wiki.servarr.com/sonarr/faq snapshot 2026-10-21), but the snapshots themselves cannot be fetched because web.archive.org is blocked
- archive.org (home) → OPEN
- animefeminist.com → OPEN
- otakuusamagazine.com → OPEN (home; no relevant 2022+ article found)
- crunchyroll.com/news → OPEN (home; no relevant demographic or watch-order explainer found)
- cbr.com → OPEN (home); target article 404
- respawn.outlookindia.com, slashfilm.com, anime-atelier.com, animecorner.me, thepopverse.com, guides.justwatch.com, docs.simkl.org, watchnext.leyu.studio, cinemagoer.readthedocs.io, data.imdb.com → OPEN
- alternativeto.net, neowin.net → BLOCKED (403 Cloudflare challenge)
- m.imdb.com/news → BLOCKED (redirect to www.imdb.com returned 202 with empty body; WAF)
- discourse.osmc.tv → OPEN
- Not retested (preflight 403): reddit, github.com HTML, animenewsnetwork.com, anidb.net, kitsu.app

## Excluded

- AlternativeTo news on Trakt limits (2025-02) https://alternativeto.net/news/2025/2/trakt-tv-has-set-stricter-limits-for-free-users-and-raised-vip-subscription-prices-by-100- → BLOCKED 403 (Cloudflare)
- Neowin on Trakt VIP price hike https://www.neowin.net/amp/trakt-vip-receives-up-to-300-price-hike-going-back-on-promise-to-honor-legacy-subs/ → BLOCKED 403 (Cloudflare)
- Trakt forum "Updating Trakt Limits for 2026" https://forums.trakt.tv/t/updating-trakt-limits-for-2026/101592 → DEAD (forum closed; page shows only a "moved" notice)
- CBR "shonen anime misconceptions" https://www.cbr.com/shonen-anime-misconceptions/ → DEAD 404
- CBR josei piece republished on IMDb https://m.imdb.com/news/ni65101372 → BLOCKED (202, empty body)
- Jikan FAQ https://jikan.moe/faqs → DEAD 404
- MPA 50th anniversary site https://50th.filmratings.com/ → empty body (JavaScript only); no content to verify
- Stack Exchange tag pages (anime watch-order, movies mpaa-rating) → BLOCKED 403 Cloudflare; API rate-limited
- AniList forum HTML pages → JavaScript required (content reached via the GraphQL API instead; see #25 and #26)
- web.archive.org snapshots → BLOCKED (connection reset / 403)
- MAL forum ?board=21 → DEAD 404 (wrong board ID; the real boards were found via the forum index)
- Kometa /files/builders/anilist/ → DEAD 404 (wrong path; the builders page /files/builders/anilist/builders/ opened but had no relevant content)
- Plex "Will the new TVDB API/user subscription model affect Plex?" (2020-11) and OSMC TVDB subscription thread (2020-11-18) → ACCESSIBLE but pre-2022 and only historical context; excluded from the list
- Plex "Source for TV Show Content Rating" (2021-12) → ACCESSIBLE but pre-2022; excluded
- HN "Trakt Has Been Down for Two Days" (2022-12-13) → ACCESSIBLE but trivial (outage), not about data quality
- Search hits from shapes.inc bot pages, *.pages.dev mirrors, alibaba.com "product insights", and Wikipedia or IPFS mirrors → not opened or excluded as low-quality or AI-generated
