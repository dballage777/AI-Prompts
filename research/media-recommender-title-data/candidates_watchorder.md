# Candidates — watch orders, entry points, adaptation status (batch run by the lead researcher)
Run 2026-11-14. The subagent for this batch was refused by the session's permission check, so the lead researcher ran it directly. All URLs below were opened with curl in this session; no blocked site was routed around.

name | canonical URL | type | why it matters | how found | status
---|---|---|---|---|---
AniList API — MediaRelation enum | https://docs.anilist.co/reference/enum/mediarelation | official API docs | Defines PREQUEL/SEQUEL/PARENT/SIDE_STORY/SUMMARY/ALTERNATIVE/SPIN_OFF/ADAPTATION/SOURCE/COMPILATION/CONTAINS/SAME_UNIVERSE: the vocabulary for building watch orders | direct | ACCESSIBLE
AniList GraphQL relations query (live test) | https://graphql.anilist.co | key-free API | `Media(search:"Fullmetal Alchemist"){relations{edges{relationType node{...}}}}` returned SEQUEL movie, SUMMARY special, SIDE_STORY OVA and ALTERNATIVE = the 2009 Brotherhood TV series | live test | ACCESSIBLE (POST only; GET returns 404)
MangaUpdates API (OpenAPI, AUP) | https://api.mangaupdates.com/ | official API docs | Public, key-free series records include an `anime` field with `start`/`end` chapter, e.g. Chainsaw Man: end "Vol 5, Chap 38 (S1)… / Vol 6, Chap 52 (Reze Movie)"; AUP requires credit + caching | search + live test | ACCESSIBLE
MangaUpdates series record (example) | https://www.mangaupdates.com/series/ylx5wzn/chainsaw-man | database page | Human-facing page for the same record (status, volumes, anime start/end) | API result | ACCESSIBLE (via API JSON; page link from API)
chiaki.site Watch Order tool | https://chiaki.site/?/tools/watch_order | community tool | Lists all related franchise titles from MAL + Shikimori data sorted by air date, with type, episodes × length, MAL score (Code Geass example incl. recaps/picture dramas) | search | ACCESSIBLE
MyAnimeList — related entries pages | https://myanimelist.net/anime/5114/Fullmetal_Alchemist__Brotherhood/related | database page | MAL's own relation list per title (prequel/sequel/alternative version/adaptation) | direct | ACCESSIBLE
MyAnimeList Interest Stacks (Fate/TYPE-MOON watch order) | https://myanimelist.net/stacks/23650 | community list | User-curated watch order; reputation evidence only | search | ACCESSIBLE (community, anecdotal)
TMDB Contribution Bible — TV Episodes | https://www.themoviedb.org/bible/tv/59f743289251416e71000037 | official editorial rules | Episodes must be added "exactly as they first aired on the original network"; alternate orders go in Episode Groups; has an Anime section | search | ACCESSIBLE
TMDB API — TV series episode groups | https://developer.themoviedb.org/reference/tv-series-episode-groups | official API docs | Endpoint for alternate orders (production/DVD/arc/absolute); key required | search | ACCESSIBLE
TMDB API — Collection details | https://developer.themoviedb.org/reference/collection-details | official API docs | Film franchise collections (e.g., Star Wars collection 10) for movie series order | direct | ACCESSIBLE
TMDB collection page example | https://www.themoviedb.org/collection/10-star-wars-collection | database page | Human-facing collection listing | direct | ACCESSIBLE
TMDB docs llms.txt | https://developer.themoviedb.org/llms.txt | official docs index | Docs index for AI agents; ".md" appended to any doc URL gives markdown — handy for Claude Code | found on docs page | ACCESSIBLE
Wikidata Property P155/P156 (follows / followed by) | https://www.wikidata.org/wiki/Property:P155 | official data model | Ordering of works in a series | direct | ACCESSIBLE
Wikidata Property P179 (part of the series) | https://www.wikidata.org/wiki/Property:P179 | official data model | Series membership | direct | ACCESSIBLE
Wikidata Property P144 (based on) | https://www.wikidata.org/wiki/Property:P144 | official data model | Source work (manga → anime) | direct | ACCESSIBLE
Wikipedia — "List of … chapters" pages (example: Chainsaw Man) | https://en.wikipedia.org/wiki/List_of_Chainsaw_Man_chapters | encyclopedia | Cited publication history of chapters/volumes; episode lists often note adapted chapters | direct | ACCESSIBLE
Wikipedia — franchise article (example: Monogatari) | https://en.wikipedia.org/wiki/Monogatari_(series) | encyclopedia | Cited media list for complex franchises | direct | ACCESSIBLE
Fribb/anime-lists | https://raw.githubusercontent.com/Fribb/anime-lists/master/README.md | open-source mapping | Cross-ID mapping MAL/AniList/AniDB/Kitsu/TVDB/TMDB/IMDb/LiveChart/ANN | direct | ACCESSIBLE (github.com HTML 403; raw file opened)
Kometa-Team/Anime-IDs | https://raw.githubusercontent.com/Kometa-Team/Anime-IDs/master/README.md | open-source mapping | Daily-generated AniDB→MAL/AniList/TVDB/IMDb/TMDB map; "Last generated at: November 13, 2026" | direct | ACCESSIBLE
Emby Learn — Understanding episode order | https://emby.media/learn/articles/libraries-collections/television/episode-order/Library-Episode-Order.html | vendor docs | Explains aired vs DVD vs absolute order and why S01E02 can map to different episodes | search | ACCESSIBLE
TVmaze API (show alternate lists) | https://www.tvmaze.com/api | official API docs | Free key-free REST; endpoints include episode list, "Show alternate lists" (alternate orders), AKA titles | direct | ACCESSIBLE
tinyMediaManager — Episode groups | https://www.tinymediamanager.org/blog/episode-groups/ | vendor blog | How TMDB episode groups are used in practice | search | NOT OPENED (search snippet only — not counted)
Plex forum — TMDB episode groups request | https://forums.plex.tv/t/support-alternate-order-flexible-seasons-tvdb-implemented-and-episode-groups-tmdb-open/537737 | community | Long-running complaint thread | search | NOT OPENED (not counted)

