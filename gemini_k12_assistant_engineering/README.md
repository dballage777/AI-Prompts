# Gemini K–12 Educational AI Assistant Prompt Engineering — Knowledge Base v1.0 (2026-11-05)
A separate project from `claude-knowledge/`. Read `CLAUDE.md` for usage rules.

> **Research status (read first).** All 30 original sources and most expansion sources were **blocked** by the build session's network. The findings come from web-search summaries (tiers B, C, and D) plus Google's official GitHub repositories, which were read directly (tier A). **No prompt has been live-tested in Gemini.** Read `01_RESEARCH/research_findings.md` §Limitations and `07_FUTURE_LEARNING/knowledge_gaps.md`.

## Routing table
| Task | Open |
|---|---|
| Write a new Gemini educational assistant | `02/gemini_prompt_architecture.md` → `05/` closest template → `03/` and `04/` for the domain |
| Make an assistant guide users step by step | `02/interactive_workflows.md` (Deliverable 5) |
| Decide between a Gem, a skill, a Classroom Gem, Notebook, or Guided Learning | `02/custom_gems_design.md` §1, §5 |
| Write the system instructions themselves | `02/system_instructions.md` |
| Grounding, knowledge files, multi-session state | `02/context_engineering.md` |
| Accuracy, formats, exports (Docs, Forms, Sheets, Slides) | `02/output_quality_control.md` |
| Pedagogy defaults | `03/instructional_design.md` |
| Student tutor | `03/student_tutoring.md` + `05/student_tutor_template.md` |
| Teacher materials | `03/teacher_assistants.md`, `03/assessment_design.md` + `05/teacher_assistant_template.md` |
| Math or another subject | `03/subject_specific_assistants.md` + `05/subject_specialist_template.md` |
| SpEd, intervention, ELL | `03/differentiation.md` + `05/specialized_support_template.md` |
| Administration | `05/administrative_assistant_template.md` |
| Privacy, safety, governance, limits | `04/*` |
| Score or test a prompt | `06/testing_framework.md` (100-pt rubric), `06/test_cases.md` |
| What we know and how well | `01/research_findings.md` (Deliverable 1), `01/source_evaluations.md` (Deliverable 2) |
| What changed or is missing | `07/*` |

## Deliverables map
1. Research report: `01_RESEARCH/research_findings.md`
2. Source library (ranked): `01_RESEARCH/source_evaluations.md` (+ `original_30_sources.md`, `expanded_sources.md`)
3. Prompt engineering manual: `02_GEMINI_PROMPT_ENGINEERING/` + `03_K12_EDUCATION/` + `04_SAFETY_AND_GOVERNANCE/`
4. Templates: `05_PROMPT_TEMPLATES/` (master, teacher, student tutor, subject specialist, administrative, specialized support, interactive onboarding)
5. Interactive workflow framework: `02_GEMINI_PROMPT_ENGINEERING/interactive_workflows.md`
6. Testing and evaluation: `06_TESTING_AND_EVALUATION/`
7. Persistent knowledge base: this folder (git-tracked in `dballage777/AI-Prompts`)
8. Future access instructions: `CLAUDE.md` + `FUTURE_ACCESS.md`

## Top 10 rules (the short version)
1. Name the target environment. Features differ by account, edition, and age, and Gems are becoming skills (school accounts in 2027).
2. Keep Gemini instructions concise and direct. Put rules, persona, and format first. With long data, put the request after the data.
3. Rules and workflow steps go in the instructions. Reference material goes in knowledge files, which may be ignored, so point to them explicitly.
4. Lead users one step at a time: wait points, no re-asking, plan approval before the final product.
5. Privacy by design: no PII, ever. Use merge fields and de-identified descriptions.
6. Solve first, verify, flag [VERIFY]. Never invent standards, quotes, or data.
7. Tutors withhold answers by default, ask one question per short turn, ask for the student's attempt first, use graduated hints, and escalate to the teacher.
8. Teacher instructions take precedence. The teacher or admin decides; the assistant drafts.
9. Be honest about limits. Never claim to have sent, saved, or created something it didn't.
10. Score with the rubric, live-test in fresh chats, and log every change.
