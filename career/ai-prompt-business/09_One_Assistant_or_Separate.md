# Selling to Districts: One Combined Assistant, or Separate Ones?

Drafted 2026-11-28. Covers four assistants:
1. Geometry/Algebra Assistant
2. Differentiation, Reteaching & Co-Teaching Assistant
3. Parent Communication & Mail-Merge Assistant
4. High School Study Helper

**Labels:**
- **Documented:** an official page I opened.
- **Inferred:** my own reasoning, based on the prompt texts themselves.

---

## 1. Recommendation

**Keep them as separate assistants, and sell them together as one package**: a "suite" with one license, one training and one set of documents.

Merging them into one assistant would make each one worse and much harder for a district to approve.

---

## 2. Why not one combined assistant

| Problem | Evidence from your prompts | Why it matters for selling |
|---|---|---|
| **Different users** | The Study Helper is for **students**; Parent Communication and Differentiation are for **teachers**. | Districts approve student-facing tools much more carefully than teacher-only tools (file 07). One combined tool would get the strictest review and the slowest approval. |
| **Rules that contradict each other** | The Study Helper's Rule 2: "Don't give final answers to homework, quizzes, tests." The Differentiation assistant builds **answer keys**. | In one assistant, a student could talk their way into teacher mode and get answer keys. Districts will ask about this. |
| **Very different privacy levels** | Parent Communication handles student records and guardian contacts, which FERPA protects (its own Rule R9). The Study Helper tells students never to share personal information. | Mixing the most sensitive tool with a student tool puts student-record handling in front of students. It's safer to keep sensitive data in a teacher-only tool. |
| **Length and reliability** | Parent Communication alone is about 720 lines, with 16 parts and its own step-by-step workflows. | One giant instruction set is harder for the AI to follow reliably (*Inferred*). It's also harder to test, and one fix can break another tool. |
| **Platform limits for students** | Google is retiring Gems in education accounts **no sooner than June 1, 2027**. Google says its new Workspace "skills" are "only to users over age 18." *Documented, Google Workspace Updates, 2026-09-30.* | Teacher tools can move to skills; student tools may need a different home, such as a Gem while Gems last, Classroom, or another approved platform. Separate tools let each move on its own schedule. |
| **Different update cycles** | The grade and mail-merge steps depend on Google Drive features. Tutoring depends on the AI model. | Separate tools can be updated and re-tested one at a time. |

---

## 3. How to package them