## Key facts noted
- AniList relation types (docs): SEQUEL "Released after the relation", PREQUEL "Released before the relation", SUMMARY "A shortened and summarized version", ALTERNATIVE "An alternative version of the same media", SPIN_OFF "An alternative version of the media with a different primary focus" — https://docs.anilist.co/reference/enum/mediarelation. So SEQUEL/PREQUEL are by release, not necessarily story chronology.
- Live AniList test: FMA (2003) lists Brotherhood (2009) as ALTERNATIVE, not SEQUEL — a watch-order builder must not chain ALTERNATIVE or SUMMARY entries as "next".
- MangaUpdates `anime.start/end` gives chapter boundaries per season/movie; AUP: "You will credit MangaUpdates…", "use reasonable spacing between requests… and employ caching", "makes no warranties about… correctness of the data" — https://api.mangaupdates.com/
- TMDB rule: episodes added "exactly as they first aired on the original network"; alternate orders live in Episode Groups — TMDB TV Bible.
- chiaki.site sorts by air date (release order) using MAL + Shikimori data; includes recaps and minor specials, which a recommender should filter by format/length.
- Web search for "watch order" guides returns many SEO/AI-farm pages (alibaba.com "product-insights", *.pages.dev, shapes.inc). These were excluded. "Where does the anime end in the manga" answers from esports/SEO sites disagreed (Chainsaw Man ch. 38 vs "two pages before ch. 39"); MangaUpdates says "Vol 5, Chap 38 (S1)".

## Excluded
- api.mangadex.org/docs → redirected to mangadex.org bot-check (BLOCKED, JS challenge).
- reddit.com/r/anime/wiki/watch_order → 403 BLOCKED (preflight). Not routed around.
- crunchyroll.com/news/guides → 200 but page is JS-rendered; no content readable (treated as PARTIAL; not listed).
- alibaba.com "product-insights" watch-order pages, *.pages.dev guides, shapes.inc pages → AI content farms (excluded on quality).
- oneesports.gg, twinfinite, upcomer, sportskeeda "where does the anime end" posts → low-authority SEO; not opened as candidates.
