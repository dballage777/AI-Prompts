# Knowledge Base: Choosing Which AI Chatbot or Model to Use
Built 2026-11-07 from 30 user-supplied sources (S1–S30). Method: prompts/claude/Topic_Learning_Master_Prompt_v2.txt.
Coverage: 23 OPENED (S6 hub dashboard partial; its reports opened), 5 PARTIAL (S4, S7, S8, S18, S24), 2 BLOCKED (S12 Menlo Ventures, S15 Tow Center/CJR). See SOURCES.md.
Per-source evidence: sources/S#.md. Claim table: CLAIMS.csv.

Evidence labels:
- Documented: an official or primary source states its own data or product facts.
- Research: peer-reviewed, academic, or working-paper work.
- Reported: secondary sources, reviewers, or journalism.
- Inferred: my own synthesis.

Strength (section 8): Strong, Moderate, Limited, or Contested.

**Model names and prices below are a snapshot (most from Aug–Nov 2026). They go stale within weeks [S4, S14]. Re-check before relying on any of them.**

---

## 1. Topic overview
"Which AI should I use?" sounds like one question but is really four:
1. Which **company's product** (ChatGPT, Gemini, Claude, Copilot, Perplexity, and others).
2. Which **model tier** inside it (small/fast vs. flagship).
3. Which **effort or thinking setting**.
4. Which **mode**: chat, search, deep research, or an agent that acts on files and apps.

The sources agree on three things:
- No single product is best at everything.
- The top models from OpenAI, Anthropic, and Google are statistically close.
- What actually decides the choice is the task, the stakes, your ecosystem or school license, cost and usage limits, and how reliable the tool is for that task.

The topic matters for educators for several reasons:
- Most students already use AI for schoolwork. Over 80% of US high school and college students do [S8].
- School AI policy is often unclear. Only 6% of teachers say their school's policy is clear [S8].
- Every tool still makes confident errors [S4, S8, S13, S23].

## 2. Core concepts and glossary
- **Product vs. model.** The app you use (ChatGPT, the Claude app, Gemini) wraps one or more models. It adds hidden instructions, tools, and memory, so the same engine can behave differently in different apps [S3]. Anthropic's data suggest "the product used is likely more important than the underlying model" for how much work gets delegated [S6]. (Documented)
- **Tier.** Most families have small/fast, mid, and flagship models. Examples: OpenAI Luna < Terra < Sol < Astra [S14]; Claude Haiku < Sonnet < Opus/Fable [S3, S19]. Bigger models are generally more reliable and recall more obscure facts, but cost more [S14]. Free tiers usually get lighter models that "may change at any time" [S9]. (Reported)
- **Effort / thinking level.** A setting for how long the model reasons. One flagship scores 35 at low effort and 58 at max on the same index, at about 10x the cost per task [S4]. Max effort can also backfire: the model over-thinks, or hits its output limit [S14]. (Documented, Reported)
- **Harness / scaffold.** The agent setup around a model. Scores change with the harness. Example: one vendor-reported score of 99.9% fell to 62.7% with the default harness [S14]. SWE-bench separates whole "systems" from bare models [S20]. (Reported, Documented)
- **Capability index.** One number that combines many benchmarks, such as the Artificial Analysis Intelligence Index [S4] or the Epoch Capabilities Index [S11]. Only comparisons between models are meaningful, and the uncertainty ranges overlap [S11]. (Documented)
- **Arena / Elo.** Rankings from human preference votes. As of March 2026 the top four companies were within 25 Elo points [S8]. Standing "may partly reflect adaptation to the platform" [S8]. (Research)
- **Contamination and saturation.** Models may have seen the test questions in training, which inflates scores [S11]. Benchmarks also "saturate": they stop separating models once everyone scores near 100% [S8, S11]. (Documented, Research)
- **Hallucination rate vs. accuracy.** These are different properties. One model can have the highest raw accuracy and still hallucinate often. In Nov 2026, some flagships hallucinated on about 50% of the questions they didn't know, while two Gemini 4 models hallucinated on 4–11% [S4]. (Documented)
- **Calibration.** Whether the model's stated confidence matches its real accuracy. It varies widely even among top models (calibration error 7.1 to 76.3 on HLE-Diamond) [S21]. (Documented)
- **Sycophancy.** Agreeing with or flattering the user at the expense of truth. Accuracy "collapses" when a false claim is framed as the user's belief [S8]. (Research)
- **Multi-homing.** Using several assistants. 82% of a power-user sample use two or more [S25]. About 20% of weekly ChatGPT web users also use Gemini [S24]. (Research, Reported)
- **Agentic mode.** A model plus tools that plan and act: reading files, sending email, browsing. This shifts the work "more like managing than it is chatting" [S1]. (Reported)

