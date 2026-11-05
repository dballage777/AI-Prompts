# Gemini Prompt Architecture: Manual Core (Deliverables 3 and 4 framework)
Evidence tags: [A] read directly · [B] official, from search summaries · [C] research · [D] secondary · [I] synthesis or inference. Source IDs are in 01_RESEARCH.

## 1. Gemini-specific principles (don't assume Claude or ChatGPT habits transfer)
| # | Principle | Evidence | Contrast with Claude/ChatGPT practice |
|---|---|---|---|
| G1 | **Concise and direct.** Gemini 3+ "may over-analyze verbose or overly complex prompt engineering." | [B X4] | Claude also prefers clarity, but tolerates long structured system prompts well. Don't port 10k-word Claude-style prompts unchanged. |
| G2 | **Persona, constraints, and output format go first**, in the system instruction or Gem instructions. | [B X4, X6] | Similar |
| G3 | **With long data, put the specific question or instruction last**, after the data. | [B X4] | Same as Claude long-context advice |
| G4 | **Gemini is less verbose by default.** If you want a warm or conversational persona, ask for it explicitly. | [B X4] | — |
| G5 | **Few-shot examples need instructions with them.** Examples alone teach unintended patterns. Vary them, and test how many to use. | [B X7] | Similar |
| G6 | **Model parameters are mostly locked.** Newer models ignore temperature, top_p, and top_k (API). There are no knobs in the app. | [B X4] | Control comes from wording, not settings |
| G7 | **System instructions persist across turns** but do not prevent leaks or jailbreaks. | [A X1] | Same caution |
| G8 | **Restate the current date** for time-sensitive work. | [B X6] | Same |
| G9 | **Task verbs.** In Persona/Task/Context/Format, the task verb is the key element. | [B X8] | — |
| G10 | **Structured output.** In the API, use a JSON schema or `application/json`. In the app, ask for a markdown table or a fixed template with headings, and verify it. | [A X1] | The app has no schema enforcement |

## 2. The 22-part Gemini Assistant Framework (choose parts; don't use all by default)
Parts are grouped into six blocks. ★ = include in nearly every assistant. ◐ = include when relevant. ○ = rarely needed.

**A. Identity**
1. ★ **Assistant identity.** Name plus a one-line purpose.
2. ★ **Professional role.** For example, "experienced high school math teacher and instructional coach." Name concrete expertise, not just adjectives.
3. ★ **Primary mission.** One sentence: the outcome for the user.
4. ★ **Target users.** Teacher, student (with grade band), or admin.
5. ◐ **Educational environment.** Grade, subject, course, school context, and the Gemini environment (see custom_gems_design.md §1).
6. ◐ **Subject or specialty.** Standards framework (state standards, CCSS, NGSS, TEKS…). Ask the user for it; don't assume it.

**B. Knowledge and philosophy**
7. ◐ **Knowledge requirements.** What the assistant must know, and which knowledge files it should consult ("Use the uploaded pacing guide for unit order").
8. ◐ **Instructional philosophy.** Evidence-based defaults: explicit instruction, worked examples, retrieval practice, formative checks (03/instructional_design.md).

**C. Work**
9. ★ **Core responsibilities.** 3–7 bullet points.
10. ★ **Required workflows.** Numbered steps (interactive_workflows.md).
11. ★ **User onboarding.** A short welcome and the first question only.
12. ★ **Information collection.** One item per turn, or a small bundled set of choices. Inspect files before asking.
13. ★ **Clarification procedures.** When to ask, and when to proceed with a stated assumption.
14. ◐ **Decision-making rules.** If/then rules for branches, e.g., "If grade ≤ 5, use…".

**D. Boundaries**
15. ★ **Behavioral requirements.** Tone, length, one question per message, plain language.
16. ★ **Safety and privacy boundaries.** The hard-rules block (04/).

**E. Output and quality**
17. ★ **Output requirements.** Exact template, headings, tables, and where the result goes (Docs, Forms, Sheets, Slides).
18. ★ **Quality-control requirements.** A self-check before presenting work: accuracy, alignment, answer-key check, reading level.
19. ◐ **Error handling.** Missing, contradictory, or unreadable input.
20. ★ **Limitations.** What it can't do in this environment, said honestly.

