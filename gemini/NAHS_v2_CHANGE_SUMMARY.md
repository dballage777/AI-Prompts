# NAHS Parent Communication Gemini Prompt — v2 Change Summary

## What improved
- **Gemini leads the conversation.** Every reply now starts with a progress line ("Step 2 of 8") and ends with exactly one next action. Gemini asks for one thing at a time instead of handing the teacher a checklist.
- **A welcome screen comes first.** Gemini doesn't create, search for, or process anything until the teacher picks 1 (New Project) or 2 (Update an Existing Project).
- **Every file request is explicit.** Each request says which file, what should be in it, why it's needed, and what happens next, with a tip on how to export it. Gemini then waits. It never assumes a file was uploaded and says so if none is attached.
- **Every upload gets a "File Check."** Gemini confirms receipt, reads the file, and reports ✅ / ⚠️ / ❌ with counts. It asks for a replacement only when the file can't be used.
- **Fewer questions.** Gemini doesn't ask anything it can find out from the files, doesn't repeat questions, and reuses files already uploaded. Related choices go in one numbered menu with ★ recommendations.
- **Academic "slots" keep the letter stable.** The letter uses fixed placeholders such as `{{Assignment 1 Score}}` and `{{Assignment Summary}}`, and each update fills them with that update's chosen assignments. Choosing different assignments never breaks the letter.
- **New tabs and rules.** Every imported value is kept on a Grade_History tab. Grade rules are explicit: blank stays blank, codes like M and EX are kept, and "missing" is reported only when the gradebook marks it.
- **Each project gets its own Drive folder.** v1 put all project files in one folder.
- **New sections.** Guidance for when the teacher goes off-path (questions, "start over," changing an earlier answer, stopping partway), and a section on helping the teacher send letters.
- **Privacy in chat.** Gemini refers to students by initials plus the last 4 digits of their ID, and shows full names only when the teacher needs to make a decision.

## What was kept from v1
Everything: the Project Registry and its columns, unique Project IDs, the Merge Data sheet and Letter Template doc, the Config tab and Project Card backup, student-ID-first matching with verified secondary matching, keeping all guardians, Exceptions and Change_Log tabs, selecting assignments, placeholder naming rules, checking that the letter and spreadsheet match, approval checkpoints, never sending email, never changing original files, no silent deletion, FERPA confidentiality, the A/B/C capability levels, the Safe Update method, and recovery steps. It also keeps the distinction between creating a Doc, creating a Sheet, preparing merge data, linking a doc to a sheet, and running a merge.

## How the new workflow runs
**New Project (8 steps):** Roster → Parent contacts → Check matches → Name the project → Choose what to include (including who gets a letter) → Write or approve the letter → Review and APPROVE → Create the files and report links, plus the Project Card.

**Update (7 steps):** Find the project in the Registry → Upload the gradebook → Choose assignments (every update; nothing pre-selected) → Match students and check → Review and APPROVE → Update (old values logged first; contacts untouched) → Results and mail-merge readiness.

**Deliberate change in order:** in the update workflow, matching (Step 4) happens *before* the approval (Step 5). Matching is only inspection, so it doesn't need approval, and this way the teacher approves with the real match results in front of them. The request listed approval before matching.

## Limitations and dependencies
- Whether Gemini can create or edit Drive files depends on the teacher's Gemini version and the district's settings. Editing an existing Sheet in place often isn't possible, so the prompt falls back to an export or copy-and-paste method that makes a backup first.
- A Doc and a Sheet aren't connected automatically. Actually sending letters needs a school-approved merge tool, a drafts-only Apps Script, or manual copying.
- Gemini can still make mistakes on large files. The validation counts and the teacher's spot-check matter.
- Works best with the Pro (or Thinking) model inside a Gem.
- This prompt hasn't been run in Gemini yet. Test it once with a small sample class before using it with full rosters.

## Validation checklist (read through against the prompt, not tested in Gemini)
| Requirement | Where |
|---|---|
| Starts by asking New vs. Update | Part 10 |
| Explicitly asks for the roster | Part 11, Step 1 |
| Explicitly asks for parent contacts | Part 11, Step 2 |
| Waits for each upload | Part 3.3–3.4 |
| Inspects files before moving on | Part 3.5, every step |
| Checks student/parent matches | Part 11, Step 3; Part 7 |
| Asks for a project name | Part 11, Step 4 |
| Asks which information to include | Part 11, Step 5 |
| Writes or accepts the letter | Part 11, Step 6 |
| Approval before creating files | Part 11, Step 7; R4 |
| Separate projects, never mixed | Part 6; R8 |
| Finds existing projects | Part 12, Step 1 |
| Explicitly asks for the gradebook | Part 12, Step 2 |
| Lists the gradebook's actual assignments | Part 12, Step 3 |
| Asks which assignments to include | Part 12, Step 3 |
| Keeps existing parent contacts | Part 12, Steps 4 & 6; R10; 13.6 |
| Validates all selected fields | Part 9 |
| Keeps update history | Change_Log, Grade_History, Gradebook_Imports, Registry_Log |
| Confidentiality | R9 |
| No claims about unavailable integrations | R11; Parts 4 & 5 |
| Works on its own | Self-contained; doesn't reference v1 |

## Revision: student IDs are optional (v2.1)
- Setup Step 1 now asks for **one file: the student roster with parent emails**. Student IDs aren't required, and Gemini won't ask for them or stop because they're missing.
- If the roster already has parent emails, **Step 2 is skipped**. Gemini asks for a separate parent file only when the roster has no emails.
- Students without IDs get a **Student Key** (S001, S002, …) that Gemini uses to keep track of each student across the spreadsheet tabs.
- **Matching by name:** an exact first and last name that appears only once in each file matches automatically. Repeated names and close-but-not-exact names (nicknames, typos, hyphenated names) still need the teacher's OK.
- Gradebook updates match by name the same way. IDs are used only when both files have them.
