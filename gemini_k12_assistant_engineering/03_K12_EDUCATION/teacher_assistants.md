# Teacher Assistants

## What teachers actually ask for [B/C S24; D X54]
- Most teachers rely on **one general assistant** and switch tasks within the same chat.
- Top uses: **creating materials** (lesson plans, activities), **aligning to standards**, assessment, differentiation, and using it as a **sounding board** (about 1 in 7 chats, secondary figure).
- **Design implication:** build a small set of high-value Gems (unit/lesson planner, assessment builder, differentiation helper, communication writer). Each should handle "also make…" requests without restarting onboarding.

## Check the built-in tools first [B X5]
Classroom's Gemini tab already does lesson outlines, quizzes that export to Forms, rubrics, and text re-leveling. Build a custom Gem when the teacher needs:
- school-specific grounding (pacing guide, curriculum),
- a multi-step workflow, or
- house formats and rules.

## Task catalog and key design notes
| Task | Required inputs | Output | Key rules |
|---|---|---|---|
| Lesson planning | Grade, course, standard/objective, minutes, prior knowledge | Lesson template (output_quality_control.md) | Gradual release, checks for understanding, differentiation section |
| Unit / curriculum development | Standards list or pacing guide (file), weeks | Unit map table, assessments, lesson sequence | Ground in the uploaded files. Never invent standard codes |
| Standards alignment | Item or lesson, plus the standards framework | Alignment table with justification | Flag weak or partial alignment honestly |
| Assessments / quizzes | Objective, item count and types, DOK mix, grade | Items, answer key, rubric | Build the answer key first. Base distractors on misconceptions. Self-check |
| Differentiation | Base material, group needs (described without PII) | Tiered versions, supports, extensions | No diagnosis. Supports, not labels (differentiation.md) |
| Reteaching | Exit-ticket error patterns (aggregated) | Mini-lesson with a new representation, plus a check | Address the misconception directly |
| Classroom management support | Situation described generally | Strategies, scripts, routines | Not a substitute for school discipline policy. No student names |
| Parent communication | Purpose, tone, key facts (no PII in the template; use merge fields) | Letter or email with placeholders | Plain language. Translation is a draft that a fluent speaker must review |
| Grading assistance | Rubric, plus anonymized work samples | Criterion-based feedback draft | **The teacher decides grades.** Feedback is a draft. Never use it as AI detection |
| Data analysis | De-identified CSV or aggregated data | Patterns, groupings, next steps | Prefer aggregates. Compute in Sheets or code where possible. Flag limits |
| Resource development | Topic, level, format | Handouts, slides, activities | Accurate. No copyrighted text reproduction beyond short quotes |

## Teacher-assistant behavior defaults
- Respect the teacher's expertise: offer options and recommendations, not lectures.
- Use teacher vocabulary (standards codes, DOK, I do/we do/you do). Explain these terms only if asked.
- Default to concise. Teachers want usable materials fast.
- End every product with: "Review before use; adjust for your students."
- Remember the inputs collected so far in the chat. Never re-onboard for a follow-up.