**F. Lifecycle** (these mostly live outside the prompt: in 06 and in the prompt's version header)
21. ○ **Testing procedures.** Test prompts to run after editing (06/test_cases.md).
22. ○ **Revision procedures.** A version line and changelog, plus "After presenting work, offer: revise / regenerate / export."

### Choosing parts by assistant type
| Assistant | Must include | Usually skip |
|---|---|---|
| Quick single-task teacher helper (e.g., exit tickets) | 1, 2, 3, 9, 15, 16, 17, 18 | 7, 14, 19, 21, 22 |
| Multi-step teacher workflow (e.g., unit planner, mail merge) | All ★ + 7, 14, 19 | — |
| Student tutor | All ★ + 6, 8, 14 (escalation) | Long workflows |
| Admin/communications | 1–4, 9–13, 15–20 | 8 |
| Specialized support (IEP-adjacent, intervention) | All ★ + 7, 8, 14, 19 + strict privacy | — |

## 3. Length budget [B X4; I]
- Aim for **300–1,200 words** of instructions for most Gems.
- Complex multi-workflow assistants can run to about 2,500 words. Beyond that, move reference material into a **knowledge file**. Keep the rules, workflow steps, and output formats in the instructions.
- Never move safety rules or the workflow steps into files, because knowledge files can be ignored [D X74].
- Test: if removing a sentence doesn't change behavior in your test cases, delete it.
- Write rules as short imperative sentences. Use Markdown headings for each block. Skip deep nesting.

## 4. Major techniques: the 7-point pattern
Each technique below covers: **What · Why · When · How in Gemini · Example · Common mistakes · How to test.**

### T1. Role designation
- **What:** a professional identity with concrete expertise and standards.
- **Why:** it sets domain vocabulary, rigor, and tone [B X8; C X9].
- **When:** always.
- **How in Gemini:** first line of the instructions.
- **Example:** "You are an experienced Algebra 1 teacher and instructional coach. You write accurate, standards-aligned materials that a substitute could teach from."
- **Mistakes:** stacking many roles; adjectives without standards ("world-class genius").
- **Test:** check whether outputs use the right vocabulary and rigor for the grade.

### T2. Hard-rules block
- **What:** 5–10 non-negotiable rules near the top.
- **Why:** these persist across turns [A X1], and putting them first follows Google's ordering advice [B X4].
- **When:** always.
- **How:** a heading "RULES (always follow)" with short imperatives.
- **Example:** "Never ask for or repeat student names or ID numbers; use initials or 'Student A'."
- **Mistakes:** 40 rules; rules buried at the end; rules that contradict each other.
- **Test:** run the adversarial cases in 06/test_cases.md (e.g., a user pastes a roster with names).

### T3. Guided workflow (step machine)
- **What:** numbered steps, each defined as SAY / ASK / WAIT / CHECK / NEXT.
- **Why:** it prevents a dump-everything first message and stops the assistant inventing missing inputs [I; pattern validated in this repo's NAHS v2].
- **When:** any assistant that needs more than one input.
- **How:** see interactive_workflows.md.
- **Example:** "Step 2 of 5: Ask only for the grade level and standard. Then stop and wait."
- **Mistakes:** asking eight questions at once; no "stop and wait"; re-asking for things already given.
- **Test:** give partial answers and see whether it asks only for what's missing.

### T4. Context and grounding with files
- **What:** knowledge files (curriculum, pacing guides, rubrics) plus explicit pointers to them.
- **Why:** grounding reduces invention; Classroom imports class materials as knowledge [B X16].
- **When:** any school-specific content.
- **How:** "When writing lessons, follow the unit order in *Pacing_Guide.pdf*. If the file doesn't cover a topic, say so."
- **Mistakes:** assuming files are always read; uploading files that contain student data.
- **Test:** ask a question only the file can answer, and check whether the answer cites the file.

### T5. Output templates
- **What:** fixed section headings, tables, and a length for each deliverable.
- **Why:** consistency, and they make export to Docs, Forms, or Slides easier [B X8; A X1].
- **When:** any repeated deliverable.
- **How:** give the exact template in the instructions, with one short example.
- **Mistakes:** "make it nice"; formats that don't fit the destination.
- **Test:** generate the deliverable 3 times and compare the structure.

### T6. Few-shot examples
- **What:** 1–3 short exemplars of an ideal output or tutor turn.
- **Why:** tone and format transfer from examples [B X7].
- **When:** tutor dialogue style; feedback comments; question formats.
- **How:** label them clearly ("Example of a good hint:"), vary them, and always pair them with the rule they illustrate.
- **Mistakes:** a single example the model copies word for word; examples that contradict the rules.
- **Test:** check that outputs vary appropriately and aren't clones of the example.

### T7. Clarify-or-assume policy
- **What:** a rule for when to ask and when to proceed with a stated assumption.
- **Why:** it balances friction against accuracy [I].
- **When:** always.
- **How:** "If a missing detail changes the content (grade, standard, student needs), ask. If it's cosmetic (font, title), choose a sensible default and state it."
- **Mistakes:** asking about everything, or about nothing.
- **Test:** give an ambiguous request and see whether it asks exactly the essential question.

### T8. Self-check before presenting
- **What:** an internal checklist run before output.
- **Why:** it catches math errors, misalignment, and missing answer keys [D+ X33; I].
- **When:** any material for students.
- **How:** "Before you show the quiz, silently verify each answer by solving it yourself; if any answer is uncertain, mark it [VERIFY]."
- **Mistakes:** asking it to "double-check" with no criteria.
- **Test:** seed a known tricky item and see whether it gets flagged.

### T9. Honest limitations
- **What:** say what it cannot do here (e.g., "I can't send emails or edit your gradebook").
- **Why:** it prevents false claims about file creation or integration (custom_gems_design.md §1).
- **How:** a "LIMITS" section plus "never claim to have done something you didn't."
- **Test:** ask it to "send this to parents" and check that it explains the next step instead of claiming it sent anything.

### T10. Student-facing pedagogy guardrails
See student_tutoring.md. In short: withhold final answers by default, one question per turn, ask for the student's attempt first, use graduated hints, and escalate to the teacher. [C X30, X12]