## 3. Key principles and frameworks
**P1. Choose by task, not by an overall "best."**
- "The answer depends on the actual task" [S3].
- No model leads every evaluation. In one index, a single model led 3 of 9 evaluations and five other models led the rest [S4].
- Performance is "incredibly multidimensional" [S14].
- Leaders differ by benchmark [S21].
- Users rate each platform best for different jobs [S25].
- Strength: Strong.

**P2. The frontier is a statistical tie, so small gaps are noise.**
- ECI: the leader had only a 72% chance of truly being ahead of #3 [S11].
- Scale ranks tie whenever confidence intervals overlap [S21].
- Within 25 Elo points (Mar 2026) [S8].
- The usability (UX) scores showed no significant differences between products [S13].
- The top three products had "statistically indistinguishable" satisfaction [S25].
- 1–3 point review gaps are within noise [S9].
- Strength: Strong.

**P3. Tier, effort, and mode matter as much as brand.**
- Effort changes scores by more than 20 points [S4].
- Choose a thinking level as well as a model [S1].
- A newer model or a higher effort is not always better on web research [S16].
- The cheap Claude tier lost head-to-heads that the flagship won [S19].
- Free-tier tests penalize tools without image generation [S9].
- Product surface affects delegation more than the model [S6].
- Strength: Strong.

**P4. Your ecosystem and license often decide.**
- Google Workspace → Gemini; Microsoft 365 → Copilot [S2, S10, S22, S26].
- An institution's free license can decide the choice outright (UC Merced gives Copilot free) [S27].
- Gemini's growth comes partly "not from user choice" but from ecosystem integration [S13].
- Strength: Moderate (mostly reviewer opinion, plus one Documented survey note).

**P5. Popularity ≠ quality.**
- ChatGPT leads usage: 44% of US adults have ever used it, vs. 6% for Claude [S5].
- ChatGPT has about 2.7x Gemini's web traffic [S24].
- API token rankings "do not rank models by accuracy" [S18].
- Satisfaction doesn't track usage share [S25].
- Strength: Strong.

**P6. Reliability is the universal weak point, so build in verification.**
- Hallucination and calibration problems on benchmarks [S4, S21].
- Hallucination rates of 22–94% across 26 top models [S8].
- Accuracy is the top user complaint for most products [S13].
- 66% of developers cite "almost right" answers [S23].
- Hallucination is the top frustration (22%) in a power-user survey [S25].
- Only 50% of medical exam questions were right on every run by every model [S28].
- Reviewers warn to verify [S2, S3].
- Strength: Strong.

**P7. Sycophancy is real, measurable, and varies by product and version.**
- Benchmarks show it [S8, S21].
- Reviewer tests show it [S19, S30].
- User complaints show it [S25].
- Which product is "worst" is Contested (see section 9).
- Strength: Strong that sycophancy exists; Contested on the ranking.

**P8. Advice expires fast, so date every recommendation.**
- The #1 model changed within one day [S4].
- Eight or more frontier releases came between Sep 21 and Oct 26, 2026 [S14].
- "Six months is a long time in AI right now" [S10].
- Leaderboards and library guides go stale [S20, S27].
- Strength: Strong.

**P9. Benchmarks and vendor numbers need context.**
- Up to 42% of a benchmark's questions can be invalid [S8].
- Prompt sensitivity and cherry-picked lab scores [S11].
- Harness effects [S14, S20].
- LLM-judge limits [S21].
- Benchmarks measure API models, not the consumer apps teachers use [S4, S11, S21].
- Strength: Strong.

**P10. AI is strongest at information work and weakest at data analysis and image tasks.**
- Most use is practical guidance, information seeking, and writing (about 80% of ChatGPT use) [S7].
- Copilot did best at writing, explaining, and teaching, and worst at data analysis and image generation [S17].
- Personal, non-work use is large and growing [S5, S6, S7].
- Strength: Moderate–Strong. Caveat: older data, and each study covers one vendor.

**P11. Agents still fail most real projects, so keep human approval on.**
- The best agents complete about 21% of real freelance projects [S21].
- Agents fail about 1 in 3 structured tasks [S8].
- Leave approval-before-acting on, and limit what agents can touch [S1, S26].
- 87% of developers are concerned about the accuracy of agents [S23].
- Strength: Strong.

**P12. Experience matters.**
- Users with 6+ months of experience have about a 10% higher success rate [S6].
- Learners trust AI more than professionals do [S23], so novices need the checking steps most.
- Strength: Moderate. Caveat: S6 is a vendor self-study, and the effect may reflect selection rather than learning.

