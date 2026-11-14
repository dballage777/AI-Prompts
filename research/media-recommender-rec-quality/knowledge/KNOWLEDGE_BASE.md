# KNOWLEDGE BASE: How good recommendations work (recommendation quality)
Topic slug: media-recommender-rec-quality · Built 2026-11-14 from 30 sources (S1–S30, see SOURCES.md) · Per-source notes: sources/S#.md
Purpose: building a personal show/movie/anime recommender in Claude Code, where the LLM itself recommends through prompting.
Companion knowledge base: research/media-recommender-appeal-factors/knowledge/ (topic 1: *what* to match on, meaning appeal factors and cross-media advisory). This file covers *how* the recommender should behave.

Evidence labels: **Documented** (official/primary), **Research** (peer-reviewed/academic), **Reported** (secondary, journalistic, vendor, community), **Inferred** (synthesis by this knowledge base). Every point cites [S#].

---

## 1. Topic overview
- A good recommender does more than predict what you will click. It balances **relevance** with **beyond-accuracy** qualities: diversity, novelty, serendipity, calibration to your mix of tastes, explanations you can check, and controls you can use [S2, S3, S8, S10, S11, S24]. [Research/Documented]
- Accuracy alone produces narrow, obvious, popular-heavy lists. Ranking purely by predicted relevance crowds out a user's minor interests [S3]. Popular items dominate dot-product scoring [S10]. Niche-taste users are served worst [S28]. [Research/Documented]
- Satisfaction is driven mostly by perceived accuracy, trust and transparency (55% of the variance in satisfaction among 445 MovieLens users) [S8]. Diversity helps trust. Unexplained serendipity lowers it [S8]. [Research]
- LLMs change the picture. They can recommend zero-shot from a free-text taste description [S5, S6], explain fluently [S17, S19], and are competitive in cold start [S5, S9, S26]. They also bring new failure modes: hallucinated or invalid titles [S4, S6, S9, S22, S24, S25], position bias [S4, S9, S19], popularity and English-language bias [S6, S17], order-blindness to history [S4], and unfaithful explanations [S1, S14, S29]. [Research]
- Why it matters for a single-user recommender: the main harm is user-side, meaning obvious picks, repetitive lists, invented titles and wrong facts. Platform-wide fairness is a lesser concern [S2, S28]. [Inferred]

## 2. Core concepts and glossary
- **Personalization:** recommendations tailored to one user's preferences. At Netflix, good *matching* (targeting) explains far more of a recommendation's effect (41.9%) than mere exposure (6.8%) [S18]. [Research]
- **Candidate generation → scoring → re-ranking:** the standard pipeline. Generate hundreds of candidates from several sources, score them with one model, then re-rank for freshness, diversity, fairness and filters such as removing disliked items [S10]. [Documented]
- **Content-based filtering:** recommends items similar to what the user liked, by item features. It handles niche items and needs no other users, but "can only make recommendations based on existing interests of the user" [S10]. [Documented]
- **Collaborative filtering (CF):** uses similarities between users and items at once. It allows serendipity but has a cold-start problem with new items [S10]. LLMs carry weaker collaborative knowledge than trained CF [S6, S15]. [Documented/Research]
- **Explainable recommendation:** recommendations plus the reason ("why") [S1].
  - *Item-based*: "because you liked X". Usually more credible than "users like you liked this", since users know their own titles [S1].
  - *Feature-based*: genre, cast, tags.
  - *Aspect/opinion-based*.
  - *Template or generated sentences* [S1].
  - [Research]
- **Model-intrinsic vs post-hoc explanation:** an LLM's explanation is post-hoc by nature, so it can be persuasive without being faithful [S1, S11, S14]. [Research]
- **Explanation goals:** transparency, scrutability, trust, effectiveness, persuasiveness, efficiency, satisfaction, plus education and debugging [S1, S11, S14]. The goals can conflict: persuasiveness "does not care about whether the explanations can honestly reflect" the model [S14]. *Scrutability* means two things: "the user can tell the system it is wrong" [S11], or "the explanation matches the output" [S14]. [Research]
- **Diversity:** items in a list differ from one another. Measured as 1 − intra-list similarity [S21, S24]. [Documented/Research]
- **Novelty:** "not previously known to the user". Offline it is usually approximated by low popularity, −log2(popularity) [S2, S21]. [Research/Documented]
- **Serendipity:** relevance + novelty + unexpectedness, with eight operational variants [S20]. The best variant is "I would not have found it myself" [S20]. [Research]
- **Calibration:** a list's genre (or popularity) mix should match the user's own history mix. For example, 70% romance and 30% action history should give about 70/30 lists [S3, S12]. It is *personalized* diversification [S12]. [Research]
- **Popularity bias:** popular items are recommended more than their popularity warrants, to the point that this "limit[s] the value of the system or create[s] harm" [S2, S22]. It is measured per user as the gap between list popularity and history popularity (ΔGAP) [S28]. [Research]
- **Mainstreamness / personal popularity tendency:** users differ in their appetite for popular titles. More than 4,000 of 6,040 MovieLens users have at least 20% non-popular items [S28]. [Research]
- **Feedback loop / filter bubble:** recommendations shape behavior, which becomes training data, amplifying popularity and narrowing exposure [S13, S30]. [Research]
- **Cold start:** recommending for new users or items with little or no history. The survey's taxonomy has nine types in four groups (long-tail, normal, strict, system zero-/few-shot) [S16]. [Research]
- **Conversational recommender system (CRS):** "a software system that supports its users in achieving recommendation-related goals through a multi-turn dialogue" [S7]. [Research]
- **Hallucinated / invalid / out-of-corpus items:** LLM outputs that match no real catalog item, or that rename or misspell one [S9, S15, S19, S24]. **Grounding** maps generated text to real items [S15, S27]. [Research]
- **Position bias (LLM):** the order of candidates in the prompt changes the ranking. LLMs mostly favor early positions [S4, S9]. [Research]
- **Language-based user profile:** a short natural-language summary of a user's tastes that an LLM reasons from. It is readable and editable, and edits causally change the recommendations [S5, S26]. [Research]

## 3. Key principles and frameworks
1. **Accuracy is necessary, not sufficient.**
   - Accuracy has the strongest effect on satisfaction (β 0.622) [S8].
   - Lists without diversity feel "bad or boring" [S10].
   - Deep models that maximized novelty lost on trust [S8].
   - [Research/Documented]
2. **Calibrate to the person, not to a fixed diversity target.**
   - Calibration keeps each of the user's interests represented in proportion [S3, S12].
   - Plain diversity would push a 70/30 user toward 50/50 [S3].
   - Calibration to past interests alone keeps a user in the bubble, so blend in a small prior toward genres outside the history [S3].
   - [Research]
3. **Popularity is a double-edged sword.**
   - It reflects quality and helps cold start [S2, S13]. Netflix adds "a healthy dose of (unpersonalized) popularity" [S2].
   - Overdone, it gives obvious, non-novel, poorly personalized lists [S2, S28].
   - Popularity-based ranking at Netflix would cut engagement 12% and raise concentration 42.5% [S18].
   - The right amount is user- and domain-specific [S2, S22].
   - [Research]
4. **Serendipity broadens taste.** Aim for "would not have found it alone", not "didn't expect to like it" [S20].
   - Serendipitous films broadened preferences without lowering satisfaction relative to relevant non-serendipitous films [S20].
   - "Unexpected to be relevant" lowered satisfaction [S20].
   - Unexplained serendipity lowers trust [S8].
   - [Research]
5. **Explanations must be specific, true and personal.**
   - Contextualized explanations that cite the user's actual history raised trust, transparency and intent to watch. Generic LLM blurbs gave *lower* intent to watch than no explanation [S29].
   - Feature-based explanations best helped people predict their own enjoyment. "N users rated this 4+" made them overestimate [S11].
   - Name the specific source, and avoid vague "and more" labels [S23].
   - [Research/Reported]
6. **Give users control and act on negative feedback immediately.**
   - Users expect a dislike to change the next list at once, and they generalize it to the item's category [S23].
   - Few use buried control pages: on Amazon only 20% knew of the page and about 8% had used it. Make controls visible and add undo [S11].
   - [Reported/Research]
7. **Converse with mixed initiative.**
   - Support the full set of intents: provide or revise preferences, ask for recommendations, ask why, get details, give feedback, restart [S7].
   - Users construct preferences during the conversation [S7].
   - Longer conversations went with lower satisfaction [S17].
   - [Research]
8. **LLMs recommend from content and context, not co-watch statistics.**
   - Removing the conversation text cut Recall@5 by more than 60%. Removing the titles cut it by less than 10% [S6].
   - LLMs absorb little popularity or collaborative signal [S15].
   - So the rich taste description is the main input [S5, S6, S19].
   - [Research]
9. **Ground every generated title.**
   - Generate, then map each title to a real catalog item [S15]. Or rank only a supplied candidate list [S4, S9]. Or filter generated titles against a catalog, as Google's CALRec does [S27].
   - The grounding method matters: BM25 on short titles nearly failed in one study [S15] but worked in another [S9]. Embeddings are generally best [S9].
   - [Research/Reported]
10. **What you optimize is what you get (the "mischievous genie").**
    - Optimizing clicks produces click-bait, and optimizing watch time produces overly long videos [S10].
    - Optimizing only consumption narrowed each user's variety on Spotify (entropy −11.51%) even as streams rose 28.9% [S30].
    - [Documented/Research]

## 4. Best practices and methods, step by step
**A. Intake (cold start) [S5, S7, S16, S17, S26, S29]**
1. Ask for a short free-text description of what the user loves and why (tone, themes, pacing). In S5 a description took about 1 minute, 3–4× faster than picking 5 titles, and performed as well as trained CF [S5]. [Research]
2. Ask for 3–5 loved titles and a few disliked ones, plus the current mood or occasion. User-provided context was the main positive predictor of satisfaction, personalization and diversity [S17]. [Research]
3. Treat dislikes as **filters**, not as the main signal. Dislikes alone performed at popularity level [S5]. [Research]
4. Ask once how much novelty or variety the user wants ("comfort mode" vs "surprise me") and let them change it per session [S8, S12]. [Research/Inferred]
5. With no history, popularity is a hard baseline [S5]. Popular-but-matched anchors are acceptable early on [S2]. [Research]

**B. Keep a taste profile [S5, S7, S23, S26]**
6. Store an editable natural-language profile of about 50–150 words: likes *with reasons*, dislikes with reasons, avoid-list, seen-list. Profile length from 50 to 200 words barely mattered [S26]. [Research]
7. Keep long-term taste separate from today's mood, and say which wins [S7]. [Research/Inferred]
8. Don't let the LLM invent profile facts. Users lost trust when it misstated their history ("It claimed that I recently disliked the Matrix… I liked it") [S17]. LLMs over-read implicit viewing history [S29]. [Research]
9. "Not watched" ≠ "disliked", because exposure bias shapes what was seen [S13]. [Research]

**C. Build candidates from several sources [S9, S10, S24, S27]**
10. Generate a larger pool than you will show, from several "generators": close matches to recent favorites, same creator or studio, adjacent genres, era or format variety, one wildcard [S10]. [Documented/Inferred]
11. Feed the 5–10 most recent or most representative titles plus the profile, not the whole history. LLMs ignore history order and peak with fewer than 10 history items, and long dumps hurt [S4, S9]. Add a "most recently watched / current mood" line [S4]. [Research]

**D. Rank and re-rank [S3, S4, S9, S12, S24]**
12. If ranking a candidate list, shuffle candidate order and rank 2–3 times, then merge. This counters position bias (bootstrapping) [S4, S19]. Or order candidates by a prior relevance rank [S9]. [Research]
13. Re-rank greedily for calibration: the top slots follow relevance most, and later slots fill the user's lesser interests. Raising λ gradually keeps the top near the accuracy ranking [S3]. [Research]
14. Define diversity concretely (for example, at most 2 per genre, a mix of eras and formats). LLMs do not follow a vague "maximize diversity" reliably [S24]. [Research]
15. Target a popularity mix that matches the user's own mainstreamness. "Match my popularity level" was safer than "avoid mainstream", which collapsed accuracy and raised invalid titles [S22]. [Research]
16. Apply a policy layer: drop seen, disliked and duplicate titles, and limit repeats of the same franchise. Zalando-style rules include no two same-brand items back to back and exploration slots [S27, S10]. [Reported/Documented]

**E. Explain [S1, S11, S14, S23, S29]**
17. Each pick gets 1–3 real titles from the user's history plus a true, concrete shared feature (tone, theme, character type, pacing). More history references helped slightly, but long explanations felt redundant [S29]. [Research]
18. Keep explanations short and spoiler-light. Label stretch or "deep cut" picks so a miss does not damage trust in the whole list [S2, S8, S20]. [Research/Inferred]
19. Optionally add a short "why you might not like it" note. User studies cited in S1 found that giving both recommendation and dis-recommendation explanations improves persuasiveness and conversion [S1]. [Research]
20. Faithfulness check: would the pick still be made without the cited X? (the "probability of necessity" idea [S14]). [Research/Inferred]

**F. Verify facts [S6, S9, S15, S22, S24, S25]**
21. Resolve every title to a real entry: title + year + type (+ studio or season for anime). Catch same-title confusion and invented titles [S16, S25]. [Research/Reported]
22. Treat hard facts as high-risk unless looked up: season and episode counts, air dates, runtimes, IDs, streaming availability. Genre, type and descriptions are low risk [S25]. Be extra careful with new releases and niche titles [S25, S16]. [Reported]
23. Flag uncertainty for titles near or after the model's knowledge cutoff [S16, S25]. [Research/Reported]

**G. Feedback loop [S7, S11, S13, S23]**
24. After each round, ask for quick feedback ("seen it", "not for me because…", "more like #3"). Apply it in the very next turn and widen negatives to the attribute level [S23]. Update the profile file [S11, S26]. [Reported/Research]
25. Keep one labeled exploration slot per batch. This is a bandit-style guard against the filter bubble [S13, S20]. [Research/Inferred]

## 5. Examples and models worth copying
- **Steck's 70/30 calibration example and greedy MMR-style re-rank** [S3]. On MovieLens-20M, miscalibration C_KL@10 fell from 0.677 to 0.054 while recall@50 stayed about 0.46 up to λ 0.9 [S3]. [Research]
- **S17 system prompt rules:** explain why each pick fits; at most 5 picks unless asked; predicted 1–5 rating; popularity label High/Medium/Low; skip movies already rated [S17]. [Research]
- **S29 explanation format:** "Title – Release Year – Director", a plot summary of 40 words or fewer, an explanation of 100 words or fewer focused on concrete aspects. All titles cross-checked against IMDb [S29]. [Research]
- **S4 recency prompt:** "Note that my most recently watched movie is …" plus 3× shuffled bootstrapped ranking [S4]. [Research]
- **S5 zero-shot template:** "I describe the movies I like as follows: … Then I would also like ⟨item⟩" [S5]. [Research]
- **S6 prompt skeleton:** task description ("Pretend you are a movie recommender system") + format requirement ("reply me with 20 recommendations without extra sentences") + conversation context [S6]. S19 uses a similar framework of task description, behavior injection and format indicator [S19]. [Research]
- **NN/g pattern:** "Because you watched X" rows used as a mood selector. Separate labeled categories such as Spotify Daily Mixes beat one mixed list [S23]. [Reported]
- **CALRec grounding:** sample several candidates, dedupe, then BM25-match to catalog items [S27]. [Reported]
- **CRS intent checklist** (S7 Table 1): Initiate, Chit-chat, Provide/Revise Preferences, Ask for Recommendation, Obtain Explanation, Obtain Details, Feedback, Restart, Accept, Quit [S7]. [Research]
- **Query relaxation/tightening:** when no title satisfies all constraints, relax one openly and say so. When there are too many, tighten [S7]. [Research]

## 6. Common mistakes and how to avoid them
| Mistake | Why it hurts | Fix | Sources |
|---|---|---|---|
| Ranking purely by predicted match | Crowds out minor interests; lists all one genre | Calibrated re-rank to the user's genre mix | S3, S12 |
| Leaning on popular hits | Obvious, non-novel picks; niche users served worst; Netflix sim: −12% engagement | Match the user's own popularity level; label deep cuts | S2, S18, S22, S28 |
| "Avoid mainstream" blanket instruction | Accuracy collapses; more invalid titles | Moderate "match my popularity level" instruction | S22 |
| Vague "maximize diversity" | LLMs follow it unreliably | Concrete diversity rules (genre caps, era/format mix) | S24 |
| Dumping the whole watch history | LLMs ignore order; long history hurts; more popularity pull | 5–10 recent/representative titles plus a profile and a recency line | S4, S9 |
| Trusting generated titles | 1–23% invalid or hallucinated depending on model and prompt | Ground every title against a catalog; rank from a candidate list | S4, S6, S9, S22, S24 |
| Trusting LLM facts (seasons, dates, runtimes, availability) | High hallucination risk; stale after cutoff | Look up hard facts; flag uncertainty | S25, S16 |
| Generic explanations ("you'll love this!") | Lower intent to watch than no explanation | Cite real history titles plus concrete shared features | S29, S11 |
| Popularity-only justifications ("highly rated by many") | Inflate expected enjoyment | Feature-level reasons | S11 |
| Unexplained surprise picks | Serendipity lowers trust without explanation | Label stretch picks and anchor them to a liked title | S8, S20 |
| Inventing user preferences | Damages trust fast | Only state profile facts the user gave | S17, S29 |
| Ignoring "seen it / not for me" until later | Users expect immediate change | Apply negatives next turn, at the attribute level | S23 |
| Long interrogations | Longer conversations ↔ lower satisfaction | Ask one short clarifying question only when the request is thin | S7, S17 |
| Treating unwatched as disliked | Exposure bias | Ask before inferring negatives | S13 |
| Candidate order left fixed | Position bias skews ranking | Shuffle and aggregate, 2–3 runs | S4, S9, S19 |

## 7. Tools and resources: which source is best for what
- **Explanations:** S1 (taxonomy, "because you liked X" origins), S14 (how to evaluate; faithfulness metrics), S11 (explanations + user control, guidelines), S29 (LLM explanation user study, N=759), S23 (UX guidelines).
- **Calibration and diversity:** S3 (the original method), S12 (2025 survey of 51+2 papers), S24 (LLM re-ranking for diversity, anime data), S21 (metric formulas: coverage, novelty, diversity, serendipity).
- **Popularity bias:** S2 (definitive survey), S28 (user-side unfairness, ΔGAP), S22 (LLM popularity bias + prompt mitigation), S13 (all bias types + feedback loop).
- **Serendipity:** S20 (real user feedback, 475 users). **Satisfaction drivers:** S8 (445 users).
- **Cold start:** S5 (language-based preferences), S16 (survey/taxonomy), S26 (text profiles).
- **LLM recommenders:** S4 (zero-shot ranking: order, position, popularity bias), S6 (conversational: content vs collaborative knowledge, IMDB matching), S9 (multi-dimensional evaluation, hallucination rates, grounding), S15 (grounding method), S17 (real-user study), S19 (survey, prompting tricks), S27 (industry patterns).
- **Industry evidence:** S18 (Netflix: value of personalization), S30 (Spotify: engagement vs diversity), S10 (Google course: pipeline, re-ranking), S25 (Gracenote: which metadata fields LLMs get wrong; vendor).
- **CRS design:** S7 (intents, actions, relaxation, evaluation).

## 8. Evidence strength
**Strong** (two or more independent primary/research sources agree):
- Accuracy-only ranking narrows lists and overweights popular items [S3, S10, S28, S2, S13].
- LLMs show position bias in candidate ranking [S4, S9, S19].
- LLM recommenders produce some invalid or hallucinated titles, and outputs need grounding [S4, S6, S9, S15, S22, S24, S19].
- Natural-language taste descriptions are a strong cold-start input for LLMs [S5, S26, S19, S9].
- Specific, history-grounded explanations beat generic or popularity-based ones [S29, S11, S1, S23].
- Popularity is a hard baseline in cold start and partly reflects quality [S5, S2, S13].
- Short recent history beats long history for LLM prompts [S4, S9].
- Personalization beats popularity-based ranking for engagement *and* variety across users [S18, S30].

**Moderate** (one solid primary/research source, or several secondary):
- Accuracy, trust and transparency explain 55% of satisfaction [S8].
- "Would not have found it myself" is the best serendipity variant [S20].
- "Match my popularity level" is safer than "avoid mainstream" [S22].
- Vague diversity instructions fail [S24].
- Generic LLM explanations reduce intent below no explanation [S29].
- Netflix targeting effect 41.9% vs exposure 6.8% [S18].
- Users don't notice calibration unless it is labeled [S12].
- Heavy users are least satisfied with an LLM recommender [S17].
- Prompt shot count (zero/one/few) didn't matter in S17 [S17]. In S5, few-shot (3) beat zero-shot [S5].

**Limited** (one secondary/community source):
- Which metadata fields LLMs hallucinate most (IDs, season and episode numbers, dates, runtimes) [S25, vendor, no data].
- Industry LLM deployment patterns [S27].
- Users use "because you watched X" rows as mood selectors [S23, qualitative].

**Contested:** see §9.

## 9. Where sources disagree
1. **Are LLM recommenders popularity-biased?**
   - *Yes*: S4 (popular items ranked higher), S6 (GPT-4 over-recommends Shawshank-type canon), S17 (users complained of popularity), S19 (bias rooted in pre-training).
   - *Less than CF*: S9 ("far less affected by popularity bias than traditional models") and S22 (claude-2.1 0.377 vs UserKNN 0.630).
   - Why: the comparison point (ground truth vs trained CF on MovieLens), the task (open generation vs ranking a candidate set), and the models differ. Practical reading: LLMs are less popularity-biased than CF trained on the same skewed data, but still pulled toward canonical hits relative to what a niche user wants. [Contested]
2. **How often do LLMs hallucinate titles?**
   - ~3% out-of-candidate for GPT-3.5 [S4].
   - ~95% of titles matched IMDB, so "only a few" are hallucinated [S6].
   - Mostly ~1% and under 5%, but Mistral ~23% [S9].
   - 6–14% invalid per 10 picks [S22].
   - 1.2–22.4% invalid in re-ranking, with books (13.1%) worse than anime (2.3%) [S24].
   - Why: different definitions (non-existent vs not in candidate set vs renamed), models and domains. Rates also rise when the model is pushed toward niche titles [S22] or toward recent or fringe titles [S25]. [Contested on rate; Strong on "verify anyway"]
3. **Does diversity cost accuracy?**
   - Calibration "generally" costs some accuracy [S3, S12, offline].
   - The one field A/B test of calibrated popularity showed no CTR loss [S2, S12].
   - The Netflix simulation shows personalization gives both engagement and variety [S18].
   - Spotify personalization raised engagement but lowered individual variety [S30].
   - Why: offline vs online, and individual vs aggregate diversity. [Contested]
4. **Filter bubbles.** Feedback-loop theory and simulations predict narrowing [S13]. Spotify found individual narrowing but aggregate diversity up 5.96% [S30]. Kotkov found higher predicted ratings went *with* more serendipity, contrary to filter-bubble claims [S20]. [Contested]
5. **Does more prompt context help?** S17: zero/one/few-shot made no difference, but user-supplied context did. S5: few-shot (3) generally beat zero-shot, and more than 3 examples didn't help. S26: profile length (50–200 words) didn't matter. S4/S9: longer history hurts. Why: "more examples" and "more relevant user context" are different things. [Contested]
6. **Do LLMs beat traditional recommenders?** In cold start or sparse settings: yes or competitive [S5, S9, S6 on Reddit]. In warm settings: no [S4, S9, S15, S19, S22]. Also no on real users' perceived novelty, diversity and trust [S17, with Llama-2-7B only]. [Contested; depends on setting]
7. **Definition of scrutability:** user-correctable [S11] vs explanation–output consistency [S14]. [Definition differs]
8. **Long tail beneficiaries:** the classic long-tail view says niche items gain most [S28 cites social-good arguments]. Netflix found *mid-popularity* titles gain most, while very niche ones are "too niche to target effectively" [S18]. [Contested]

## 10. Gaps (what the sources don't cover, or cover poorly)
- **Anime specifically:** only S24 uses an anime dataset. Nothing covers seasonal anime, sequels and watch order, or source-material status. Topic 3 will cover title data and franchise order.
- **Cross-media seeds** (books, manga or games → shows): only general cross-domain mentions. Topic 1 covers cross-media appeal.
- **Single-user, long-term personal recommenders:** almost all evidence comes from platforms with many users. No study tests a persistent personal taste file over months.
- **Modern frontier LLMs:** most experiments use GPT-3.5/4, Claude 2/3 Haiku, Llama 2 or PaLM. Results may not transfer to current models.
- **Tool-using LLMs** that look titles up (web search, TMDB/AniList APIs) are recommended (RAG/grounding) but rarely evaluated end to end [S17, S22, S25].
- **Content ratings and sensitive-content filtering:** not covered. Topic 3 covers ratings.
- **Mood or occasion as a formal input:** discussed qualitatively [S23, S7], with no robust study.
- **Group or household viewing:** mentioned only as a calibration motive [S3] and an open CRS issue [S7].
- **Popularity data source:** a personal tool has no interaction logs. Popularity proxies (rating counts, MAL members) are not studied [S21 inferred].
- **Faithfulness of LLM explanations in recommenders:** flagged [S1, S14, S29], but no direct measurement in the set. Omission-check papers outside the set exist (see ../NOTES.md).

## 11. How to apply this when writing prompts on this topic
**Rules a recommender prompt should build in:**
1. **Intake, short:** a free-text "what I love and why", 3–5 loved titles, a few dislikes as filters, today's mood or occasion, time budget, novelty appetite. Ask at most one clarifying question when the request is thin [S5, S7, S17].
2. **Profile file:** maintain an editable 50–150 word taste profile (likes and dislikes *with reasons*), plus seen, avoid and feedback lists. Never invent profile facts. Re-ask about drift occasionally [S5, S11, S17, S26].
3. **Input selection:** pass the profile plus 5–10 recent or representative titles plus a "most recent / current mood" line, not a full dump [S4, S9].
4. **Two-stage generation:** brainstorm a larger candidate pool from several angles (close match, same creator or studio, adjacent genre, different era or format, one wildcard). Then select the final list [S9, S10, S24].
5. **Calibrate:** match the user's genre or format mix and popularity level from their history. Put the strongest matches first. Keep 1 labeled stretch pick per batch, of the "you wouldn't have found it yourself" kind [S3, S12, S20, S22].
6. **Concrete diversity rules:** for example, at most 2 per genre or franchise, a mix of eras and formats, no duplicates, nothing already seen or disliked [S24, S27].
7. **Popularity label per pick** (High/Medium/Low, or "deep cut") [S17, S2].
8. **Explanations:** "Because you liked [real title(s) from the profile]: [true, concrete shared feature]". Keep it short and spoiler-light, and add a caveat line where useful. No generic praise, no "people like you" [S1, S11, S23, S29].
9. **Grounding:** output each title as Title (Year) · Type (+ studio or season for anime). Verify each against a real source when a tool is available, and drop or replace unverified titles. Never state season or episode counts, air dates, runtimes or availability without a lookup. Flag recent titles [S9, S15, S16, S25].
10. **Bias guards:** state the optimization target ("titles I'll likely finish and rate highly", not "most popular"). Ask explicitly for non-English and non-US options when relevant. If ranking a list, shuffle and repeat [S4, S6, S10].
11. **Feedback loop:** end each round by inviting quick feedback (seen / not for me + why / more like #N). Apply it in the next turn at the attribute level, and update the profile [S7, S23].
12. **Constraint handling:** if nothing fits all constraints, relax one and say which [S7].

**Checklist for reviewing a recommender prompt:** intake ✔ · profile file ✔ · recency line ✔ · candidate pool + selection ✔ · calibration and stretch slot ✔ · concrete diversity rules ✔ · popularity labels ✔ · grounded explanations ✔ · title verification and fact caution ✔ · feedback and next-turn update ✔ · short conversations ✔.

**Links to topic 1:** use topic 1's appeal factors (pacing, tone or mood, characterization, story, frame, style) as the *features* in explanations (rule 8) and the *dimensions* for calibration and diversity (rules 5–6). Topic 1's "dislikes as first-class signals" agrees with S5/S23: here they work as filters and attribute-level negatives. [Inferred]
