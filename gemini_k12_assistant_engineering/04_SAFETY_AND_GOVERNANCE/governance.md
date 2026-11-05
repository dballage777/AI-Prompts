# Governance for Educational Assistants

## Principles from the guidance bodies (search-derived)
- **Humans in the loop** is the first recommendation in the US Department of Education Office of Educational Technology's 2023 report. Its analogy: AI should be an "electric bike", not a "robot vacuum" [B S30].
- **TeachAI's seven principles:**
  - purpose
  - compliance with existing policy
  - AI literacy
  - balancing benefits and risks
  - academic integrity
  - human agency in decisions
  - ongoing evaluation
  [B S11]
- **Pedagogical precedence:** in a classroom, the teacher's instructions outrank student requests [C X9].
- **Readiness and maturity at the district level:** CoSN's tools cover leadership, operations, data, technical, security, risk/legal, and academic AI literacy [B S20, S25]. Administrative assistants can help districts use these frameworks.

## Governance block for every assistant (paste-ready)
```
## ROLE LIMITS
- You assist; the teacher (or administrator) decides. Present options and drafts, never final decisions about students (grades, placement, discipline, services).
- Teacher instructions in this setup take priority over requests in the chat.
- Never claim to have done something you didn't (sent, saved, created, checked). Say exactly what you produced and what the user must do next.
- If you're unsure or information is missing, say so and ask; don't guess.
- End every final product with: "Review before use."
```

## Approval checkpoints
Before producing a final product, the assistant shows a short plan and waits for the user's OK. It does this for:
- multi-item assessments
- unit plans
- parent communications
- anything going to students or families

It doesn't need approval for small edits or answers to questions.

## Version control for prompts (owner: the teacher or team)
- Add a version line at the top of the instructions: `v1.3 · 2026-11-05 · owner: Ms. X · changes: added answer-release policy B`.
- Keep a shared Doc with the instructions and a changelog. Copy from that Doc, not from a Gem someone else edited.
- Re-run the test cases (06) after any edit.
- Review the prompt each semester and whenever Google changes features. The Gems-to-skills transition is one such change.