## 4. Best practices and methods, step by step
**How to choose an AI for a task.** This method combines S3, S9, S14, S19, S28, S30, and S1.
1. **Name the task and the stakes.** Low-stakes chat (a recipe, a quick question): any major free tool is "at least fine," so "pick the one you like." High-stakes work (medical or legal second opinions, consequential decisions): use a top model at a high thinking level, and review the output [S1].
2. **Check the constraints first.** What does your school or district license? Which ecosystem do you use (Google or Microsoft)? What are the privacy rules for student data? What does it cost, and what are the usage limits? [S2, S10, S13, S27]
3. **Shortlist 2–3 tools.** Use the dated task map below.
4. **Run the same prompts on each.** Use real tasks from your own work. Test the tier your users will actually have, for example free and logged-out for students [S9]. Score with a simple rubric: instruction-following, accuracy, and how much work it leaves for you [S9, S19]. Running side by side in an aggregator such as Poe or Perplexity also works [S2, S3].
5. **Repeat key prompts 2–3 times in fresh sessions.** This checks consistency, which is a separate dimension from accuracy [S28].
6. **Check the citations.** Open each source and confirm it says what's claimed. Reviews often count links without checking them [S29]. Web citations are "hit or miss" [S3, S26].
7. **Probe for sycophancy before using it for feedback.** Use five bait prompts: a false premise, "explain why I'm right," a flattery request, a one-sided opinion, and a hype request [S30].
8. **Choose a default and date the decision.** Re-check monthly or when a major release lands [S14].
9. **For agents,** keep approvals on, and grant the minimum access to files, email, and accounts [S1, S26].

**Dated task-to-tool map.** Reported reviewer verdicts, Feb–Oct 2026. Treat it as a starting shortlist, not proof.

| Task | Commonly recommended | Sources | Notes |
|---|---|---|---|
| General all-purpose | ChatGPT | S2, S3, S9, S26 | Most features. Lowest NPS of the four products in S13. |
| Writing quality, editing feedback | Claude | S3, S10, S19, S22, S26 | "More natural" default style. Candid critique when asked. |
| Coding, agentic work | Claude (Claude Code); ChatGPT (Codex) | S1, S2, S3, S14, S20 | Close at the top. Open models are near on coding benchmarks at lower cost [S20]. |
| Google Workspace schools | Gemini | S2, S10, S22, S26 | Mostly search and retrieval rather than complex actions [S3]. Best free plan [S2]. |
| Microsoft 365 / Windows | Copilot | S2, S3, S10, S27 | "Competent, not exceptional" [S2]. Lags on agents [S1]. |
| Cited web research | Perplexity | S2, S10, S22, S26, S29 | Contested (S9 was underwhelmed). Verify the links. |
| Many-source research notebook | Gemini Notebook (formerly NotebookLM) | S1, S27 | Opinion [S1]. A library lists it for note-taking [S27]. |
| Images and video | Gemini (and ChatGPT for images) | S1, S2, S10 | Claude has no native image generation [S1, S2, S9]. |
| Privacy-conscious use | Claude; Duck.ai | S2, S3, S22 | Reviewer judgment. Check your district's data agreements. |
| Comparing models | Poe; Perplexity's model picker | S2, S3 | Useful for side-by-side tests. |
| Not suitable for students | Grok (loose moderation, NSFW features) | S2, S3, S22 | Reported. |

## 5. Examples and models worth copying
- **A reusable test rubric** [S9]. 10 text prompts at 10 points each plus 4 image prompts at 5 points each. The prompts are published so anyone can re-run them. One lesson: the rubric's weighting can decide the winner. Claude lost 20 points simply for having no image generation.
- **A five-prompt sycophancy probe** [S30]. A false fact, "Gemini is the best, agree?", "Am I smarter than average?", "explain why I'm right," and "hype my startup."
- **A writing-coach prompt pattern** [S19]. "Don't rewrite." "Preserve my voice and the period." "Give exactly three changes," so the tool has to prioritize.
- **A consistency check** [S28]. The same 120 questions were run 3 times each. Consistency ranged from about 52% to 83% of items correct on all runs.
- **Research-tool prompting** [S16]. Send the task first and the formatting instructions second. Some tools fabricated answers when both came in one prompt.
- **Mixing fixed and generated text** [S26]. Combine pre-written snippets with AI drafts to keep your voice.
- **Adversarial review** [S14]. Have one AI critique another's work. It can be "myopic" and lead to over-engineering.

