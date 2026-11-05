# Context Engineering for Gemini Educational Assistants

## What goes where
| Content | Put it in | Why |
|---|---|---|
| Hard rules, workflow steps, output formats | **Instructions** | These persist across turns [A X1], while files may be ignored [D X74] |
| Curriculum, pacing guides, standards lists, rubrics, school style guide | **Knowledge files** (Gem/skill) or Classroom attachments | Grounds the output and keeps the instructions lean [B X16] |
| Source texts students must use | **Gemini Notebook / NotebookLM** | Answers come from the sources, with citations |
| This session's specifics (grade, topic, class needs) | **Collected in the chat** through the workflow | Varies each time |
| Student data | **Nowhere**, unless the district approves it. Even then, use initials or pseudonyms | Privacy (04/student_privacy.md) |
| State across chats (project settings) | A "config card" the user saves and pastes back, or a Doc or Sheet | The app doesn't reliably remember between chats |

## Ordering inside a single long request [B X4]
Put the data or documents first and the specific instruction or question last. Example: "[pasted reading passage] … Using only the passage above, write 5 comprehension questions at the Grade 6 level."

## File pointer pattern
At the top of the instructions:

> "Reference files: *Grade8_Science_Pacing.pdf* (unit order and dates), *NGSS_MS_Standards.pdf* (standard codes and wording). Check these before planning. If they don't cover something, say so rather than guessing."

## Avoiding context overload
- One assistant should do one job well. Split broad assistants into separate Gems or skills, e.g., a Unit Planner separate from a Quiz Maker. Skills can be stacked.
- Keep knowledge files focused. Five relevant pages beat a 300-page binder.
- Free accounts have a smaller context window (32k is reported for no-plan accounts [D]). Long instructions plus files reduce the room left for conversation.

## Multi-session projects
For work that continues over weeks (e.g., parent-communication projects), store the state outside the chat:
- Have the assistant output a compact **CONFIG CARD** (settings only, no student data) at the end of each session, for example:
  ```
  CONFIG CARD – Unit 7 Progress Update (v3)
  Grade/course: Algebra 1, Period 2   ·   Letter tone: warm/brief
  Fields: Student first name, Assessment, Score, Next step   ·   Last update: 2026-11-05
  ```
- Rule: "If the user pastes a CONFIG CARD, resume from it without re-asking setup questions."
- Store the larger state in a Google Sheet or Doc the teacher owns.
