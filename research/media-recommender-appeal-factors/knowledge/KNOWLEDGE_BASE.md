# KNOWLEDGE BASE: Readers' advisory and appeal factors across media
Topic slug: media-recommender-appeal-factors · Built 2026-11-14 from 30 sources (see SOURCES.md) · Purpose: building a personal show/movie/anime recommender in Claude Code that matches on appeal factors across media.

Evidence labels:
- **Doc**: Documented (official or primary source).
- **Res**: Research (peer-reviewed or academic).
- **Rep**: Reported (secondary, practitioner, or journalistic).
- **Inf**: Inferred (my synthesis).

Citations are [S#]. Per-source notes are in sources/S#.md.

---

## 1. Topic overview
- **Readers' advisory (RA)** is the library practice of matching people to works they will enjoy. Its goal is to help people "discover titles they are currently in the mood to read," which is a current state, not a fixed taste (Doc) [S1].
- Since 1989, RA has matched people on **appeal**, the felt experience of a work, rather than on its subject or genre (Rep) [S20, S21, S26].
  - Typical appeal terms: pacing, characterization, story line, frame/setting, tone/mood, style.
  - Appeal is "a feeling taxonomy": it classifies with adjectives (fast, bleak, intricate), not nouns (horses, ships) (Rep) [S21].
- **Whole-collection or cross-media advisory** applies the same idea across formats. The appeal of genre works is "not limited by media format" (Doc) [S1]. Appeal "can be applied to the entire collection, regardless of format" (Doc) [S10].
  - Formats covered: books, film, TV, audiobooks, games, graphic novels and manga, music (Doc/Rep) [S1, S8, S18, S27].
  - Research confirms that people describe what they like across media in shared terms: mood, theme, setting, complexity, character (Res) [S3].
- **Why it matters for a recommender:**
  - Topic and genre metadata alone limit recommendation quality (Res) [S3].
  - Mainstream platforms (IMDb, Spotify, Steam, Amazon Books) support few of the dimensions people actually ask for, and none support cross-media queries (Res) [S6].
  - Appeal is the missing layer.

## 2. Core concepts and glossary
- **Appeal / appeal factors:** the elements of a work people respond to.
  - RA definition: the "feel" of a book (Doc) [S22].
  - Cross-media research definition: "elements of media that draw people in by evoking certain emotional and intellectual experiences" (Res) [S2].
- **Saricks's six factors:** pacing, characterization, story line, frame/setting, tone/mood, language/style (Doc) [S1, S14].
  - The 1989 original had four: pacing, characterization, story line, frame (Rep) [S20, S21].
- **Pacing:** the rate at which the story unfolds. It is only an "active" appeal at the extremes (fast or leisurely), so nobody asks for "medium-paced" (Doc) [S4, S14].
  - NoveList's three pace terms: Fast-paced, Intensifying, Leisurely paced (Doc) [S4].
  - Pacing devices in thrillers: on-page clocks, narrow time frames, short chapters, alternating points of view, cliffhangers, twists (Doc) [S1].
  - White space (dialogue density) is a quick cue for pace (Rep) [S20].
- **Story line:** how the story is told, not a plot summary. Covers story- vs. character-driven, point of view, treatment of subject, and amount of dialogue (Rep) [S20].
  - NoveList terms: action-packed, character-driven, intricately plotted, nonlinear, open-ended, world-building (Doc) [S4].
- **Characterization:** character types and how people relate to them (Doc/Rep) [S4, S21].
  - Terms: flawed, likeable, unlikeable, sympathetic, brooding, quirky, snarky, large cast, character duos (Doc) [S4].
  - NoveList 2024 merged Relatable into Sympathetic (Doc) [S9].
- **Frame / setting:** in RA this means background plus mood, **not geographic place**. A NYC or Dallas romance reads the same way, and "setting really meant mood" (Rep) [S20]. NoveList folds setting into tone ("Atmospheric," "Strong sense of place") and adds location as a subject (Doc) [S4, S14].
  - Viewers may care more about setting: in film it is "almost a character unto itself" (Rep) [S8].
  - Cross-media users describe setting as our world, an imaginary world, or an alternate world (Res) [S3].
- **Tone / mood:** "the feeling that a book evokes in the reader." It best answers "What are you in the mood for?" (Doc) [S4].
  - In 2024 NoveList renamed Tone to **Mood** (Doc) [S9].
  - Two senses of mood: the mood a work expresses, and the emotional state a user wants to reach (Res) [S3, S5].
- **Style:** language and detail (lyrical, spare, witty, richly detailed, banter-filled) (Doc) [S4].
  - Since 2024, NoveList's Style category also holds the pace terms (Doc) [S9].
- **Pearl's four doorways:** story, character, setting, language. Every book has all four in different sizes, and broad "sure bets" have all four large (Rep) [S10, S21].
- **Saricks's genre-appeal families:** groupings by shared underlying appeal, not interchangeable read-alike lists (Doc/Rep) [S1, S21].
  - Adrenaline: thrillers, adventure, suspense.
  - Intellect: mystery, SF, literary, psychological suspense.
  - Emotion: romance, relationship fiction, horror.
  - Landscape: fantasy, Westerns, historical.
- **Theme (trope):** a recurring plot element named in the community's language, such as enemies to lovers, time loop, or found footage. Many themes recur across genres (Doc) [S4, S22].
- **Non-appeal:** what a work lacks, or includes needlessly, and what a person dislikes. It is as informative as appeal (Rep) [S12].
- **Reading appeal (Dali):** appeal as a function of both the work and the reader's context and "anticipated effects." It shifts before, during, and after reading (Res, via Ferri) [S26].
- **Narrative-driven recommendation (NDR):** a free-text description of what is wanted plus example items (a "mini-profile"), often with context of use (Res) [S11, S7].
- **Watch-alikes / -arounds:**
  - Alikes share the anchor's core appeal; arounds connect on one facet (subject, a real-world model, costume, voice) (Rep) [S18].
  - The terms are not defined in the source; the distinction is inferred from how the entries are written (Inf).
- **Anime demographics** (kodomo, shōnen, shōjo, seinen, josei) are **audience labels, not genres**, and their use is inconsistent across databases (Res/Doc) [S5, S17].
- **Iyashikei ("healing"):** a mood genre where the audience feels soothed. Often slow, slice-of-life, small daily delights (Res) [S5].
- **Microgenre:** Netflix-style label = core genre + adjectives + frame such as era, place, or people (e.g., "Dark Road Trip Thrillers") (Rep) [S29].
- **Emotional arc:** the reader-perceived emotional trajectory of a story, distinct from plot. Six basic shapes recur (Res) [S24].

## 3. Key principles and frameworks
1. **Match the experience, not the subject.**
   - Surface matches fail. Rendell for Mary Higgins Clark fans (both have female detectives) and le Carré for Ludlum fans (both spy thrillers) miss on pacing and atmosphere (Rep) [S20].
   - Appeal is "not about subject" (Rep) [S21]. Matching on theme alone is a known mistake in game advisory (Rep) [S15].
2. **Most works are driven by one or two dominant appeals.** Find them by asking what you would emphasize when describing the work (Doc) [S10]. Factor importance also varies by genre: in adrenaline works, pacing comes first and "all else is secondary" (Doc) [S1].
3. **Cross genres and media by holding the dominant appeals constant and letting the rest vary.**
   - Pearl and Saricks both go from Lee Child to Westerns and SF by keeping hero type or pace (Rep) [S21].
   - Brooklyn works for Mrs. Maisel fans despite being "not as risqué or a comedy at all," because frame and character arc match (Rep) [S18].
4. **Appeals reveal similarities that genre hides.**
   - Puzzle and simulation games share "submission" (unwinding); strategy and action share "challenge" (Res) [S2].
   - Appeals therefore allow more diverse recommendations across genres (Res) [S2].
5. **A shared cross-media appeal core exists.**
   - Across books, film/TV, games, comics and manga, and music, users most often named mood (24), theme (23), setting (21), complexity (20), and character (16) (Res) [S3].
   - Complexity splits into intellectual complexity, structural complexity (non-linear, multiple points of view, stories within stories), and time commitment (Res) [S3].
6. **Each format adds its own facets** (Doc/Rep/Res).
   - Film: cinematography ≈ a book's language and tone, "the silent narrator." Who the viewer gravitates to (director, writer, actors) matters [S8].
   - Audio: narrator voice, performance, production, length [S4, S8, S10, S18].
   - Graphic novels and manga: art style, color vs. black-and-white, panel layout, image/text balance. Art carries pace and tone [S4, S10].
   - Games: sixteen appeals [S2]:
     - narrative, challenge, sensation, fellowship, nostalgia, fantasy;
     - exploration, mood, depth, creativity/innovation, expression;
     - accomplishment, competition, submission, mastery, learning.
   - Games also add interaction mode (cooperative vs. competitive) and role-play [S15].
   - Anime: nine facets [S5]: audience, setting, mood, character, plot/narrative, subjects, association with other works, feature, production.
7. **Combine genre + appeal + theme.**
   - No single heading is enough. NoveList combines them, e.g., "GN romance AND AP steamy AND TH marriage of convenience" (Doc) [S4].
   - Subject headings alone never surface "bleak, lyrical" matches (Doc) [S14].
8. **Facets beat hierarchies for multi-genre works.**
   - A romantic comedy = Mood: Comedy + Plot: Romance (Res) [S5].
   - Facets are extensible and allow several labels per aspect (Res) [S5].
9. **Avoidance is a first-class signal.**
   - Some users name moods to avoid more easily than moods to seek (Res) [S3].
   - Dislikes define appeal: pacing was discovered through le Carré fans' dislike of Ludlum (Rep) [S12, S20].
   - Requests routinely include "not like this" examples and "lacking X" phrasing (Res) [S6, S7, S16].
   - Content tolerances (violence, sex, language) are limiting factors (Doc/Rep) [S8, S10].
10. **Context changes the right answer.** Mood, life events, time and money budget, company, and the purpose of the session (enjoy vs. discuss) all matter (Res/Rep) [S3, S6, S12, S26].
11. **Translate the person's words into appeal terms.** People say "couldn't put it down," not "fast-paced," and the advisor translates (Doc) [S10]. Users now say "vibes," "catnip," and "tropes" (Rep) [S27].

## 4. Best practices and methods, step by step
**A. The advisory conversation (intake)** [S10, S4, S8, S1, S27]
1. Find out what kind of help is wanted: one pick, a factual answer, or "a barrage of possibilities" (Rep) [S8].
2. Ask open questions about something they enjoyed: "Tell me about a book (or film or audio recording) you have enjoyed… what you enjoyed about it." Avoid closed questions like "Do you like mysteries?" (Doc) [S10].
   - Ask which movies and TV shows they enjoyed, and what they are in the mood for today (Doc) [S4].
3. Use paired contrasts to locate taste: plot- vs. character-driven; fast vs. leisurely; "Amusing and upbeat, or creepy and gruesome?" (Doc) [S4]. Whichbook-style sliders between opposites do the same job (Doc) [S10].
4. Ask what they disliked and why, plus content limits for coarse language, sex, and violence (avoid / include / no preference) (Doc) [S10].
5. Ask about context and format (Doc/Res/Rep) [S6, S10, S18, S27]:
   - length or time budget, finished vs. ongoing series;
   - rewatch openness, watching alone or with others;
   - preferred format or platform.
6. Translate their words into appeal terms. Identify the one or two dominant appeals (Doc) [S10].

**B. Building suggestions** [S1, S4, S18, S21, S11]
1. Break the anchor title into appeal strands: tone, story pattern, frame/setting, character arc, style or creator signature, visual or sound pleasures (Rep) [S18].
2. Generate close matches that share the dominant appeals, and stretch picks across genres and media that share one or two of them (Rep/Doc) [S18, S21, S1].
3. Include "sure bets" that please both fans and newcomers, plus "expanding horizons" picks (Doc) [S1].
4. Describe candidates in audience language: review-like appeal words beat catalog metadata for matching free-text requests (Res) [S11]. Combine the narrative with example items. Expanding by author or creator alone drifts off-topic (Res) [S11].
5. Check exclusions and content limits before presenting (Doc) [S10].

**C. Presenting** [S10, S22, S30, S6]
1. Offer a range, not one answer, but don't overwhelm. Written lists run 5–8 titles (Doc) [S10].
2. For each pick, give a short appeal-language pitch and say why it was chosen, citing the person's own appeal factors (Doc) [S10, S22]. Model: "comforting and enchanting… set in North Carolina… a great feel-good book" (Doc) [S10].
3. Useful pitch frames (Rep) [S30, S6]:
   - "Come for…, stay for…";
   - "If you watched X";
   - honest caveats, e.g., "darkest game on this list, but… give it time."
4. Make rejection free and private (Doc) [S10].

**D. Follow-up and learning** [S10, S27, S6]
1. Ask what worked and what didn't, using appeal-focused questions (Doc) [S10].
2. Expect refinement turns: criteria get added after a mismatch, and long threads are often incremental refinement or debates over fit (Res) [S6].

**E. Tagging a title** (if building metadata) [S14, S4, S9, S2]
1. Tag only clear, positive appeals. Tag pace only at the extremes (Doc) [S4, S14].
2. Use one blunt term per concept and group synonyms (chilling, eerie, creepy) (Doc) [S14].
3. Avoid mood-dependent praise words like "satisfying," "compelling," "engaging" (Doc) [S9, S14].
4. Triangulate professional and audience reviews; critics contradict each other (Doc) [S14].
5. Use intensity scales for content:
   - romance heat: chaste → mildly sensuous → steamy → explicit;
   - horror: dread → gore (Doc) [S4].
6. For games, consider appeal proportions (e.g., 60% narrative, 20% exploration) (Res) [S2].

## 5. Examples and models worth copying
- **RA Crossroads (Mrs. Maisel)** [S18] (Rep):
  - The anchor is split into tone, story, period frame, creator wit, and costume.
  - Watch-alikes: Brooklyn (frame plus arc), 30 Rock (dialogue speed, cinematography, show business).
  - Watch-around: The West Wing "for viewers seeking a more fast-talking show."
  - Read-arounds: Vintage for fashion fans; a Joan Rivers book for the real-world model.
  - Listen-arounds chosen on narrator voice.
- **The Terror** (novel and TV) [S1] (Doc): the same work is pitched differently to horror, historical, literary, adventure, and TV audiences.
- **The Death of Mrs. Westaway** NoveList reading [S22] (Doc): genres (gothic + psychological suspense), theme, character, storyline (nonlinear), style, and tone are turned into a plain pitch.
- **Anime facet records** [S5] (Res):
  - Attack on Titan: Seinen; Apocalypse; Tragedy/Thriller/Horror/Suspense; Gekiga (plot)/Survival; War/Military; Swordplay.
  - Ristorante Paradiso: Josei; Restaurants; Iyashikei; Romance–Age gap/Slice of life.
- **Game-to-book mapping** [S25] (Doc):
  - FPS → adventure, survival, thriller.
  - RPG → world-building, lush fantasy.
  - Collection games → quirky, sweeping, large cast.
  - Puzzle/story → mysteries.
  - Retro → nostalgia themes.
- **Netflix microgenres** [S29] (Rep): 76,897 categories built from human ratings (romance, gore, quirkiness, plot resolution). The most common adjectives are romantic (5,272 categories), dark, suspenseful, gritty, feel-good, visually striking.
- **Cross-media "vibe" request** [S6] (Res): "lo-fi hip hop. Are there movies/TV shows that capture that vibe?" A place-feeling request: shows that make them "feel like I'm living in those places."

## 6. Common mistakes and how to avoid them
| Mistake | Why it fails | Fix | Sources |
|---|---|---|---|
| Matching on subject, genre, or plot alone | Misses pace and atmosphere; seekers say "idgaf about the plot" | Match dominant appeals; treat plot as one strand | S20, S6, S15, S21 |
| Treating setting as geography | Setting as appeal means mood and background | Encode atmosphere and "sense of place" as mood/style; keep location as a separate subject | S20, S14, S4 |
| Assuming content tolerance carries across media | Seeing or hearing can affect people more than reading, or less | Ask content limits per medium; use ratings and content notes | S8, S10 |
| Ignoring dislikes and "not like this" | Avoidance can matter as much as selection | Capture negative seeds and avoid-moods as hard filters | S3, S11, S12, S16 |
| Vague praise words ("compelling," "satisfying") | Reader-dependent, not descriptive | Use specific appeal terms | S9, S14 |
| Treating demographics (seinen, shōnen) as genres | They are audience labels, used inconsistently | Store as an audience facet; don't infer content from them | S5, S17 |
| Expanding by creator or author only | Topic drift; prolific creators vary | Use creator as one signal among appeals | S11 |
| Over-relying on popularity or collaborative filtering | Recommends popular items outside the actual need | Constrain to the stated narrative; diversify | S11, S6 |
| Asking closed questions | Limits what the person reveals | Open "tell me about…" prompts plus paired contrasts | S10, S4 |
| Advisor's own taste steering picks | "Derails our mission" | Separate what they want from what you think they should want | S12, S27 |
| LLM recency bias | LLM picks skew post-2000 | Ask for an era spread; verify titles | S13 |

## 7. Tools and resources: which source is best for what
- **Appeal definitions and the genre-appeal frame:** S1, S20, S21; vocabulary lists: S4, S9, S10.
- **Cross-media appeal research:** S3 (taxonomy of 19; mood, setting, complexity), S2 (16 game appeals with user terms).
- **Film, TV, and audio translation:** S8 (Williamson), S18 (worked example), S23 (TV fandom lists).
- **Anime and manga structure:** S5 (facets), S17 (format basics, demographics, adaptations), S19 (request features, abstract only), S30 (current practice).
- **How people actually ask:** S6, S7 (r/ifyoulikeblank), S16 (IMDB boards), S11 (LibraryThing NDR).
- **LLMs as recommenders:** S13.
- **Tagging and vocabulary design:** S14, S9, S4; game visual style: S28 (stub only).
- **Critique and reader context:** S26, S12, S27.
- **Signals beyond tags:** S24 (emotional arcs), S29 (Netflix adjective tagging).
- **Tools named inside sources:**
  - film and audio: IMDb Parents Guide content ratings 1–10, Rotten Tomatoes, AllMovie, Musicovery mood compass [S8];
  - games: BoardGameGeek and Dice Tower [S15];
  - anime: Anime News Network and Anime-Planet [S17].

## 8. Evidence strength
- **Strong:**
  - Appeal (experience) beats subject/genre as the basis for matching [S1, S3, S10, S14, S20, S21].
  - Mood/tone is the most central cross-media appeal [S3, S2, S4, S26].
  - Example items help recommendations [S7, S11, S16].
  - Dislikes and negative examples carry information [S3, S12, S16, S7].
  - Setting-as-appeal means atmosphere, not location [S20, S14, S4].
  - Format-specific facets are needed in addition to shared ones [S2, S4, S5, S8, S10].
- **Moderate:**
  - Complexity (intellectual, structural, time) as a cross-media facet [S3].
  - The sixteen game appeals [S2].
  - Anime facet model [S5].
  - Reader-language descriptions beat catalog metadata [S11].
  - LLMs beat older methods on narrative movie requests [S13].
  - Human recommendations barely overlap with Spotify's [S7].
- **Limited:**
  - Netflix microgenre construction (2014 journalism) [S29].
  - Practitioner game-to-book mappings [S25].
  - Viewer-specific claims such as setting mattering more in film, and male narrators being more popular [S8].
  - Anime feature frequencies (abstract only) [S19].
  - Emotional arcs as a recommendation feature (tested on books only, not for recommendation) [S24].
- **Contested:**
  - Whether appeal factors (material-centered) are enough vs. reader-context models [S26 vs. S1/S4/S14].
  - How many factors there are and what they are called [S1, S4, S9, S14, S21].
  - Whether humans recommend less-popular items than algorithms: S7 found the opposite, while S6 frames multi-example queries as a way to evade popularity bias.

## 9. Where sources disagree
- **Factor lists and names:**
  - Saricks: 4 factors in 1989, 6 later [S20, S1].
  - NoveList: 4 breakouts in 2013 [S14]; 7 categories with format-specific ones in 2021 [S4]; in 2024, Mood replaces Tone and pace moves into Style [S9].
  - Wyatt: 8 nonfiction factors [S14, S10]. Pearl: 4 doorways [S10, S21].
  - Cause: different purposes (training vs. cataloging vs. interface) and dates.
- **Frame:** "too reductive," to be split into description, language, settings, style, affect, mood, tone [S21], vs. retained as a factor [S1].
- **Book appeal vs. reading appeal:** Ferri and Dali say item-centered appeal misses reader context and "anticipated effects" [S26]. NoveList and Saricks/Wyatt build on item appeal while acknowledging the reader's response [S14, S1]. Cause: theory vs. practical retrieval.
- **Tagging negatives:** NoveList deliberately doesn't tag negative appeal [S14]. Bessman Taylor argues non-appeal is valuable to advisors [S12]. Cause: catalog record vs. conversation.
- **Popularity:** S7 found human Reddit picks *more* popular than Spotify's. S6 suggests multi-example queries could help "evade the popularity bias." Cause: different data (music seeds were mainstream).
- **Plot importance:** in IMDB requests, plot/topic was the most-named aspect (49.5%) [S16]. Reddit seekers often reject plot-based matches [S6], and RA practice puts experience over plot [S20]. Cause: explicit asks vs. underlying appeal.
- **Anime "seinen":** Crunchyroll, Anime-Planet, and MyAnimeList disagree on which titles are seinen [S5].

## 10. Gaps
- No source gives a validated, tested cross-media appeal vocabulary. S3 proposed one as future work; S28's game visual-style terms were not on the page read.
- The **TV-specific** literature is thin: episodic structure, bingeability, and series commitment appear only in passing [S18, S6].
- **Anime appeal from users** is mostly abstract-level [S19]. S17's advisory chapter and genre appendix were not in the sample.
- Little evidence on **how well appeal-based recommendations perform** for viewers. S11 and S13 measure accuracy on requests, not satisfaction.
- **Audio-visual signals** (cinematography, music, animation style) as computable features are untested here. Emotional arcs were measured on text only [S24].
- **Cross-cultural differences** (Japanese vs. English genre use) are only touched on [S5].
- **Content ratings systems** (MPA, TV Parental Guidelines) are not covered beyond IMDb's 2011 Parents Guide [S8]. Topic 3 of the plan addresses this.
- **LLM hallucination of titles** is not directly measured; S13 checks format, duplicates, and date constraints only. Topic 2 of the plan addresses this.

## 11. How to apply this when writing prompts on this topic
Rules a recommender prompt should build in:
1. **Intake like an advisor** [S10, S4, S8, S6]:
   - Ask open "tell me about something you loved and why" questions.
   - Ask for 2–5 seed titles across any media (seeds beat long prose) [S7].
   - Ask for current mood or desired feeling and anything to avoid.
   - Ask about practical context: time budget, finished vs. ongoing, solo or with others, rewatch.
   - Ask whether they want one pick or a list.
2. **Translate to an appeal profile.** Map the user's words ("couldn't stop watching," "cozy," "vibes") to: pacing; story (plot- vs. character-driven, structure/complexity); characterization; frame/setting (atmosphere, world type: our / imaginary / alternate); mood; style (dialogue, cinematography, art style, sound) [S10, S3, S27, S8].
   - Name the 1–2 dominant appeals and show the profile to the user for confirmation.
3. **Store dislikes as hard filters:** avoid-moods, negative seeds, content limits per medium [S3, S8, S12, S16].
4. **Match on dominant appeals, not genre or plot.**
   - Produce close matches (same dominant appeals, same medium).
   - Produce cross-media or "around" picks (one or two shared appeals, different medium or genre) [S18, S21, S2].
5. **Use format-specific facets:**
   - anime: audience demographic as audience only; mood, including iyashikei; production format [S5];
   - games: the sixteen appeals plus co-op vs. competitive [S2, S15];
   - audio: narrator; graphic: art style [S4].
6. **Explain every pick in appeal language,** citing the user's own profile. Use "Come for…, stay for…" or "Because you liked X's [appeal]" frames, plus honest caveats on content, length, and commitment [S10, S22, S30, S6].
7. **Use specific terms:** no vague praise words, and pace only when clearly fast or slow [S9, S14].
8. **Guard LLM failure modes** [S13]:
   - Verify that titles exist (with year and medium) and dedupe.
   - Counter recency bias by asking for an era spread.
   - Respect date and availability constraints.
   - Prefer plain, clear task prompts over elaborate personas.
9. **Learn from feedback:** after each round, ask which picks hit or missed and why, in appeal terms. Update the profile; expect refinement turns [S10, S6].
10. **Respect the person:** be non-judgmental about taste and guilty pleasures. Don't steer toward the "better" choice [S12, S27, S10].
11. **Mood is situational:** re-ask "what are you in the mood for today?" each session rather than assuming a fixed taste [S1, S26].