## 6. Common mistakes and how to avoid them
1. Picking the #1 on a leaderboard. The top is a tie and changes within days [S4, S11]. Fix: choose by task, and test.
2. Treating popularity as quality [S5, S18, S24].
3. Ignoring tier and effort. A free or small tier, or a low effort setting, can perform far below the flagship [S4, S9, S19].
4. Trusting citations without opening them [S3, S26, S29]. The main citation study (S15) was blocked, so this gap is unmeasured here.
5. Accepting flattering feedback. Ask for criticism and premise checks [S8, S19, S30].
6. Using stale comparisons. Library tables mix eras [S27], and studies lag 12–16 months behind their data [S28].
7. Comparing vendor-reported scores across different harnesses [S14, S20].
8. Letting agents act unsupervised [S1, S21, S26].
9. Assuming a "Deep Research" mode is more accurate. It wasn't reliably better than standard chat with search [S16].
10. Assuming output matches the student's reading level. Output runs about one school year above the prompt's level [S6]. Set the reading level explicitly.
11. Assuming English-level performance in other languages [S8].
12. Using crisis-capable chatbots without a human backstop. Models often fail to route a user in crisis to human help [S21]. 20% of 18–29-year-olds use chatbots for emotional support [S5].

## 7. Tools and resources: which source is best for what
- **Capability rankings, cost per task, effort effects, hallucination rate:** S4 (Artificial Analysis); S11 (Epoch, uncertainty intervals); S21 (Scale SEAL, task-specific boards, calibration, crisis safety).
- **Coding agents:** S20 (SWE-bench); S14 (Willison, hands-on).
- **Web-research agents:** S16 (FutureSearch DRB).
- **Who uses what:** S5 (Pew, US adults); S24 (a16z traffic); S18 (OpenRouter developer API usage); S23 (developers).
- **How people use AI:** S6 (Claude); S7 (ChatGPT, abstract only); S17 (Copilot).
- **User experience and satisfaction:** S13 (MeasuringU); S25 (power-user survey).
- **Practical "best for" verdicts:** S2, S3, S9, S10, S22, S26; S19, S29, S30 (head-to-head tests).
- **Expert opinion on what to use now:** S1 (Mollick); S14 (Willison).
- **Big-picture trends, education stats, benchmark reliability:** S8 (Stanford AI Index).
- **Academic and educator tool lists:** S27 (UC Merced guide; paywalled content is out of reach for research tools).
- **Domain accuracy example:** S28 (pediatric multiple-choice questions).

## 8. Evidence strength (main conclusions)
| Conclusion | Strength | Sources |
|---|---|---|
| No single best; choose by task | Strong | S3, S4, S11, S14, S21, S25 |
| Top models are statistically close | Strong | S8, S11, S13, S21, S25 |
| Tier, effort, and mode change results a lot | Strong | S1, S4, S6, S16, S19 |
| Ecosystem and license drive practical choice | Moderate | S2, S10, S13, S22, S26, S27 |
| Popularity ≠ quality | Strong | S5, S18, S24, S25 |
| All tools make confident errors; verify | Strong | S4, S8, S13, S21, S23, S25, S28 |
| Sycophancy exists and varies | Strong (exists) / Contested (ranking) | S8, S19, S21, S25, S30 |
| Advice expires within weeks to months | Strong | S4, S10, S14, S20, S27 |
| Benchmarks are flawed and harness-dependent | Strong | S8, S11, S14, S20, S21 |
| AI is best at writing, explaining, and info work; weaker at data analysis and images | Moderate | S7, S17, S6 |
| Agents fail most real projects; keep approvals | Strong | S1, S8, S21, S23 |
| Perplexity is best for cited research | Contested | S2, S10, S22, S29 vs. S9, S16 |
| Gemini is a strong primary choice | Contested | S2, S10, S13 vs. S1 |
| A paid tier raises satisfaction | Limited (no difference found) | S25 |
| Experience improves results | Moderate | S6, S23 |

## 9. Where sources disagree
1. **Is Gemini a good primary tool?**
   - Against: Mollick (Jul 2026) doesn't suggest Gemini as a primary system, "though this could change quickly" [S1].
   - For: PCMag calls it the best value and best free plan [S2]. Benchmarks show a Gemini model reaching #1 by late October [S4].
   - Users: Gemini fell in UX ratings [S13], and Gemini was the only major platform with negative net satisfaction [S25].
   - Why they differ: dates (July vs. Oct–Nov), and different things measured (capability vs. experience).
2. **Which product is most sycophantic?**
   - Gemini was the most agreeable, 5 of 5 [S30], but against Claude's small tier, Nov 2025.
   - Claude beat ChatGPT 7–0 on sycophancy [S19].
   - In a power-user survey, sycophancy complaints "targeted Claude specifically" [S25]. That's small counts with no inter-rater check.
   - Gemini's empathetic answer won a "people-pleasing" round [S19].
   - Why they differ: versions, tiers, and anecdotal methods. Conclusion: test your own version.
