# NOTES — media-recommender-rec-quality (Top 30 research)
Run date: 2026-11-14 · Prompt: prompts/claude/Top30_Resource_Research_Prompt_v3.txt

## Scope
- Topic: How good recommendations work: personalization, explainable recommendations ("because you liked X"), diversity, novelty and serendipity, avoiding popularity bias, the cold-start problem, and research on LLM-based recommenders (including hallucinated items).
- Recency: 2018+ · Language: English · Audience/region: any (defaults).
- Purpose downstream: a personal show/movie/anime recommender built in Claude Code, where the LLM itself recommends through prompting.
- Topic given by the run instructions, so the "ask for the topic" step was skipped.
- Relation to topic 1 (research/media-recommender-appeal-factors): topic 1 covers *what* to match on (appeal factors, cross-media advisory). This topic covers *how* a recommender should behave (calibration, diversity, explanation, bias, cold start, LLM failure modes). Topic 1's S13 (LLM narrative-driven recommendation) overlaps; it is not repeated here.

## Weights
Default weights (Relevance 20, Reliability 20, Authority 15, Depth 15, Accuracy 10, Practical 10, Currentness 5, Community 5). No change. The LLM sub-area moves fast, but the classic beyond-accuracy work (2018–2021) is still the foundation. Recency is handled by including 2024–2026 LLM papers in the pool rather than by reweighting.

## Pool
- 5 discovery batches → candidates_academic.md (39), candidates_llm.md (40), candidates_primary.md (42), candidates_usercentric.md (50), candidates_independent.md (20); plus 4 omission-check finds. About 195 accessible candidates, about 150 after deduplication (many surveys appeared in several batches).
- 69 shortlisted for validation (abstract or content opened) and scoring (SCORED_CANDIDATES.csv). The other accessible candidates stay in the candidates_*.md files and were not shortlisted: lower relevance to a prompt-based personal recommender (e.g., model-architecture papers such as P5, TALLRec, MeLU, Recformer), duplicates, or thin pages.
- Pre-2018 classics (Kaminskas & Bridge 2016/17, Vargas & Castells 2011, Knijnenburg 2012, Tintarev & Masthoff 2012) were considered foundational but are outside the 2018+ window. Kaminskas & Bridge also had no confirmable open full text. They were not listed.

## Selection notes
- The final list is ordered strictly by weighted score. No diversity override was needed. The top 30 mixes academic surveys (9), research papers and user studies (14), official/industry sources (Google Developers, Netflix, Spotify, Gracenote: 4), open-source docs (1), UX research (NN/g: 1), and an independent practitioner (Eugene Yan: 1).
- Near-misses worth knowing (ranks 31–36): Zhao et al. LLM-era survey, the LLM explanation review (2411.19576), Bito et al. on position bias (2508.02020), InteRecAgent, Zangerle & Bauer's FEVR evaluation framework, and Abdollahpouri's user-centred popularity-bias study.
- Steck's "Calibrated Recommendations" (rank 3) is listed through a third-party PDF copy (salanghei.github.io), because the ACM DL page returns 403 and no Netflix-hosted copy was found (research.netflix.com/publications returned 404). The PDF is the full paper text, checked.

## Access preflight (categories, 2026-11-14)
| Category | Test hosts | Result |
|---|---|---|
| Preprints / OA proceedings | arxiv.org, aclanthology.org, ceur-ws.org, openreview.net, ojs.aaai.org (abstract pages), ijcai.org, proceedings.neurips.cc | OPEN (ojs.aaai.org article pages sometimes bot-check) |
| Publishers | link.springer.com, nature.com OPEN; dl.acm.org 403; journals.plos.org 403 | MIXED |
| Official/industry | research.netflix.com, research.atspotify.com, blog.youtube, developers.google.com, research.google, ai.meta.com, amazon.science | OPEN |
| Industry blogs on Medium | netflixtechblog.com, medium.com | BLOCKED (403) |
| Microsoft Research | microsoft.com/en-us/research | BLOCKED (403) |
| Communities | reddit.com 403, stackoverflow.com 403; news.ycombinator.com, lobste.rs OPEN | MIXED |
| Code hosts | github.com HTML 400/403, api.github.com 403; raw.githubusercontent.com and *.github.io OPEN | MIXED |
| Independent media | eugeneyan.com, nngroup.com, wired.com, theverge.com OPEN; towardsdatascience.com 403; letterboxd.com 403 | MIXED |
| Video | youtube.com | OPEN (no strong tutorial video page verified) |
| Archives | web.archive.org | OPEN (not used to route around blocked sites) |
Workarounds: arXiv copies replace ACM DL versions; raw.githubusercontent.com and *.github.io docs replace github.com pages.

