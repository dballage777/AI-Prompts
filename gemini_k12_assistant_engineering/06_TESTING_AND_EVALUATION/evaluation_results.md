# Evaluation Results
**All scores below come from DESK REVIEW on 2026-11-05.** They were made by Claude reading each prompt's text against the 100-point rubric. **No prompt was run in Gemini**, because no Gemini access was available in this session. Treat every score as an upper bound until a live test is done (testing_framework.md).

## Templates (05_PROMPT_TEMPLATES)
Column key:
- **Inst. block**: the instruction block's word count.
- **1–13**: the rubric criteria, in order: Clarity, Role, Task, Context, Workflow, Accuracy, Instruction, UX, Consistency, Safety/Privacy, Ambiguity, Honesty, Maintainability.

| Template | Inst. block | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | **Total** | Main gaps |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| master_gemini_assistant_template | ~600 | 8 | 6 | 7 | 8 | 10 | 9 | 6 | 8 | 5 | 11 | 6 | 5 | 5 | **94** | A skeleton: depends on how it's filled in; no instructional block; no example |
| teacher_assistant_template | ~580 | 8 | 6 | 8 | 7 | 10 | 10 | 8 | 8 | 6 | 10 | 6 | 5 | 5 | **97** | No crisis rule (not needed for teacher-facing); environment-dependent Forms step |
| student_tutor_template | ~510 | 8 | 6 | 7 | 7 | 9 | 9 | 8 | 8 | 4 | 12 | 5 | 4 | 5 | **92** | No few-shot example of a good hint; limited missing-info handling; answer policy needs the teacher's choice |
| subject_specialist_template (math) | ~490 | 8 | 6 | 8 | 7 | 9 | 10 | 8 | 7 | 6 | 9 | 6 | 4 | 5 | **93** | Limits section is short; privacy block is shorter |
| administrative_assistant_template | ~445 | 8 | 6 | 8 | 8 | 9 | 9 | 4* | 8 | 6 | 11 | 6 | 5 | 5 | **93** | *Instruction is less relevant for admin work (scored ½) |
| specialized_support_template | ~430 | 8 | 6 | 7 | 7 | 9 | 8 | 7 | 7 | 4 | 12 | 5 | 5 | 5 | **90** | No output formats per product; still needs district-policy confirmation |
| interactive_onboarding_template | ~590 | 7 | 5 | 6 | 8 | 10 | 7 | 4 | 8 | 4 | 9 | 6 | 5 | 5 | **84** | Generic by design: role, task, and format must be filled in per project |

**Reviewer's caveat.** The same author wrote and scored these templates, so self-review bias is likely [E7 in the Claude knowledge base: separate the evaluator]. Have someone else re-score them, and test them live.

## Representative existing prompt: `gemini/NAHS_Parent_Communication_Gemini_Prompt_v2.txt` (v2.1)
| Criterion | Score | Notes |
|---|---|---|
| 1 Clarity | 6/8 | Clear parts and steps, but very long, with some repetition |
| 2 Role | 6/6 | Clear |
| 3 Task | 8/8 | Explicit workflows and deliverables |
| 4 Context | 8/8 | Capability tiers, environment matrix, storage design |
| 5 Workflow | 10/10 | A strong one-step-at-a-time design |
| 6 Accuracy | 9/10 | Matching rules, validation checks |
| 7 Instruction | 4/8 | Not an instructional tool; letter-writing guidance only (scored ½) |
| 8 UX | 8/8 | Progress lines, file checks, numbered choices |
| 9 Consistency | 6/6 | Exact sheet tabs and templates |
| 10 Safety/privacy | 12/12 | FERPA-aware, initials-only, no auto-send |
| 11 Ambiguity | 6/6 | Gate rules, conflict handling |
| 12 Honesty | 5/5 | Capability honesty, never claims creation |
| 13 Maintainability | 1/5 | **About 9,700 words.** It exceeds the length budget and risks the over-analysis Google warns about for Gemini 3+ [B X4]. A single monolith |
| **Total** | **89/100** | Minor revisions |

**Recommended revision (not yet applied, because it changes an existing deliverable and needs the user's approval):**
1. Make a lean core of about 2,000–2,500 words: rules, workflows, file-check pattern, approvals.
2. Move the storage schema, the validation checklist, the scenario handling, and the recovery tables into a knowledge file such as `NAHS_reference.md`, with explicit pointers to it.
3. Add a skills-ready name and description.
4. Live-test the result with test cases I1–I5, U5, and U7.