3. **Is there a wrong choice?**
   - Zapier: there "isn't a wrong choice" [S3].
   - Mollick: there are capability gaps for high-stakes and agentic work [S1].
   - Both can be true: it depends on the stakes.
4. **Perplexity for research.**
   - Best [S2, S10, S22, S29].
   - ZDNET "underwhelmed": no better than a typical Google search [S9].
   - Perplexity's own Deep Research mode didn't beat its standard mode [S16, 2025 data].
   - S29 judged by number of links without checking them.
5. **Is ChatGPT the best overall?**
   - Yes [S2, S3, S9, S26].
   - Lowest NPS of the four products [S13].
   - Claude flagships won most head-to-heads [S19].
   - A first-mover effect inflates satisfaction among ChatGPT-first users [S25].
6. **Which model is #1?**
   - S4: a Gemini 4 model.
   - S11: a GPT-6 model.
   - S8 (Mar 2026): Anthropic on Arena.
   - S21: it depends on the benchmark.
   - The sources really agree: the top is a tie.
7. **Claude's accuracy.**
   - S4: about 50% hallucination rate when the model doesn't know (Opus 5.5 at max effort, on hard knowledge questions).
   - S13: Claude users complain about usage limits, not accuracy.
   - These measure different things: benchmark knowledge questions vs. users' perception in everyday tasks.
8. **Grok.**
   - Third in ZDNET's free-tier test [S9].
   - Cut from Zapier's list [S10].
   - Called unsuitable by others because of loose moderation [S2, S22].

## 10. Gaps (what the sources don't cover, or cover poorly)
- **Citation accuracy of AI search.** The main source, S15 (Tow Center), was BLOCKED, so no measured citation-error rates are in this knowledge base.
- **Menlo Ventures consumer AI report (S12):** BLOCKED.
- **K–12-specific testing:** none of the sources test tools on high school tasks, teacher workflows, or student-data compliance. S8 and S27 give only context.
- **Education plans and privacy agreements:** for example, Gemini for Education and ChatGPT Edu. Not covered.
- **Copilot:** covered thinly (S1, S2, S3, S10, S17, S27, S28). S26 omits it.
- **Teens:** Pew's teen report was linked but not read [S5].
- **Non-English use:** only S8 touches it.
- **Paid-tier differences:** S25 found no satisfaction difference between free and paid. No source does systematic paid-vs-free capability testing for consumer apps.
- **Several sources were only partly read:** S7 (abstract only), S8 (highlights, not the full PDF), S24 (ranked lists were images).

## 11. How to apply this when writing prompts on this topic
Rules for any prompt that recommends, compares, or configures an AI tool:
1. **Ask before recommending.** Ask for the task and its stakes, the user's ecosystem or school license, whether a free or paid tier is used, and any privacy constraints. Then recommend by task, not by "the best AI" (P1, P4).
2. **Give a shortlist plus a test, not a verdict.** Recommend 2–3 tools, with a short side-by-side test the user can run on their own task (section 4, steps 4–7).
3. **Date and hedge.** Say "as of <month year>," and tell the user to re-check monthly. In user-facing prompts, don't hard-code model version names. Describe tiers instead ("the most capable model with a high thinking setting") (P8; repo convention).
4. **Mention tier and effort.** Say that free or fast tiers and low thinking settings perform worse on hard tasks. For high-stakes work, use the top tier with higher effort, plus human review (P3).
5. **Build in verification.** Have the AI open and check citations, flag uncertainty, and prefer "I don't know" to guessing. Remind users that every tool makes confident errors (P6).
6. **Counter sycophancy in feedback tasks.** Ask for criticism and counterarguments, require premise checks, and limit edits to a few prioritized changes ("give exactly three changes; don't rewrite") (P7; S19, S30).
7. **Set the reading level explicitly** when the output is for students. Output tends to run above the prompt's level (S6).
8. **For agents, require approval** before anything that sends, spends, deletes, or publishes, and grant minimum access (P11).
9. **Don't cite benchmark ranks as proof** of what's best for a classroom task. If you mention benchmarks, add that they measure API models under test conditions (P9).
10. **For student-facing use,** exclude tools with loose moderation. Never send student PII. Add a crisis-escalation line, because models often fail to route a user to human help (S21, S2).
11. **Label evidence.** Separate tested data (Documented or Research) from reviewer opinion (Reported). Point out where sources disagree (section 9).
