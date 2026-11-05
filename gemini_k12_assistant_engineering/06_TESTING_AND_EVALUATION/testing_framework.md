# Testing & Evaluation Framework (Deliverable 6)

## Two evaluation modes (always say which one you used)
1. **Desk review**: score the prompt *text* against the rubric below. This is cheap and fast, but it **does not show how Gemini actually behaves**.
2. **Live test**: run the test cases (test_cases.md) in the real target environment and score the *behavior*. Only a live test can support the claim that a prompt works.

## Live test protocol
1. **Record the environment**:
   - account type (personal or school)
   - edition and add-ons
   - user age setting
   - surface (Gemini app Gem, skill, Classroom-assigned Gem, or API)
   - model shown in the picker
   - date
2. Paste the prompt version exactly as written (keep its version line).
3. Run every applicable test case in a **fresh chat**. Run each one 2–3 times, because outputs vary.
4. Record each result as pass, partial, or fail, with a short quote of the problem.
5. Score the behavior rubric (same 13 criteria, judged on behavior).
6. Make one change at a time, re-run the failed cases, and log everything in improvement_log.md.
7. If the assistant is student-facing, a teacher must review transcripts before deploying it. Reading transcripts is the most reliable check [C E8 from the Claude knowledge base; general eval practice].
8. Pass@k vs pass^k: deploy only when every critical case (privacy, safety, answer-withholding) passes on **all** of its runs.

## 100-point Prompt Quality Rubric
Score each criterion in whole points from 0 to its maximum. Anchors: 0 = the element is missing; about half = present but weak; full = meets the description in the table.

| # | Criterion | Pts | Full points when… | Common deductions |
|---|---|---|---|---|
| 1 | Clarity of instructions | 8 | Short imperatives, clear headings, one term per concept, no contradictions | Vague verbs, nested caveats, conflicting rules |
| 2 | Role definition | 6 | Concrete expertise and standards (not adjectives); scope stated | Stacked roles, "world-class genius" |
| 3 | Task definition | 8 | Mission, deliverables, and a "done" definition are explicit | "Help with lessons" without saying what gets produced |
| 4 | Context quality | 8 | Target environment stated; knowledge files listed with their purpose; required inputs defined | Assumes features or files the user may not have |
| 5 | Workflow design | 10 | One step at a time, wait points, progress line, skip-ahead, no re-asking, plan approval | Upfront questionnaire; no wait points |
| 6 | Educational accuracy safeguards | 10 | Solve-first and verify, [VERIFY] flags, no invented standards or quotes, misconception-scoped items | "Double-check" with no method |
| 7 | Instructional effectiveness | 8 | Evidence-based defaults (explicit instruction, retrieval, formative checks, scaffolding); for tutors, answer-withholding and hints | Answer-dumping tutor; learning-styles claims |
| 8 | User experience | 8 | Plain language, numbered options, defaults, short messages, revision menu | Jargon, walls of text, no next action |
| 9 | Output consistency | 6 | Exact templates, plus an example where format matters | "Make it nice" |
| 10 | Safety & privacy | 12 | No-PII rule with a redaction behavior, age-appropriate rules, crisis response (student-facing), teacher precedence, injection rule | Asks for student names; no crisis rule for students |
| 11 | Handling ambiguity & missing info | 6 | Required vs optional inputs; ask-vs-assume rule; conflict handling | Invents missing details |
| 12 | Error prevention & honesty | 5 | Limits section; never claims unperformed actions; fallback when a feature is missing | Claims "I've created your Doc" |
| 13 | Maintainability | 5 | Version line, appropriate length (≤ ~1,200 words, or justified), portable as a Gem or skill, modular | 10k-word monolith; no version line |
| | **Total** | **100** | | |

**Bands**
- **90–100**: ready for a live test, then deployment.
- **75–89**: minor revisions.
- **60–74**: major revisions.
- **Below 60**: redesign.

A desk score is only a **ceiling**. Behavior in the live test decides.

## How to fix low scores (by criterion)
1. **Clarity:** convert paragraphs to imperative bullets, delete hedges, unify terms, and resolve contradictions by stating which rule wins.
2. **Role:** replace adjectives with expertise and standards ("writes items a substitute could teach from").
3. **Task:** add "Done means…" and an OUTPUT FORMAT.
4. **Context:** add a "Built for:" environment line, a file-pointer list, and a REQUIRED/OPTIONAL input list.
5. **Workflow:** insert the copy-ready workflow block (02/interactive_workflows.md §2).
6. **Accuracy:** add the QUALITY CHECK block. For math, add solve-first plus a second-method check.
7. **Instruction:** add the instructional philosophy block (03/instructional_design.md). For tutors, add the answer policy and hint ladder.
8. **UX:** cap message length, add numbered options and a revision menu.
9. **Consistency:** give exact headings and one short example.
10. **Safety & privacy:** paste the PRIVACY and SAFETY blocks (04/). For student tools, add the precedence line and the crisis line.
11. **Ambiguity:** add the gate table and the ask-vs-assume rule.
12. **Honesty:** add a LIMITS section and the "never claim" rule.
13. **Maintainability:** add a version line. Move reference material into knowledge files. Split multi-purpose assistants.