**Name idea:** *"Classroom AI Toolkit for High School"* (use your own brand, not the school's name).

| Tier | What's included | Who uses it | Approval difficulty |
|---|---|---|---|
| **Teacher Toolkit** (core product) | Differentiation, Reteaching & Co-Teaching · Parent Communication & Mail-Merge · Geometry/Algebra Assistant *(teacher version)* | Teachers only | Lower: staff-only. Parent Communication still needs a privacy review because it reads student records. |
| **Student Add-On** | High School Study Helper · Geometry/Algebra student guides (for example, your Unit 5 triangle research prompt) | Students | Higher: needs district approval for student AI use, age and platform checks, and parent communication. |
| **Training** | A 90-minute "AI for Busy Teachers" session plus train-the-trainer | Staff | Included in a license or sold separately (file 08). |

**A "front door" without merging anything:** include a one-page **Tool Picker** for teachers ("Need to… → use this tool"). It's a document, not an AI, so it does the job of "one place to start" with none of the risks of a merged assistant.

**Pricing** (*Inferred*, building on file 07):
- **Teacher Toolkit pilot:** $1,000–$2,000 per building.
- **District license:** $2,500–$6,000.
- **Student Add-On:** +$500–$1,500.
- **Yearly updates:** $500–$1,500.

All of these stay well under the $50,000 tier, where Indiana districts can buy by purchase order.

---

## 4. What to add to make the package easier to sell

### Must-haves before any district sale
1. **Remove school-specific names and settings.**
   - The Parent Communication prompt uses "NAHS" in its role name and in Drive folder and file names.
   - Replace those with a fill-in setting such as `[SCHOOL NAME]`, and add a short "set up for your school" step.
2. **Ownership clearance.**
   - These tools were built for your teaching job. Get written clearance from your district (policy 3231), or rebuild them on your own time and devices (file 07, section 3).
   - Keep the clearance letter in your sales kit.
3. **Portable versions.**
   - Package each tool as one plain instruction file that works as a Gem or skill, a ChatGPT GPT or a Claude Project.
   - Add a 1-page setup sheet for each platform.
   - This protects the product when Gems are retired (June 2027 for education).
4. **IT and privacy packet** (one page per tool), covering:
   - **Data handled:** none, student work, or student records plus guardian contacts.
   - **Who uses it:** teachers or students.
   - **Where it runs:** the district's own AI account, so you never see their data.
   - **Settings needed:** for example, Gem sharing is controlled by the district's Google Drive sharing settings (Documented, Google Help).
   - **Built-in safety rules:** for example, Parent Communication never sends email, and the Study Helper refers students in crisis to 988.
   - **How it lines up with IDOE AI guidance.**
5. **Test evidence with made-up data.** For each tool:
   - 5–10 test cases, the expected behavior, and what happened;
   - known limits;
   - a dated test log.
   - The Differentiation assistant's answer-key check and the Parent Communication validation checks are strong selling points. Show them working.
6. **Accessible documents.** Use real headings, alt text and good contrast in guides and handouts. Districts face WCAG 2.1 AA deadlines in 2027 or 2028 (file 07).

### What makes it sell faster
7. **A one-page quick-start for each tool,** plus a **2–3 minute demo video** with made-up data.
8. **The Tool Picker page** described in section 3.
9. **A shared "house rules" page** listing the rules all tools follow: no made-up facts, privacy first, nothing sent or changed without teacher approval, and honesty about limits. Make sure each prompt actually follows them.
10. **Student Add-On extras:**
    - a parent letter explaining the Study Helper;
    - a teacher guide on academic integrity and how to assign the tool in Classroom;
    - an age and platform checklist.
11. **A pilot evaluation kit:** a short before-and-after teacher survey (time saved, usefulness, accuracy problems seen). That gives you honest results for your next pitch.
12. **License, updates and support:**
    - a simple license (district staff use, no resale);
    - a version number and change log for each tool;
    - an update promise (re-tested twice a year and after major AI changes);
    - an email support window.
    - No auto-renewal, since Indiana schools can't accept it.
13. **Optional customization service:** district name, letter templates, grading codes (M, EX and so on), and local AI policy wording, for an extra fee.

### Gaps to fill
- **Geometry/Algebra Assistant:** its main file isn't on this branch, so I couldn't review it. Is it teacher-facing (making materials) or student-facing (tutoring)? That decides which tier it goes in. Your Unit 5 triangle research prompt is clearly student-facing.
- **Overlap check:** the Study Helper already covers math tutoring. If the Geometry/Algebra assistant also tutors students, consider making it a **math add-on module** for the Study Helper rather than a separate student tool.

---

## 5. Suggested order of work
1. Get district clearance, or decide to rebuild on your own time.
2. Remove school-specific names from Parent Communication and make the other tools' settings fill-in.
3. Build the Teacher Toolkit first: three portable files, quick-starts, the IT and privacy packet and test logs.
4. Pilot it in one nearby district (not your own), with training.
5. Add the Student Add-On once the pilot district asks about student use.

## Sources
- Google Workspace Updates, skills in the Gemini app and Workspace (2026-09-30; updated 2026-10-13 and 2026-11-09): https://workspaceupdates.googleblog.com/2026/09/skills-gemini-app-workspace.html. Documented.
- Google Help, "Share a Gem from Gemini Apps": https://support.google.com/gemini/answer/16504957. Documented.
- The prompt texts reviewed: NAHS Parent Communication Gemini Prompt v2 (uploaded) and HS Study Helper Tutor Prompt v1 (uploaded; also in `prompts/gemini/`); Geometry Unit 5 student research prompt (`prompts/gemini/`).
- Purchasing, privacy, accessibility and ownership details: see files 07 and GUIDE.md.

This is research, not legal, tax, or financial advice. Check your district's policies before selling materials made for your job.
