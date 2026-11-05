# Custom Assistants in Gemini: Gems, Skills, Classroom, NotebookLM, API
**Verify before relying on any of this.** Feature availability changes often and differs by account, edition, and age setting. Last checked 2026-11-05 via search summaries [B/D].

## 1. Environment matrix (never confuse these)
| Environment | Who | How the assistant is built | Data handling (per Google, [B]) | Key limits |
|---|---|---|---|---|
| **Consumer Gemini app** (personal Google account) | Anyone | Gems until Nov 17, 2026 (then read-only), then **skills** | Personal-account terms. Chats may be used to improve models depending on settings [D]. **Not for student data.** | Gems become read-only Nov 17 and are removed Dec 17, 2026 [B X13] |
| **Gemini app with a Workspace for Education account** | Staff, and students where the admin allows | Gems (still current for work/school accounts; skills arrive in 2027) [B X14] | Core service under the Edu ToS. Chats not human-reviewed or used for training [B] | Admins control access by OU. Under-18 users get stricter filters. Some features are 18+ only |
| **Gemini in Classroom (teacher Gemini tab)** | Teachers (age setting 18+) | Built-in tools: lesson outline, quiz → Forms, rubric, re-leveling | Edu ToS | Fixed tools, not custom prompts. Some features need a paid edition |
| **Classroom-assigned Gems / Gemini Notebook (NotebookLM)** | Teacher builds; students use | Teacher writes instructions. Assignment attachments become knowledge files [B X16] | Edu ToS. Teacher insights into student use are rolling out [B/D] | Personal accounts can't access them. Teacher must enable. Student finds them under "Class learning tools" |
| **Guided Learning mode** | Students and anyone | Built-in. No custom prompt | Depends on account type | Tutoring built in. Consider it before building a custom tutor |
| **Google AI Pro for Education add-on** | 18+ users | Same app, higher limits | Edu ToS | Paid. Adds Sheets AI functions and canvas [B X22] |
| **AI Studio / Gemini API / Vertex** | Developers | System instruction, JSON schema, tools | API terms (separate DPA needed for student data) | Developer skills required. Not for typical teachers |

**Rule for every template:** state the intended environment at the top. Include a line telling the assistant what to do if a feature is missing ("If you can't create a Google Doc here, give me the content in a copy-ready format").

## 2. Gem anatomy (current for Workspace Education accounts)
- **Name:** short and task-specific ("Unit Planner, Grade 8 Science").
- **Description:** what it does and when to use it. This is also needed later for skills.
- **Instructions:** the prompt. There is no published character limit [D]. Keep it lean (architecture §3).
- **Knowledge files:** up to about 10 is the commonly cited figure [B/D; size limits disputed]. Drive files stay current [B]. Classroom attachments are imported automatically [B].
- **Default tool:** where offered (e.g., Canvas or Deep Research).
- **Wand / "rewrite instructions":** Gemini can rewrite your instructions. Review the result: it may drop rules [D; I].
- **Sharing:** recipients can see the instructions and file names [D]. Never embed private data.
- **Preview ≠ save.** Click Save [D X70].

## 3. Skills (the successor; personal accounts now, school accounts in 2027)
[B X13/X14; D X77/X78]
- Format: the open **SKILL.md** (name in lowercase-hyphenated form, description, instructions), at the root of an uploaded folder or zip. Create it with Gemini, from a template, with the manual form, or by upload (Settings › Skills).
- Invoked with `/` (or `@`) in any chat. Gemini may also apply a skill automatically. **Skills can stack** in one chat, whereas a Gem is its own chat.
- Sharing is listed as "coming soon". Reports mention a 100MB file limit.
- Migration: Gems become **inactive draft skills**, which must be activated.
- **Design implications [I]:**
  - The *description* now does routing work. Write it as what it does plus when to use it.
  - Because skills stack, keep each one single-purpose, and avoid global persona rules that would clash with other skills ("Within this skill, …").
  - Write instructions that don't depend on being the only voice in the chat.
- **Portable packaging (recommended for every template):**
  ```
  name: grade8-science-unit-planner
  description: Plans standards-aligned Grade 8 science units step by step. Use when a teacher wants a unit or lesson sequence.
  instructions: <the Gem instructions>
  files: <pacing guide, standards list>
  ```

## 4. Classroom deployment checklist (student-facing assistants)
1. The admin has enabled Gemini/Gems and NotebookLM for the student OU. Confirm with the tech team.
2. The teacher creates the Gem in Classroom and attaches only non-PII class materials.
3. Instructions include the student-facing guardrails (student_tutoring.md) and a rule that teacher instructions take precedence over student requests [C X9].
4. Test it as a student before assigning, using 06/test_cases.md.
5. Tell students what the tool is for, and that the teacher may review usage [B/D: teacher insights].

## 5. NotebookLM / Gemini Notebook vs Gem
- **Choose a Notebook** when answers must come **from specific sources** (readings, unit packet), with citations. It supports more sources, about 50 per one report [D].
- **Choose a Gem** when you need a **behavior or workflow** (tutoring style, multi-step planning, formatting).
- You can combine them: a Gem that tells students to use the class Notebook for facts.

## 6. What Gemini can and can't do with Google files (app; verify per account)
| Task | Typically possible in the app | Notes |
|---|---|---|
| Read uploaded files / Drive files | Yes (attach; Drive access depends on settings) | Can't read files the user doesn't attach or link |
| Create a Doc or Slides | Via **Canvas → Export to Docs/Slides** (Workspace account) [B X24, X23]; "Export to Docs" on responses | Not a silent background write. User clicks export |
| Create a Sheet | "Export to Sheets" for tables [D]; Sheets canvas needs the AI Pro add-on [B X22] | Verify per edition |
| Create a Form quiz | Classroom Gemini tab → Forms [B X5]; otherwise give Form-ready text | |
| Edit an existing Doc/Sheet in place | Use Gemini *inside* Docs or Sheets (side panel), where licensed | A Gem in the app usually can't edit files in place |
| Send email or run a mail merge | No (the assistant should never claim to) | Gmail or Docs features or an add-on, run by the user |
| Remember across chats | Not reliably | Store state in a Doc or Sheet and paste it back ("config card") |
