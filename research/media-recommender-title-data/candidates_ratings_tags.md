# Candidates: content ratings, anime demographics, and genre/theme tags

Discovery batch, run 2026-11-14. Each URL below was opened with curl. "Final URL" is the URL after redirects.
Format: name | canonical (final) URL | type | why it matters | how found | status

## Candidates

### A. Content ratings (official and authoritative)
1. MPA/CARA Ratings Guide ("Check the Box", descriptor breakdown by rating) | https://www.filmratings.com/ratings-guide/ | official rating body | Official G/PG/PG-13/R/NC-17 meanings plus how each descriptor category (violence, language, sex, nudity, drugs, smoking, theme) scales by rating | known URL (redirected from /RatingsGuide) | ACCESSIBLE
2. filmratings.com Resources & FAQ | https://www.filmratings.com/resources-faq/ | official FAQ | Who rates (parent raters), ratings are voluntary, streamers "most" submit, MPA does not rate TV | known URL | ACCESSIBLE
3. filmratings.com Who We Are (CARA) | https://www.filmratings.com/who-we-are/ | official org page | CARA mission ("a rating most American parents would agree with"), CARA leadership, Appeals Board | known URL (redirected from /about) | ACCESSIBLE
4. MPA Film Ratings page | https://www.motionpictures.org/film-ratings/ | official trade association page | Short official one-line meaning for each MPA rating | known URL | ACCESSIBLE (page footer ©2026)
5. TV Parental Guidelines: Ratings | http://www.tvguidelines.org/ratings.html | official rating body | The TV rating system's scope, its per-episode application, and where the icon is shown | known URL | ACCESSIBLE (the rating levels themselves appear as an image; text is in item 6)
6. TV Parental Guidelines ratings guide (PDF) | http://www.tvguidelines.org/resources/TheRatings.pdf | official PDF | Full text of TV-Y, TV-Y7, TV-Y7-FV, TV-G, TV-PG, TV-14, TV-MA and the D/L/S/V/FV descriptors | link on ratings.html | ACCESSIBLE
7. TV Parental Guidelines FAQs | http://www.tvguidelines.org/faqs.html | official FAQ | Exemptions (news, sports), how the icon is displayed, how to send complaints to the Monitoring Board | link on ratings.html | ACCESSIBLE
8. TV Parental Guidelines Monitoring Board (About Us) | http://www.tvguidelines.org/aboutUs.html | official governance page | Board makeup: chair plus 18 industry members appointed by NAB, NCTA and MPA, plus 5 public-interest members | link on ratings.html | ACCESSIBLE
9. ESRB Ratings Guide | https://www.esrb.org/ratings-guide/ | official game rating body | E/E10+/T/M/AO and Rating Pending meanings, plus content descriptors and interactive elements | known URL | ACCESSIBLE
10. ESRB FAQs | https://www.esrb.org/faqs/ | official FAQ | Boxed games rated by consensus of at least 3 trained raters; digital-only games and apps rated through IARC; rules for DLC | known URL | ACCESSIBLE
11. PEGI: What do the labels mean | https://pegi.info/what-do-the-labels-mean | official EU game rating body | PEGI 3/7/12/16/18 criteria and descriptors (violence, fear/horror, bad language, sex, gambling, drugs, discrimination, in-game purchases) | known URL | ACCESSIBLE
12. BBFC rating page: 15 | https://www.bbfc.co.uk/rating/15 | official UK classifier | Per-rating page with issue-by-issue criteria (dangerous behaviour, discrimination, drugs, language, and others); the same URL pattern covers the other UK ratings | known URL | ACCESSIBLE (the /about-classification paths returned 404)
13. TMDB API: Movie Certifications | https://developer.themoviedb.org/reference/certification-movie-list.md | API docs | `/3/certification/movie/list` gives each country's certifications with `meaning` and `order` (usable to show a plain-language rating explanation) | known URL; the .md version is advertised in the page's llms.txt note | ACCESSIBLE (doc updatedAt 2025-10-01)
14. TMDB API: TV Certifications | https://developer.themoviedb.org/reference/certifications-tv-list.md | API docs | Same as item 13, for TV rating systems (for example, US TV-14) | page sidebar | ACCESSIBLE
15. TMDB API: Movie Release Dates | https://developer.themoviedb.org/reference/movie-release-dates.md | API docs | Where a single film's certification lives: per country (`iso_3166_1`) and per release type, with `descriptors` and `note` (for example, "Netflix") | page sidebar | ACCESSIBLE
16. TMDB API: TV Content Ratings | https://developer.themoviedb.org/reference/tv-series-content-ratings.md | API docs | `/3/tv/{id}/content_ratings` gives a series' rating per country | page sidebar | ACCESSIBLE (doc updatedAt 2025-10-01)
17. IMDb Help: Parental Guide | https://help.imdb.com/article/contribution/titles/parental-guide/GF4KYKYJA4PKQB32 | official help/contribution guide | Explains that the Parents Guide is user-contributed, fact-only, and severity-voted (None/Mild/Moderate/Severe) | WebSearch | ACCESSIBLE
18. IMDb data dictionary: parentsGuide | https://data.imdb.com/documentation/bulk-data-documentation/data-dictionary/parentsGuide/ | licensed-data docs | Defines the 5 categories and median-vote severity; scene text is only in the paid "advanced" dataset | WebSearch (redirected from developer.imdb.com) | ACCESSIBLE
19. Common Sense Media: About our ratings | https://www.commonsensemedia.org/about-us/our-mission/about-our-ratings | independent reviewer methodology | Gives the youngest appropriate age, scores each content category 0–5 by expert reviewers, says it takes no influence from creators or funders, and adds a 1–5 star quality rating | known URL | ACCESSIBLE
20. Wikipedia: TV Parental Guidelines | https://en.wikipedia.org/wiki/TV_Parental_Guidelines | secondary/encyclopedic | History and context with citations; a cross-check only | known URL | ACCESSIBLE
21. Wikipedia: Motion Picture Association film rating system | https://en.wikipedia.org/wiki/Motion_Picture_Association_film_rating_system | secondary/encyclopedic | History of the MPA ratings, with citations; a cross-check only | known URL | ACCESSIBLE