## Excluded-source log (not described, not listed)
- dl.acm.org (all ACM versions, incl. Steck 2018, Kaminskas & Bridge TiiS): BLOCKED 403.
- netflixtechblog.com / medium.com: BLOCKED 403. reddit.com, stackoverflow.com, towardsdatascience.com, letterboxd.com, microsoft.com/research, journals.plos.org: BLOCKED 403.
- research.netflix.com/publications: DEAD 404.
- ojs.aaai.org: AI Magazine "Deep Learning for Recommender Systems: A Netflix Case Study" and ICWSM "Dynamics of Exploration on Spotify": bot-check page (BLOCKED).
- Jannach & Bauer "Escaping the McNamara Fallacy": AAAI bot-check; author copies DEAD (404 / no connection).
- Kaminskas & Bridge full text (cora.ucc.ie): JavaScript shell only, full text not confirmed.
- Kotkov et al. "Rethinking Serendipity" (CHIIR 2023, ir.webis.de): DEAD 404.
- Dokoupil et al. UMAP 2024 preprint: DEAD 404. Springer UMUAI Dokoupil 2022: bot-check.
- Pu, Chen & Hu ResQue; Cai, Jin & Chen IUI 2021 (comp.hkbu.edu.hk): no connection.
- Zangerle et al. 2021 Perspectives paper (univie): no connection.
- Cheuque et al. Steam (ResearchGate): BLOCKED 403. UWSpace music-diversity thesis: bot-check.
- Knijnenburg & Willemsen handbook chapter: only a copy marked "do not share publicly"; not used.
- CRS-Que (ACM TORS), Berkovsky et al. IUI 2017: no open copy found.
- Values of exploration author PDF (yuyan-wang-princeton.github.io): DEAD 404 (research.google abstract page used).
- MovieLens paper PDF (files.grouplens.org): no response; predates 2018 anyway.
- EUR-Lex DSA text: 202 challenge page.
- BBC R&D recommender topic page: DEAD 404.
- ACL Anthology preview of RecLM: 404 (arXiv copy in pool).
- cseweb.ucsd.edu McAuley PDF: no response.
- Seen in search but never verified, so never listed: LLMXRec, DLCRec, "Echoes in the Loop", ColdRAG, two 2026 position-bias papers, opentrain.ai audit summary.

## Community findings (anecdotal)
- Reddit is blocked, and Hacker News searches surfaced no substantive thread on recommendation quality or LLM title hallucination.
- Repeated reputation signals (anecdotal): the Zhang & Chen explainability survey, the Abdollahpouri popularity-bias line, Steck's calibration paper, and the Wu et al. LLM4Rec survey (with its awesome list, about 2k GitHub stars per aggregators) are the most-cited entry points named in tutorials, awesome lists, and later surveys. Eugene Yan's essays are widely recommended by practitioners.
- Search-summary reports of users finding ChatGPT invented film titles and then insisted they were real. The Gracenote 2026 report (vendor) quantifies this for movie/TV metadata. Treat the vendor framing cautiously, since Gracenote sells grounding data.

## Cross-checks (Pass 5)
- "Hallucinated items" is defined and measured as catalog-absent titles in Jiang et al. (2411.00331, abstract), and is also measured in SRBench (2604.09553). The phenomenon is confirmed by two independent research groups plus the Gracenote industry test.
- Steck calibration: the definition (a list should match the user's genre distribution, e.g., 70/30 romance/action) was confirmed in the PDF and restated in the da Silva & Jannach survey (51 papers reviewed).
- The Netflix authorship of 2511.07280 is per the batch report and the arXiv title. The paper is framed as evidence "from Netflix".

## Disagreements between sources (to carry into the knowledge base)
- Diversity vs accuracy: Steck notes that calibration usually costs some accuracy. Spotify's field experiment links diversity to engagement. Google's exploration work finds long-term value in exploration.
- Filter bubbles: the systematic review (2307.01221) finds mixed evidence, while DeepMind's feedback-loop paper shows narrowing in theory.
- LLM explanations: users like them (2404.19093, 2501.12152), but 2605.10930 and 2603.03080 warn they can create false trust or be preference-inconsistent.
