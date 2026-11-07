# Memory Brief: Choosing Which AI Chatbot or Model to Use
This is the working memory for this chat. It condenses KNOWLEDGE_BASE.md, built 2026-11-07 from S1–S30.
Read: 23 sources fully, 5 partly (S4, S7, S8, S18, S24). Blocked: 2 (S12, S15).
Model names, ranks, and prices are a snapshot from Aug–Nov 2026, and they go stale within weeks.

## Most important learned points
1. **There's no single best AI. Choose by task.** No model leads every benchmark [S4, S21], and users rate platforms best for different jobs [S25]. (Strong)
2. **The top models are a statistical tie.** Their uncertainty ranges overlap [S11, S21]. Four labs are within 25 Elo points [S8]. Usability and satisfaction show no significant differences among the leaders [S13, S25]. (Strong)
3. **Tier, thinking effort, and mode matter as much as brand.**
   - The same flagship scored 35 at low effort and 58 at max effort [S4].
   - Small tiers lose tests their flagships win [S19], and free tiers run lighter models [S9].
   - The product surface (chat vs. coding agent) matters more than the model [S6].
   - More effort, a newer version, or a "Deep Research" mode isn't always better [S14, S16].
   - (Strong)
4. **Your ecosystem or license often decides.** Google Workspace points to Gemini and Microsoft 365 to Copilot [S2, S10, S22, S26]. A school's free license can settle the choice [S27]. (Moderate)
5. **Popularity isn't quality.** In Feb 2026, 44% of US adults had ever used ChatGPT, 24% Gemini, 17% Copilot, and 6% Claude [S5]. Traffic and token rankings don't measure accuracy [S18, S24]. (Strong)
6. **Every tool makes confident errors.**
   - Hallucination rates range from 22% to 94% across top models [S8]. Some flagships hallucinate about 50% of the time when they don't know the answer [S4].
   - Calibration varies widely [S21].
   - Accuracy is the top user complaint [S13], and "almost right" answers are the top frustration for 66% of developers [S23].
   - Always verify. (Strong)
7. **Sycophancy (flattering or agreeing with the user) is real.** Accuracy "collapses" when a false claim is framed as the user's belief [S8]. Which product flatters most is contested and changes by version [S19, S25, S30].
8. **Advice expires fast.** The #1 model changed in one day [S4], and 8+ frontier releases came out in five weeks [S14]. Date every recommendation. (Strong)
9. **Benchmarks are flawed.**
   - Up to 42% of a benchmark's questions can be invalid [S8].
   - Scores suffer from contamination, prompt sensitivity, and cherry-picked vendor results [S11].
   - Results depend on the agent harness [S14, S20].
   - They test the API, not the consumer apps people actually use.
   - (Strong)
10. **AI is strongest at explaining, writing, and guidance, and weakest at data analysis and images** [S17]. About 80% of ChatGPT use is guidance, information, or writing [S7]. (Moderate)
11. **Agents still fail most real work.** The best complete about 21% of real freelance projects [S21] and fail about a third of structured tasks [S8]. Keep "approve before acting" turned on [S1, S26]. (Strong)
12. **Stakes rule.** For low-stakes use, any major free tool is fine. For high-stakes work, use a top model at a high thinking level and review the output [S1].
13. **Re-run to check consistency.** Only 50% of medical exam questions were answered right by every model on every run. Topic mattered more than platform [S28]. (Research)
14. **Check citations yourself.** Reviews count links without verifying them [S29], and web citations are "hit or miss" [S3, S26].
15. **Also learned:**
   - Output runs about one school year above the prompt's reading level [S6].
   - More than 80% of students use AI for schoolwork, but only 6% of teachers find their school's AI policy clear [S8].
   - Models often fail to send people in crisis to human help [S21].
   - 82% of power users use two or more assistants [S25].

## Dated task shortlist (reviewer opinions, Feb–Oct 2026; Reported)
- General use: ChatGPT
- Writing and editing feedback: Claude
- Coding and agents: Claude Code or ChatGPT Codex
- Google schools: Gemini
- Microsoft schools: Copilot
- Cited research: Perplexity (contested; verify)
- Working across many sources: Gemini Notebook
- Images: Gemini or ChatGPT
- Avoid for students: Grok

## Prompt-writing rules for this topic
1. **Ask first** about the task and stakes, the ecosystem or license, free vs. paid, and privacy limits.
2. **Give a 2–3 tool shortlist plus a quick test.**
   - Run the same real prompts on each tool, using the tier users actually have.
   - Score instruction-following, accuracy, and how much work is left over.
   - Re-run key prompts, check citations, and probe for flattery.
3. **Date recommendations** ("as of <month year>; re-check monthly"). Describe tiers instead of hard-coding model versions.
4. **State that tier and effort matter.** High stakes means top tier, high effort, and human review.
5. **Build in verification:** check sources, flag uncertainty, and prefer "I don't know" to guessing.
6. **Counter flattery in feedback tasks:** ask for criticism and premise checks, and say "give exactly three changes; don't rewrite."
7. **Set the reading level explicitly** for student-facing output.
8. **Agents need approval** before anything that sends, spends, deletes, or publishes, and should get minimum access.
9. **Benchmark ranks aren't proof** that a tool fits a classroom.
10. **Student-facing prompts:** no loosely moderated tools, no student PII, and include a crisis-escalation line.
11. **Label evidence and name disagreements.**

## Key terms
tier · effort level · harness · capability index · Arena Elo · contamination · saturation · hallucination rate vs. accuracy · calibration · sycophancy · multi-homing · agentic mode. Definitions are in KNOWLEDGE_BASE.md §2.

## Gaps
- No measured data on citation accuracy (S15 was blocked).
- No K–12-specific testing.
- Education plans and privacy agreements aren't covered.
- Thin coverage of Copilot, teen use, and non-English use.