### B. Anime demographics and genre/theme tags
22. AniList GraphQL MediaTagCollection | https://graphql.anilist.co (POST `{MediaTagCollection{name category description isAdult}}`) | official API (no key needed) | 430 tags with a description and category each, including a "Demographic" category (Shounen, Shoujo, Seinen, Josei, Kids); 67 tags are flagged isAdult | preflight hint | ACCESSIBLE (queried 2026-11-14)
23. AniList GraphQL GenreCollection | https://graphql.anilist.co (POST `{GenreCollection}`) | official API | Fixed list of 19 genres, separate from tags; "Hentai" and "Ecchi" are genres and need filtering | same | ACCESSIBLE
24. AniList API docs: MediaTag object | https://docs.anilist.co/reference/object/mediatag | API docs | Per-media tag fields `rank` (relevance out of 100), `isGeneralSpoiler`, `isMediaSpoiler`; needed to hide spoiler tags and weight tags | known URL | ACCESSIBLE
25. MyAnimeList "[Update Sep 15] Genres (and Themes!) Overhaul: Part 1 of 2" | https://myanimelist.net/forum/?topicid=1956762 | official announcement (MAL lead admin), 2021-09-15 | The source for MAL's three-part system: Genres (moderator-only), Themes (moderator- and user-voted), Tags (user-only). Demographics were split out from genres in this update | WebSearch lead, then opened | ACCESSIBLE
26. MyAnimeList anime search (genre/theme/demographic index) | https://myanimelist.net/anime.php | official taxonomy listing | Current lists of Genres, Explicit Genres (Ecchi, Erotica, Hentai), Themes, and Demographics (Josei, Kids, Seinen, Shoujo, Shounen), with title counts | known URL | ACCESSIBLE
27. MyAnimeList API v2 reference | https://myanimelist.net/apiconfig/references/api/v2 | official API docs | The anime `rating` field: g, pg, pg_13, r, r+, rx, with descriptions. These are MAL's own age ratings, not MPA ratings | known URL | ACCESSIBLE
28. Wikipedia: Shōnen manga | https://en.wikipedia.org/wiki/Shōnen_manga | encyclopedic (cited) | Defines shōnen as an editorial category that targets adolescent boys, traditionally published in dedicated magazines; notes the actual readership is much wider | known URL | ACCESSIBLE (last edited 2026-11-09)
29. Wikipedia: Shōjo manga | https://en.wikipedia.org/wiki/Shōjo_manga | encyclopedic (cited) | Editorial category for adolescent girls and young women, published in dedicated magazines | known URL | ACCESSIBLE (last edited 2026-11-14)
30. Wikipedia: Seinen manga | https://en.wikipedia.org/wiki/Seinen_manga | encyclopedic (cited) | Editorial category marketed to young adult men; emerged in the late 1960s | known URL | ACCESSIBLE (last edited 2026-10-15)
31. Wikipedia: Josei manga | https://en.wikipedia.org/wiki/Josei_manga | encyclopedic (cited) | Editorial category for adult women; emerged in the 1980s; the line between shōjo and josei is "often tenuous" | known URL | ACCESSIBLE (last edited 2026-10-10)
32. Wikipedia: Children's anime and manga (kodomo) | https://en.wikipedia.org/wiki/Kodomo_manga | encyclopedic | Kodomo/children's category; names CoroCoro Comic and other children's magazines | known URL | ACCESSIBLE (but carries a "needs more citations" banner; weak)
33. Wikipedia: Iyashikei | https://en.wikipedia.org/wiki/Iyashikei | encyclopedic (cited) | "Healing" sub-genre of slice of life, emerged in 1995 | known URL | ACCESSIBLE (last edited 2026-11-06)
34. Wikipedia: Isekai | https://en.wikipedia.org/wiki/Isekai | encyclopedic (cited) | Definition of isekai (transported to another world) and of reverse isekai | known URL | ACCESSIBLE (last edited 2026-10-22)
35. Cho, Disher, Lee, Keating & Lee, "Facet Analysis of Anime Genres" (Knowledge Organization 45(6), 2018) | https://www.imrpress.com/journal/ko/45/6/10.5771/0943-7444-2018-6-484 (DOI 10.5771/0943-7444-2018-6-484) | peer-reviewed academic, UW iSchool GAMER Lab | Facet analysis of anime genre terms from 36 English-language databases and sites; finds genre terms are ambiguous and used inconsistently, which hurts search and recommendations | WebSearch | ACCESSIBLE (pre-2022, but the core academic source)

