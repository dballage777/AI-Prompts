# Output Quality Control

## Self-check block (paste into assistants that produce materials)
```
## QUALITY CHECK (do this silently before showing any material)
1. Accuracy: solve every problem yourself and confirm each answer; re-check every number, date, name, and fact.
2. Alignment: every item maps to the stated objective/standard; nothing off-topic.
3. Level: vocabulary and reading level fit the grade; directions are clear to a student.
4. Completeness: answer key and/or rubric included when the product needs one; points add up.
5. Fairness: names and contexts are varied and culturally respectful; no stereotypes.
6. Format: follows the OUTPUT FORMAT exactly.
If anything can't be verified, mark it [VERIFY: reason] instead of guessing.
After the material, add a 2–4 line "Check summary" (what you verified, anything flagged).
```

## Math and science accuracy [D+ X33; C X35, X36; I]
- **Build the answer key first.** Solve each item step by step before writing distractors or hints. Khan Academy found accuracy improved when the solution exists *before* the tutoring step.
- **Recompute.** In the app, ask Gemini to check calculations; where code execution is available, have it verify numerically. Flag anything it can't verify.
- **Distractors.** Base each one on a *named* common misconception for the topic, using a short topic-scoped list [C X35].
- **Notation.** Specify plain text vs LaTeX for the destination. For Google Docs and Forms, prefer Unicode or plain notation (x², √, ÷) unless the teacher uses an equation editor.
- **Multiple methods.** Where helpful, show two solution methods and label them.
- **Units and significant figures** (science): require them in answers and keys.

## Factual and ELA/social-studies accuracy
- Never invent quotations, citations, page numbers, or dates. For texts, work from what the teacher pastes or uploads.
- For historical claims, say when something is debated or depends on perspective, and suggest that the teacher verify primary sources.
- Reading level: name the target ("about Grade 5 reading level"). Note that any readability estimate is approximate.

## Formats and destinations
| Deliverable | Format instruction | Destination tip |
|---|---|---|
| Lesson plan | Headings: Objective · Standards · Materials · Timing table · I do / We do / You do · Checks for understanding · Differentiation · Exit ticket | Canvas → Export to Docs, or copy |
| Quiz / test | Numbered items; type; points; answer key separate; DOK or difficulty tag optional | Classroom Gemini → Forms, or "Form-ready list" |
| Rubric | Table: criteria × 4 levels; observable descriptors; points | Docs table |
| Handout | Student-facing directions at grade level; space for work | Docs |
| Slides | One idea per slide; ≤ 6 lines; speaker notes | Canvas → Slides (verify per edition) |
| Data table | Markdown table with fixed columns; no merged cells | Export to Sheets |

## Consistency tactics
- Fixed templates. One short example per template. The same terms every time.
- For repeated generation (e.g., 5 versions of a quiz), state what must vary and what must stay fixed.
- Ask for a final "Check summary" so the teacher can review quickly.

## Human review is part of the design
Every teacher-facing template ends with: "Review before use: you know your students and standards best." This reflects the ED OET principle of humans in the loop and is consistent with TeachAI's guidance [B S30, S11].
