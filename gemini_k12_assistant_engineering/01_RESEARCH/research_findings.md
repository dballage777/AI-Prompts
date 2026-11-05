# Research Report: Gemini K–12 Educational AI Assistant Prompt Engineering (Deliverable 1)
Date: 2026-11-05.

**Method.**
- Six passes: validation, extraction, expansion, cross-reference, synthesis, and testing (as a desk review).
- **Access constraint:** this session's network blocked all 30 original source hosts. Evidence was gathered three ways:
  - (a) direct reading of Google's official GitHub repositories (tier A);
  - (b) about 30 targeted web searches, whose summaries are drawn from the real pages (tiers B, C, and D);
  - (c) GitHub search.
- No Gemini access was available, so **nothing was live-tested**.
- Every claim below carries its evidence tier. Before relying on a claim for anything important, check it against the primary source.

## Executive summary: the 12 findings that change how prompts should be written
1. **The container is changing.** Google is replacing Gems with skills (SKILL.md format, invoked with `/`).
   - Personal accounts: Gems become read-only on Nov 17, 2026 and are removed on Dec 17, 2026.
   - Work and school accounts: the change comes in 2027 [B: X13, X14].
   - Classroom-assigned Gems are a separate path [B: X16, X17].
   - Design every assistant so it can be deployed as a Gem now and a skill later: name + description + instructions + reference files.
2. **Gemini prefers concise, direct instructions.**
   - Google warns that Gemini 3+ "may over-analyze verbose or overly complex prompt engineering techniques used for older models."
   - Put persona, constraints, and format first or in the system instruction. Put the specific request after any long data. Gemini is less chatty by default, so ask for warmth explicitly [B: X4, X6].
   - Implication: keep the Gem's instructions lean, and move reference detail into knowledge files.
3. **System instructions persist across turns but are not a security boundary.**
   - "they do not fully prevent jailbreaks or leaks… exercise caution around putting any sensitive information in system instructions." [A: X1]
   - Anyone a Gem is shared with can see its instructions [D].
   - Never put student data or secrets in instructions.
4. **Knowledge files help but aren't reliable enough to hold rules.**
   - Users report Gems ignoring their files [D].
   - Classroom imports assignment attachments as Gem knowledge [B].
   - Keep safety and workflow rules in the instructions. Put an explicit "consult file X for Y" pointer near the top [D tip].
5. **Persona, Task, Context, Format** is Google's teacher-facing vocabulary [B: X8].
   - The task verb is the most important element.
   - Align templates to this vocabulary so teachers can maintain them.
6. **Pedagogical instruction-following is how Google itself frames tutoring** [C: X9].
   - Teacher and school instructions take precedence over student requests in classroom settings.
   - Encode persona, actions (ask grade level, give hints), and methods (Socratic).
7. **Unguarded answer-giving harms learning, and guardrails fix it** [C: X30].
   - Unrestricted GPT-4 practice led to a 17% drop once access was removed. A guardrailed tutor showed no harm.
   - Tutors must withhold final answers by default, give graduated hints, and require student work.
8. **Tutor turn design matters.** Short messages, one question at a time, and the student's grade and misconception included as context.
   - This pattern was used in Google DeepMind's UK RCT, where supervised LearnLM matched or beat human tutors [C: X12].
   - Human oversight was part of that result.
9. **Math accuracy needs its own system.**
   - Use human-written solutions or answer keys plus computation verification (a calculator or code) [D+: X33].
   - Calculating correctly is a different skill from judging a student's work correctly [X33].
   - Scope misconception diagnosis to a few candidates: 92% accuracy with 4 options vs 40% with 100 [C: X35].
   - LLMs over-flag student errors [C: X36].
10. **Teachers mostly want help making materials, and they use one general assistant** [B/C: S24, X54].
    - The highest-value templates are lesson and material creation, standards alignment, and assessment and differentiation.
    - Teachers move between tasks inside one chat, so assistants must handle task switching without re-onboarding.
11. **Privacy rules have to be designed in, not delegated.**
    - The Workspace for Education Gemini app isn't human-reviewed or used for training [B].
    - The consumer app is governed differently [D].
    - District practice is consistent: no PII, use pseudonyms, don't upload IEPs or 504s to unapproved tools, and the teacher owns substantive IEP decisions [D+: X56–X58].
    - COPPA's 2025 amendments did not codify the school-authorization exception [D: X63]. Verify before relying on this.
12. **Several things are explicit don'ts.** Don't build "AI detectors" (61% false positives on non-native writers [C: X47]). Don't claim learning outcomes the evidence doesn't support.
    - Evidence for AI in ELL and reading intervention is thin [C/D: X44–X46].
    - Teacher oversight is the consistent recommendation [B: S30, S11].

## Cross-reference matrix (Pass 4)
| Claim | Supporting | Challenging / caveat | Confidence |
|---|---|---|---|
| Guardrailed tutors beat answer-machines | X30 (PNAS), X9, X12 | X30's guardrailed arm showed no *gain* on exams | High for "avoid harm"; moderate for "improve" |
| AI tutoring improves learning | X31, X12, S23 (modest) | S23 shows effects shrink vs non-intelligent tutoring systems; X31 used an elite sample | Moderate, and design-dependent |
| Human-in-the-loop is essential | S30, S11, X12, X32, X40 | — | High (consensus) |
| Concise prompts work best on Gemini 3+ | X4 (official) | Complex multi-step assistants need structure | High for "avoid bloat", not for "short at any cost" |
| Knowledge files ground Gems | X16, X17 (official) | X74 anecdotes of files being ignored | Moderate |
| LLMs can diagnose misconceptions | X35 (scoped), X38 | X36 over-flagging; X33 grading errors | Moderate, and only when scoped |
| AI feedback improves writing | X39, X41 | Small effects; mostly not K-12 RCTs | Low to moderate |
| AI supports ELLs | X44 (engagement) | X45 null; X46 limited evidence | Low |

## What this means for prompt design (see the 02–05 manuals)
- Build assistants as **guided, stateful interviews** (interactive_workflows.md) that are lean enough for Gemini.
- Use a **hard-rules block** at the top of every assistant: privacy, no fabrication, approval before final products, teacher authority.
- Student-facing assistants:
  - Default to *withholding answers*.
  - Use one question per turn and short turns.
  - Ask for the student's own attempt.
  - Escalate to the teacher.
- Math assistants: verify every computed value, show the work, include an answer key built from a verified solution, limit the misconception list to the topic, and flag uncertainty.
- Name the **environment** (consumer Gemini, Workspace Education Gemini app, a Classroom-assigned Gem or Notebook, or the API) and its limits in every template.

## Limitations of this research
- No primary source was opened, except Google's GitHub repositories. Tier B and C claims come from search summaries.
- Nothing was live-tested with Gemini. The evaluation scores in 06 come from a written review against the rubric.
- Gaps (see 07_FUTURE_LEARNING/knowledge_gaps.md): the LearnLM prompt guide PDF text, the current Gemini 3.8 prompting page, the Cloud agentic-prompt doc, PTAC and FERPA primary documents, the COPPA rule text, IES practice guides, UDL/accessibility guidance, and Reddit and educator forums read directly.