## Key facts noted
- MPA ratings (https://www.motionpictures.org/film-ratings/): G = General Audiences; PG = "Parental Guidance Suggested. May contain some material parents might not like for their young children"; PG-13 = "Parents Strongly Cautioned… Some material may be inappropriate for pre-teenagers"; R = "Restricted. Contains some adult material…"; NC-17 = "No One 17 and Under Admitted. Clearly adult."
- Every PG, PG-13, R and NC-17 rating since 1990 has had a film-specific descriptor. The descriptor categories are Violence, Action, Language, Sex, Nudity, Drugs, Smoking, Theme and Other (https://www.filmratings.com/ratings-guide/).
- MPA raters are current parents (when a rater joins, they must have a child aged 5 to 15). Ratings are voluntary. MPA members submit every theatrically released film; "most streamers" submit feature films; MPA does not rate TV (https://www.filmratings.com/resources-faq/).
- The TV Parental Guidelines (http://www.tvguidelines.org/resources/TheRatings.pdf):
  - Levels: TV-Y (all children, ages 2–6); TV-Y7 (age 7 and up); TV-Y7-FV (more intense fantasy violence); TV-G (general audience); TV-PG (parental guidance suggested); TV-14 (unsuitable under 14); TV-MA (adults, may be unsuitable under 17).
  - Descriptors: D = suggestive dialogue, L = coarse language, S = sexual situations, V = violence, FV = fantasy violence (children's programming only).
- TV ratings apply episode by episode, and the same show can carry different ratings depending on the edit, channel and time slot. News and sports are exempt, and most home shopping and religious programming carries no rating (http://www.tvguidelines.org/ratings.html, http://www.tvguidelines.org/faqs.html). Implication: a series-level TV rating is only an approximation.
- The Monitoring Board has a chair, 18 industry members appointed by NAB, NCTA and MPA, and 5 public-interest members. It reviews complaints and usually meets annually (http://www.tvguidelines.org/aboutUs.html).
- ESRB levels: E, E10+, T (13+), M (17+), AO (18+), plus Rating Pending. Boxed games are rated by consensus of at least 3 raters whose identities are confidential; digital-only games are rated through IARC (https://www.esrb.org/ratings-guide/, https://www.esrb.org/faqs/).
- PEGI: 3/7/12/16/18. PEGI 16 applies when violence or sexual activity "looks the same as would be expected in real life." The "Fear" descriptor appears at PEGI 7 and "Horror" at higher ratings (https://pegi.info/what-do-the-labels-mean).
- BBFC 15: no one under 15 may see it in a cinema or rent or buy it; strong language is allowed (https://www.bbfc.co.uk/rating/15).
- TMDB:
  - Certifications come per country and per release type. The example for movie 550 shows US "R" on type 3 (theatrical) and France entries split by note ("Netflix", "Prime Video", "DVD").
  - The certification list endpoints return a `meaning` and an `order` for each rating, which is useful for plain-language display and for "max rating" filters.
  - Calls need a bearer token: the API returned 401 without one (https://developer.themoviedb.org/reference/movie-release-dates.md, https://developer.themoviedb.org/reference/certification-movie-list.md).
- IMDb Parents Guide:
  - It is user-contributed and limited to facts, in five categories: Sex & Nudity, Violence & Gore, Profanity, Alcohol/Drugs/Smoking, and Frightening & Intense Scenes.
  - Severity (None/Mild/Moderate/Severe) is the median of user votes.
  - Scene text is only in the advanced (licensed) dataset (https://data.imdb.com/documentation/bulk-data-documentation/data-dictionary/parentsGuide/, https://help.imdb.com/article/contribution/titles/parental-guide/GF4KYKYJA4PKQB32).
- Common Sense Media gives a youngest-appropriate age plus 0–5 dot scores per content category, written by expert reviewers who are not influenced by creators or funders (https://www.commonsensemedia.org/about-us/our-mission/about-our-ratings). Limit: it is editorial opinion, not an official rating.
- Demographics are editorial and marketing categories set by the magazine that runs the manga. They are not content or age ratings. Shōnen is "traditionally published in dedicated manga magazines," and its actual readership "extends significantly beyond" the target group (https://en.wikipedia.org/wiki/Shōnen_manga). The same holds for shōjo (https://en.wikipedia.org/wiki/Shōjo_manga). Josei and shōjo overlap (https://en.wikipedia.org/wiki/Josei_manga). Implication: an anime-original title may have no demographic, and the recommender should never treat a demographic as a maturity rating.
- AniList stores demographics as tags in the "Demographic" category. Descriptions: Shounen = "teenage and young adult males"; Shoujo = "teenage and young adult females"; Seinen = "adult males"; Josei = "adult females"; Kids = "young children".
  - Isekai = "a character from a modern-day setting being transported into an alternate world."
  - Iyashikei = "Primary aim is to heal the audience through serene depictions of characters' daily lives."
  - There are 430 tags, 67 of them isAdult. There are 19 genres, separate from tags. Per-media tags carry `rank` and spoiler flags (graphql.anilist.co, https://docs.anilist.co/reference/object/mediatag).
- MyAnimeList (2021-09-15 overhaul) split Demographics and Themes away from Genres. Today it lists:
  - Genres, for example Action, Award Winning, Boys Love, Girls Love, Gourmet, Suspense.
  - Explicit Genres: Ecchi, Erotica, Hentai.
  - Themes, for example Isekai, Iyashikei, CGDCT, Gore, Reincarnation, Villainess.
  - Demographics: Josei, Kids, Seinen, Shoujo, Shounen.
  - Sources: https://myanimelist.net/forum/?topicid=1956762, https://myanimelist.net/anime.php
- MAL's own age rating field takes g (All Ages), pg (Children), pg_13 (Teens 13+), r (17+, violence and profanity), r+ (profanity and mild nudity), and rx (Hentai). It is not an MPA or TV rating and should be labelled as "MAL rating" (https://myanimelist.net/apiconfig/references/api/v2).
- Cho et al. (2018) found that anime genre terms are ambiguous and used inconsistently across 36 databases, which makes search and recommendation harder. This supports showing the source (AniList tag vs. MAL theme) for every genre label (https://www.imrpress.com/journal/ko/45/6/10.5771/0943-7444-2018-6-484).

## Excluded
- FCC V-chip pages: https://www.fcc.gov/vchip and https://www.fcc.gov/consumers/guides/v-chip-putting-restrictions-what-your-children-watch | BLOCKED (HTTP 403, both user agents). The tvguidelines.org FAQ covers the V-chip instead.
- Kids-In-Mind: https://kids-in-mind.com/ and /about.htm | BLOCKED (HTTP 403).
- DoesTheDogDie: https://www.doesthedogdie.com/ and /about | BLOCKED (HTTP 403). Its method was not verified.
- filmratings.com rules PDF: https://www.filmratings.com/Content/Downloads/rating-rules.pdf | DEAD (404).
- tvguidelines.org/monitoringboard.html | DEAD (404). The aboutUs.html page has the Monitoring Board content.
- BBFC /about-classification, /about-us/about-classification, /about-us/classification-guidelines | DEAD (404). The /rating/15 page was used instead.
- IMDb help URL GF4KZTUBHKDLJ5R7 | DEAD (404). The working URL is GF4KYKYJA4PKQB32.
- TMDB live API https://api.themoviedb.org/3/certification/movie/list | LOGIN (401, needs an API key). The docs were used instead.
- Jikan API https://api.jikan.moe/v4/genres/anime | BLOCKED (connection reset). The docs page at https://docs.api.jikan.moe/ loaded only a JavaScript shell with no content, so it is not counted.
- Anime News Network encyclopedia, AniDB, Kitsu, reddit, github.com HTML | BLOCKED (403 at preflight). Not retried.
- MAL "Genres/Themes System Change Log" (Oct 2024), mentioned in a search result | not located or opened, so not counted.
- arXiv 2406.16961 (anime popularity prediction) | ACCESSIBLE but off-topic (no genre taxonomy). The arXiv API search for anime + genre found no relevant 2022+ paper on anime genre ontologies.
- A dedicated GAMER Lab anime metadata schema | not found. Only the 2018 facet-analysis paper (item 35) and the group's video-game schema turned up.
