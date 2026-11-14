# NOTES — media-recommender-appeal-factors (Top 30 research)
Run date: 2026-11-14 · Prompt: prompts/claude/Top30_Resource_Research_Prompt_v3.txt

## Scope
- Topic: Readers' advisory and appeal factors across media: how librarians and experts match people to books, films, TV, anime, manga, and video games by pacing, tone, characterization, story, and setting (cross-media "whole collection" advisory).
- Audience: adults · Recency: any (classic methods OK) plus 2018+ · Language: English · Region: any.
- Purpose downstream: a personal show/movie/anime recommender in Claude Code that matches on appeal factors across media.
- Topic given by the run instructions, so the "ask for the topic" step was skipped.

## Weights
Default weights used (Relevance 20, Reliability 20, Authority 15, Depth 15, Accuracy 10, Practical 10, Currentness 5, Community 5). No change: the topic mixes classic methods (any date) with 2018+ work, so currentness stays low-weight.

## Selection adjustments (recorded for transparency)
- Dedupe rule, one entry per toolkit or series: the Ontario Library Association RA toolkit has several sections. Only the "Readers' Advisory Conversation" section is listed (S10). "Collection Knowledge" (6.95) and "Reader Development" (6.75) are near-misses for that reason, though they scored above ranks 29–30.
- Diversity rule: ranks 29 (NPR on Netflix microgenres, 6.5) and 30 (LibraryPass on comics and manga, 6.4) were kept over two higher-scoring near-misses:
  - Thakare & Kumbhar (6.7): a bibliometric study of the RUSQ column.
  - Mysore et al. (6.6): LLM narrative-driven recommendation for travel points of interest, a better fit for topic 2.
  - Reason: NPR is the only accessible source on how a streaming service tags films (the Atlantic original was blocked), and LibraryPass is the only current (2026) practice source on manga advisory.
- The final list is ordered by weighted score.

## Access preflight (categories, 2026-11-14)
| Category | Test hosts | Result |
|---|---|---|
| Official/primary (ALA, EBSCO/NoveList, OCLC, library associations) | ala.org, about.ebsco.com, oclc.org, accessola.com | OPEN |
| Academic journals / OA repositories | journals.ala.org, arxiv.org, ceur-ws.org, vbn.aau.dk, ojs.library.ubc.ca, imrpress | OPEN |
| Academic publishers (paywalled) | tandfonline, Wiley, Emerald, ACM DL | BLOCKED/PAYWALL |
| UW institutional repository | digital.lib.washington.edu | BLOCKED (403) |
| Communities: Reddit | reddit.com, old.reddit.com | BLOCKED (403) |
| Communities: other | news.ycombinator.com, goodreads.com | OPEN (no strong topic material found) |
| Fan/tag wikis | tvtropes.org, wiki.anidb.net, anime-planet.com | BLOCKED (403) |
| Media/journalism | npr.org, libraryjournal.com stories, americanlibrariesmagazine.org | OPEN (LJ homepage 403, but story pages open) |
| Video/slides | youtube.com OPEN; slideshare.net BLOCKED (bot check) | MIXED |
| Archives | web.archive.org | BLOCKED (timeout) |
| Industry research (gaming) | quanticfoundry.com | BLOCKED (403) |
Workarounds:
- Reddit: two peer-reviewed studies of r/ifyoulikeblank (S6, S7) stand in for the blocked community data.
- Atlantic: the NPR interview with the same reporter stands in for the paywalled Netflix article.
- Anime forum study: an open abstract record stands in for the paywalled Emerald full text.

## Excluded-source log (not described, not listed)
See SCORED_CANDIDATES.csv rows marked "excluded". Summary:
- BLOCKED 403: Reddit, TV Tropes, Quantic Foundry (3 URLs), StoryGraph, AniDB, Anime-Planet, The Atlantic, ACM DL, UW ResearchWorks (Cho dissertation), Toledo Library, NoveList webcast page, tandfonline.
- BLOCKED (bot check): ISMIR 2015 Music Genome paper, SlideShare viewers' advisory decks, Everand.
- PAYWALL/LOGIN: Lee et al. 2017 ASIS&T cross-media appeals (Wiley), Dali 2014 Library Quarterly, Booklist manga RA article (Gale), Cho et al. 2018 JD full text (Emerald).
- DEAD (404, timeout, or redirect): KDLA appeal slides, WMRL Saricks article, Lawrence PL "four doorways", NOLS doorways, Game Developer motivation chart (redirected to a category page), bepress SelectedWorks (retired), games.ala.org, rusaupdate.org Listen List, ifyoulike.com, web.archive.org.
- Off-topic: RUSQ "Literary Resources: A Pathfinder".

## Community findings (anecdotal; reputation, not accuracy)
- Community material comes through research on the communities, not from the forums themselves (Reddit was blocked).
- S6 (Bhuiyan et al.) and S7 (Cao & Bogers) study r/ifyoulikeblank:
  - people ask humans for cross-media recommendations, seeded with example items;
  - they get many replies per thread.
- S19 (Cho et al.) studies the Anime News Network forums: anime fans most often ask by example work, theme, genre, and audience.
- Practitioner sources repeat the same practice advice: start from what the person enjoyed, then translate it across formats. Examples: NoveList blogs (S22, S23, S25), the American Libraries 2026 panel (S15), and LibraryPass (S30). This is experience, not proof.
- Saricks/Wyatt and NoveList are cited again and again as the field's reference points (S1, S4, S20, S21). That signals reputation, not tested accuracy.

## Disagreements noted between sources
- Number and names of appeal factors:
  - Saricks/Wyatt (S1): pacing, characterization, story line, frame/setting, tone/mood, language/style.
  - NoveList before 2024 (S14, S4): four groups (storyline, pace, tone, writing style).
  - NoveList from 2024 (S9): Mood replaces Tone, Style replaces Writing Style and absorbs Pace, and Character becomes Characterization.
  - Nancy Pearl's four "doorways" (story, character, setting, language) appear only second-hand, because the pages were dead.
- Book appeal vs. reader context:
  - Ferri (S26) and Dali (paywalled, cited via Ferri) argue that appeal factors describe the material and miss the reader's experience and context.
  - Saricks/Wyatt and NoveList treat appeal as the feel of the reading experience.
- Game appeals:
  - Lee et al. (S2) found game-specific appeals beyond the book factors.
  - Practitioner blogs (S25) map game genres straight to book genres.
- Topic 1 searches found no single standard film or TV appeal framework. Film and TV advisory is mostly an adaptation of the book factors (S8, S18).

## Omission check
- Final searches covered: viewers' advisory 2019–2023, Booklist/Saricks audiobook columns, manga and graphic-novel advisory, StoryGraph mood tags, AniList tags, Music Genome Project, Netflix altgenres, emotional arcs, and narrative-driven recommendation.
- New finds were checked and scored: Reagan et al., Bhuiyan et al., Eberhard et al., and the VGMS visual style vocabulary.
- Two extra replacement rounds were not needed, because 30 accessible sources met the bar.
