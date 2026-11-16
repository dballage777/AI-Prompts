# KNOWLEDGE BASE — Resumes, ATS & Tailoring
Topic: resumes, applicant tracking software (ATS), and tailoring a resume to a job without making anything up. Audience: US job seekers, 2024 and later.
Built 2026-11-11 from 30 user-supplied sources (S1–S30; see SOURCES.md). Per-source notes are in `sources/S#.md`, and the claim table is in `CLAIMS.csv`.
Purpose: the knowledge base behind the resume features of the Career and Christian Self-Help Bot (build, update, and tailor resumes; output .docx/.pdf).

Evidence labels:
- **Documented**: from an official, primary, or institutional guidance source.
- **Research**: from a survey or study with stated methods.
- **Reported**: from secondary, press, vendor, or anecdotal sources.
- **Inferred**: my own synthesis.

Strength ratings:
- **Strong**: two or more independent sources agree.
- **Moderate**: one solid source, or several weaker ones.
- **Limited**: one weak source.
- **Contested**: credible sources disagree.

Source mix to keep in mind:
- 13 university career centers: S2, S4–S6, S9–S14, S20, S27.
- NACE: S1, S3, S8, S23, S24.
- SHRM: S17, S18, S29, S30.
- Two US government sources (O*NET S7, OPM S22) and one Canadian government source (S19).
- Vendors: Workday S15, Enhancv S16, Greenhouse S21/S25, Huntr S28. Jobscan sponsored the NACE survey (S8/S23/S24) and supplied content for S27.
- One academic preprint (S26).
- There is **no independent, peer-reviewed test of ATS parsing** in the set.

---

## 1. Topic overview

**What it is.** Three linked practices:
1. **Writing a strong US resume.** Concise and reverse-chronological. Accomplishment bullets that start with action verbs and include results. Standard sections. [S2][S4][S5][S12][S13]
2. **Making it readable by ATS.** An ATS is employer software that stores applications, parses resumes into fields, supports keyword search, and increasingly ranks candidates with AI. [S6][S10][S15][S28]
3. **Tailoring each resume to a specific posting.** Reframe *real* experience in the posting's language. Never add experience you don't have. [S1][S2][S4][S12][S19]

**Why it matters now (2025–2026).**
- **AI on both sides.** 74% of US job seekers use AI in the job hunt [S21]. An estimated 40–80% of applicants use AI to write resumes [S29]. 53% of US recruiters say they've handed most screening to AI/ATS [S21]. [S21][S29]
- **Application floods.** 22% of job seekers use bots to auto-apply [S25]. Some employers went from thousands of resumes a month to thousands a day [S29]. Recruiters spend up to half their week filtering junk applications [S21]. [S21][S25][S29]
- **A trust crisis.**
  - 41% of US job seekers admit using hidden-text "prompt injections." 22% of US hiring managers have caught them in resumes [S21].
  - 32% of job seekers claimed AI skills they don't have, and 28% made fake work samples [S25].
  - Employers are responding with verification, assessments, and more in-person interviews [S17][S21][S29].
- **Homogenized resumes.** AI-tailored resumes look "basically the same" [S29] and blur together as "professional camouflage" [S1]. Specific, verifiable content stands out. [S1][S29]
- **Federal resumes changed.** Since **September 27, 2025**, USAJOBS (Title 5) resumes are capped at **2 pages**, and a longer resume makes the applicant ineligible [S22].

**Bottom line across sources.**
- Honest, specific, tailored, simply formatted resumes are the consensus.
- AI should act as an *editor and gap-finder*. The person stays the author and must be able to defend every line in an interview. [S1][S4][S5][S9][S11][S28]
- Strength: **Strong.**

## 2. Core concepts and glossary

- **ATS (applicant tracking system).** Employer software for collecting, storing, searching, and moving applicants through stages (Applied → Recruiter screen → Hiring manager → Assessment → Interview → Offer). People usually move candidates between stages. [S28][S10][S6] *Documented/Reported*
  - Common systems in 2025 postings: Greenhouse, Workday, Ashby, iCIMS, Workable, Lever, SmartRecruiters. The source of this list is a vendor sample [S28].
- **Parsing.** Extracting resume text into structured fields.
  - Workday: parsing "populates fields," results "vary based on resume format and order of words," and "use resumes that don't have images." It does **not** auto-fill Skills or Languages, and the user reviews the parsed data. [S15] *Documented*
- **Knockout (pre-qualification) questions.** Yes/no eligibility questions such as work authorization, required license, location, or minimum years. These are described as **the main automatic filter**. [S16][S28][S14] *Research/Reported, Strong-ish (vendor-heavy)*
- **AI ranking / fit scores.**
  - Most major ATS now offer AI match tiers or grades, for example Workday HiredScore A–D [S28].
  - 44% of interviewed recruiters had a fit score. Most used it as a guide, and 8% treated it as decisive [S16].
  - Low-ranked candidates "may never be reviewed" if there are enough top-graded ones [S28].
  - *Reported/Research*
- **Keyword matching.** Recruiters search, and AI ranks, by terms from the posting [S6][S10][S2].
  - Some systems are literal: "marketer" vs. "marketing" could mismatch [S10].
  - Others match by meaning: Workable treats "project management" ≈ "program management" [S28].
  - *Contested in detail*
- **Keyword stuffing.** Unnaturally packing in posting terms. It looks artificial, "may get it flagged," and recruiters dislike it. [S6][S10][S16] *Strong*
- **Prompt injection / hidden text.**
  - White or hidden text, or a pasted job description, meant to trick ATS or AI scoring. "ATS can detect this" [S6].
  - 22% of US hiring managers have caught it [S21], and it's treated as AI cheating [S1].
  - *Strong — never do it.*
- **Auto-apply bots.** Tools that mass-submit AI-tailored applications. They're advised against: employers "flag or filter AI-autonomous submissions" [S11], and recruiters spot them [S28]. They also feed the "AI doom loop" [S21][S25][S29]. *Strong*
- **AI self-preference bias.**
  - LLM screeners favor resume text that they themselves wrote. In tests, 67–82% of choices favored the model's own summary even after controlling for quality.
  - Candidates who used the same model as the screener were 23–60% more likely to be shortlisted.
  - The bias persisted, weaker, when AI only *polished* human text. [S26] *Research (preprint, summary section only)*
- **Master resume.** A comprehensive file of every role and bullet, from which targeted 1–2 page versions are cut. [S2][S14][S12] *Documented*
- **Tailoring.** Read the posting, highlight its key terms, and work them into the resume "where appropriate" / "if they align with your experience." [S12][S2][S4] *Strong*
- **Accomplishment bullet formulas.**
  - PAR (Project/Problem, Action, Result) [S2][S4].
  - Action verb + what + result [S2].
  - Action verb + how + result [S20].
  - *Strong*
- **Knockout honesty.** Answer pre-screen questions truthfully, and apply where you meet hard requirements. [S14][S16][S28]
- **Skills-based hiring.** Nearly 70% of surveyed employers use it. Employers want *examples* of skills, not lists. [S23][S8] *Research (small, vendor-sponsored)*
- **O\*NET.** The free US Department of Labor occupational database: tasks, technology skills, "Hot Technologies," job titles, transferable skills, and a military crosswalk. [S7] *Documented*
- **Federal (Title 5) resume.** Covered by the 2-page rule. Requires month/year dates, hours per week, and series/grade for federal jobs [S22]. *Documented*

## 3. Key principles and frameworks

1. **Truthfulness is non-negotiable.**
   - "Lying on your resume is never a good idea" [S19].
   - "Don't let AI invent experiences" [S4].
   - "Use AI to help you think through how to present your real experience. Don't use it to fabricate a new one." [S28]
   - AI "will sometimes invent details or exaggerate experience to match a job description" [S4]. AI creates statements "not based on fact" [S9]. AI "can imagine having a credential" [S1].
   - **Strong.**
2. **The interview-defense test.** Could you defend each line in an interview? Employers increasingly verify (background checks, interviews, assessments, fraud detection). [S1][S4][S8][S17][S21][S29] **Strong.**
3. **The person authors, AI edits.**
   - AI "should not be the primary author" [S5].
   - "The documents you create and submit should be your own" [S9].
   - CMU "strongly discourages" chatbots generating most bullets, and suggests feedback prompts, not demand prompts [S11].
   - Develop your own narrative first [S3].
   - **Strong** (see §9 for nuance).
4. **Tailor every application, from real experience.** "Ideally, each application you submit has a tailored resume" [S12][S2][S16][S19]. Vendor data suggests tailored resumes roughly double interview rates (correlational) [S28]. **Strong.**
5. **AI finds the gap; the human fills it truthfully.** "AI flagged the gap. The student authentically addressed it." [S1]
   - A missing requirement becomes interview prep or a "not a fit" decision. It is never invented content. [S4]
   - **Strong.**
6. **Evidence over adjectives.** "It is not enough … to simply list their skills: Employers want to see examples." [S8][S23] Quantify where possible [S2][S4][S5][S13][S19]. **Strong.**
7. **Simple formatting serves both machines and people.**
   - Parsers struggle with images, tables, text boxes, headers/footers, and unusual characters [S2][S6][S13][S15][S27].
   - Some ATS display the original file to people [S27][S28].
   - Simple formatting costs little even if its ATS effect is debated [S28] (Inferred).
   - **Strong.**
8. **Don't game the ATS; don't fear it either.**
   - No universal "ATS score" exists. Scanner tools score against their own criteria [S28]. A perfect keyword match isn't necessary [S6].
   - Knockout questions and recruiter volume explain most rejections [S16][S28].
   - **Contested** on how much automated rejection happens (§9).
9. **Quality over volume.** Avoid spray-and-pray and auto-apply. Applying to about 15 jobs at one company is a red flag [S28]. Mass applying makes it harder to stand out [S25][S29][S11][S21]. **Strong.**
10. **Privacy minimization.**
    - Remove personal identifying info before sharing with AI [S9].
    - Use a temporary or institutional chat [S4].
    - Avoid sharing NDA or clearance details [S2].
    - Never include an SSN, photo, age, marital status, religion, or politics [S19][S5][S14].
    - **Strong.**
11. **Keep the user's voice; avoid homogenized AI text.** [S1][S3][S4][S11][S29] **Strong.**
12. **The user makes career decisions.** Don't let AI choose a career path. Check with people (career counselors, mentors). [S3][S20] **Strong.**

## 4. Best practices and methods, step by step

### 4a. Intake (build from scratch or update an upload) — Documented + Inferred
1. **Get the target first:** the job posting or job title, industry, and level. Save the posting as a PDF, because postings disappear. [S12]
2. **Collect facts in the user's words.** For each role, record:
   - organization, city/state, exact title, and month/year dates [S2][S4][S6][S22];
   - what they did, how, for whom, at what scale, and the results (numbers if known) [S2][S4];
   - unpaid work, volunteering, projects, and internships, which all count [S2][S19][S23].
3. **Ask for specific detail, not a generic prompt.** Values, skills, and stories make better material. [S3][S11]
4. **Build a master resume / bullet bank** from these facts, then cut targeted versions. [S2][S14][S12]
5. **Use O\*NET as a recall aid** (Inferred from [S7]):
   - Look up the user's past or target occupation.
   - Show its tasks and technology skills, then ask: "Did you do or use any of these?"
   - Add only what the user confirms.

### 4b. Sections and order (US default) — Documented, Strong
1. **Header:** name in the document body, large and bold, not in a Word header field [S13][S27]. Then one contact line: city and state, phone, professional email, and optionally a LinkedIn URL [S4][S5][S14][S27].
2. **Optional summary/objective.** Make it specific and focused on what you offer [S13][S27]. Some recruiters skip it [S28].
3. **Education.** List the institution, city/state, full degree name and major, and graduation month/year. GPA is optional (include it if 3.0+ or required) [S2][S4][S5][S13]. Students put Education first; experienced workers usually put it after Experience (Inferred from [S2][S5]).
4. **Experience.** Reverse chronological. Organization, location, title, and dates, followed by bullets [S2][S5][S12][S13]. Headings can be relabeled for the target ("Research Experience," "Relevant Experience" + "Additional Experience") [S2][S12].
5. **Optional sections:** Projects, Leadership & Activities, Volunteer, Certifications, Awards.
6. **Skills.** Technical, language (with honest levels: beginner/intermediate/advanced/native), lab, and tools [S5][S12][S27].
7. **Leave off:** photo, age, gender, marital status, religion, SSN, references, "References available upon request," hours worked, and reasons for leaving [S2][S5][S13][S19].

### 4c. Writing bullets — Documented, Strong
- Start with an action verb, with no "I" or "responsible for" [S2][S5][S12]. Use present tense for current roles and past tense for past roles [S4][S12] (see §9 for UVU's exception).
- Formula: **action verb + what you did (with scale) + result**, or PAR [S2][S4].
  - Example progression [S2]: "Led a team of five designing a new product focused on reducing production costs, achieving a 20% reduction in production costs."
  - If there are no numbers, describe the role and its positive outcome [S2].
- Use numerals ("5," not "five") and include scope, budget, staff, and percentages [S12][S28][S4].
- Upgrade verbs: Worked → Contributed → Improved; Responsible for → Managed → Spearheaded [S12]. Harvard has a verb bank sorted by skill [S5].
- 3–6 bullets per role; S13 suggests 3+ quantified bullets, and S19 suggests at most 5–7 bullets per section. Use phrases, not sentences [S5].
- Show transferable skills with a real example (e.g., "Led … recruitment … increase in applications from 70 to 114") [S12].

### 4d. Tailoring to a posting (truthful method) — Documented, Strong
1. Read the whole posting, including "role and responsibilities," not just the requirements [S28]. Earlier bullets usually matter more [S2].
2. Highlight the key skills, tools, titles, and repeated verbs [S12][S2][S10]. Employers often state the needed skills in the description [S8][S23].
3. **Make a gap table:** posting term → user evidence (yes / partly / no) [S4][S9]. Inferred: show this to the user.
4. **Covered terms:** mirror the posting's exact wording "where it genuinely applies, without changing the meaning" [S4][S2][S12]. Use the full term + acronym, for example "Search Engine Optimization (SEO)" [S6][S10][S27].
5. **Partly covered terms:** ask the user for a real example before adding the term [S1][S9].
6. **Not covered:** don't add it. Note it as a gap and a possible interview-prep topic, or a sign the job isn't a fit [S4][S1].
7. **Re-order:** put the most relevant roles and bullets first and rename section headings [S12][S13][S20].
8. **Check naturalness.** Recruiters flag resumes that mirror the posting "too close" [S28], and stuffing looks artificial [S6][S10][S16].
9. **Check eligibility:** does the user meet the hard requirements, and how will they answer knockout questions honestly? [S14][S16][S28]

### 4e. ATS-safe formatting (default spec for .docx/.pdf output) — Documented; numbers vary (see §9)
- Single-column body. No tables, text boxes, images, logos, icons, charts, or skill bars [S2][S6][S13][S14][S27].
- Contact info in the body, not in a header or footer [S13][S14][S27][S28].
- Standard headings: Education, Experience/Work Experience, Skills, Certifications [S6][S10][S27].
- Standard font: Calibri, Arial, or Times New Roman [S4][S6][S27]. Body 10–12 pt; name 14–24 pt [S2][S4][S12][S13][S27].
- Margins 0.5–1 inch [S2][S4][S12][S13][S27]. Use plain round bullets (• or -) [S2][S27].
- Use one consistent date format: "Jun 2020 – Present" or "06/2020 – Present" [S27].
- Length:
  - 1 page for students and early-career.
  - Up to 2 pages with substantial experience (10+ years, or an advanced degree) [S2][S4][S13][S16][S19].
  - **Federal (Title 5): a hard 2-page maximum** [S22].
- Build it in Word or a plain document. Avoid Canva, LaTeX, and design-heavy online builders [S6][S10][S28].
- Use a simple, plain layout rather than a designed template; the sources conflict on templates (§9).
- **File type:**
  - Follow the posting's instructions first [S27].
  - Otherwise, a text-based PDF is the most common recommendation [S6][S13][S22][S27]. Never send a scanned or image PDF [S6][S14][S27].
  - Keep a .docx ready, because some sources report that Word files parse better in Workday [S28].
  - **Contested** (§9).
- **Copy-paste parse test:** copy all the text from the PDF into a blank document. It should be selectable, in order, and free of odd symbols. [S6]
- File name: use the person's first and last name, for example "Jane Doe Resume" [S14]. Some sources suggest versioning the name per application.

### 4f. Federal (USAJOBS, Title 5) mode — Documented [S22]
- **Hard 2-page limit** starting Sept 27, 2025. A resume longer than 2 pages makes the applicant ineligible.
- For each job, include:
  - title and employer (plus series/grade for federal jobs);
  - start and end dates as month/year (05/2019 – 08/2022);
  - **hours per week**;
  - a description aligned with the announcement's qualifications.
- Contact details: name, email, phone. Education: school, completion date, degree type, GPA.
- Optional: security clearance, training, languages, affiliations, publications, special-program eligibility.
- Formatting:
  - Recommended fonts: Lato, Calibri, Arial, and similar.
  - Margins 0.5 inch; 14 pt titles, 10 pt body.
  - Save as PDF to keep the page count.
  - File size 5 MB or less.
- The USAJOBS resume builder applies these settings.
- Exceptions: non-Title 5, judicial, and legislative agencies, and positions that require a CV. Always check the announcement.

### 4g. Using AI responsibly (what the bot should model) — Documented, Strong
- Prefer feedback prompts ("give targeted feedback on…", "where could I add metrics?") over demand prompts ("build me a resume") [S11][S9].
- Good uses:
  - analyze a resume against a job description [S4][S9];
  - check keyword fit [S9][S10];
  - suggest stronger verbs [S11];
  - find where experience is undersold [S4];
  - generate interview questions [S9].
- Ask AI for sources and verify them. AI knowledge can be outdated and AI makes mistakes. [S2][S3][S11][S20]
- Don't use live AI during real interviews [S11][S20].

### 4h. Final QA checklist (run on every draft) — Documented [S4][S5][S6][S13][S27]
1. Contact info is complete and correct.
2. Formatting is consistent: dates, bold and italics, punctuation, tense.
3. No spelling or grammar errors, including real-but-wrong words like hear/here.
4. Every bullet starts with a verb and shows a result where possible.
5. The resume is tailored, and the most relevant content is in the top third.
6. It passes the ATS-safe checks and the parse test.
7. The length is right.
8. **Every claim is true and defensible.**
9. The user has reviewed it and it sounds like them.

## 5. Examples and models worth copying

- **Bullet progression** [S2]: "Led a team design a new product" → "Led a team of five … focusing on reducing production costs" → "… achieving a 20% reduction in production costs."
- **Transferable-skill bullet** [S12]: "Led the Business Oriented Women (BOW) recruitment process by marketing to potential members; resulting in an increase in applications from 70 to 114."
- **Verb ladder** [S12]: Learned → Gained Experience → Implemented.
- **Tailoring prompt that preserves meaning** [S4]: "Where could I update my resume to better reflect the language they're using, without changing the meaning of what I've written?"
- **Gap-finding prompt** [S4]: ask which experiences match the core competencies, which are missing, and where relevant experience is undersold.
- **Feedback-style prompts, not demands** [S11]: "Give me targeted feedback on my draft resume…" instead of "Build me a resume…"
- **Accountability question** [S1]: "Can you have someone ask you about this document during an interview?"
- **Acronym pattern** [S6][S10]: "Certified Public Accountant (CPA)" and "Search Engine Optimization (SEO)."
- **Education line** [S6][S10]: "Bachelor of Science, Accounting."
- **Date patterns** [S27][S22]: "Jun 2020 – Present" (private sector); "05/2019 – 08/2022" + hours/week (federal).
- **AI-skill wording when true** [S24]: "asking effective questions/prompts or checking AI outputs."
- **Mitigation evidence** [S26]: screeners told to ignore human-vs-AI authorship showed much less self-preference. This is a reason to tell users that AI polish isn't a guaranteed advantage.

## 6. Common mistakes and how to avoid them

| Mistake | Fix | Sources |
|---|---|---|
| AI-invented experience, credentials, metrics or skills | Use only user-supplied facts; ask for real numbers; mark gaps | [S1][S4][S9][S19][S25][S28] |
| Claiming AI skills you lack (32% admit it) | Ask what AI work they actually did; describe it accurately | [S25][S24] |
| Hidden text / pasted job description / prompt injection | Never; ATS can detect it and hiring managers catch it | [S6][S21][S1] |
| Keyword stuffing or mirroring the posting "too close" | Natural wording; terms only where true; keep the user's voice | [S6][S10][S16][S28] |
| Generic, untailored resume | Tailor each application from the master resume | [S12][S16][S19][S28] |
| Homogenized AI voice | User drafts or approves; feedback prompts; specific details | [S1][S3][S5][S11][S29] |
| Auto-apply / mass applying | Targeted applications; track applications to avoid duplicates | [S11][S18][S21][S25][S28] |
| Tables, columns, text boxes, graphics, icons, skill bars | Single-column plain layout | [S2][S6][S13][S14][S27] |
| Contact info in Word header/footer | Put it at the top of the body | [S13][S14][S27][S28] |
| Image or scanned PDF; Canva/LaTeX exports | Text-based PDF from Word/Docs; run the copy-paste test | [S6][S10][S14][S27] |
| Creative headings ("Professional Journey") | Standard headings | [S6][S27] |
| Acronym only ("SEO") | Full term + acronym | [S6][S10][S13][S27] |
| Inconsistent dates, odd bullet symbols | One date format; plain bullets | [S27][S6] |
| Duty lists ("Responsible for…") | Action verb + result | [S2][S12][S19] |
| Personal data (photo, age, SSN, marital status) | Omit | [S5][S14][S19] |
| Over-long federal resume (>2 pages) | Hard 2-page cap; check before export | [S22] |
| Lying on knockout questions; applying when clearly unqualified | Answer truthfully; check hard requirements | [S14][S16][S28] |
| Promising "beats the ATS"/a score target | Explain that systems vary; scores are self-checks | [S10][S16][S28] |
| Typos and real-word errors | Proofread manually; a second reader | [S5][S6][S27] |

## 7. Tools and resources: which source is best for what

| Need | Best source(s) |
|---|---|
| Honesty and AI-ethics rules, interview-defense test | S1, S4 (AI page), S9, S11, S28 |
| How to use AI well and what to avoid | S3, S11, S20, S9 |
| US resume structure, bullets, and verbs | S2, S5, S12, S4 |
| QA checklist | S4, S13 |
| ATS-safe formatting | S6, S13, S27, S10, S14 (summary-only) |
| What a real ATS parser does | S15 (Workday docs) |
| Whether ATS auto-reject (myth vs. reality) | S16, S28 (vendors), versus S21, S30, S6 |
| Tailoring method | S12, S2, S4, S10 |
| Skills and keywords for an occupation; military translation | S7 (O*NET) |
| What employers want on entry-level resumes | S8, S23, S24 |
| Federal resumes | S22 |
| Fraud and authenticity trends | S17, S21, S25, S29 |
| AI self-preference in LLM screening | S26 |
| Transparency and regulation context | S30 |
| Canadian contrast (honesty, no SIN or photo) | S19 |

## 8. Evidence strength

**Strong**
- Never fabricate; the interview-defense test [S1][S4][S9][S19][S28].
- The person authors and AI edits [S5][S9][S11][S3].
- Tailor every application [S2][S12][S16][S19].
- Show evidence, not lists, and quantify [S2][S8][S19][S23].
- No keyword stuffing or hidden text [S6][S10][S16][S21].
- Avoid images, tables, text boxes, and contact info in headers or footers [S2][S6][S13][S15][S27].
- Full term + acronym [S6][S10][S13][S27].
- Standard headings [S6][S10][S27].
- Text-based files, never scanned [S6][S14][S27].
- Leave out personal data [S5][S19][S14].
- Avoid auto-apply [S11][S25][S28][S29].
- Employers increasingly verify [S17][S21][S29].

**Moderate**
- Knockout questions are the main automatic filter: S16 and S28 are vendors, and S14 is summary-only.
- Workday parsing behavior [S15] comes from a single but primary source.
- The federal 2-page rule [S22] is primary but a single source, and it may change.
- Skills-based hiring is about 70% [S23]: a small, sponsored survey.
- AI self-preference [S26]: one preprint that tested only the summary section.

**Limited**
- "Tailored resumes double interviews" [S28]: vendor, correlational.
- ".docx has 23% fewer Workday errors" [S28]: unnamed study.
- "70–80% never reach a person," "90% use ATS" [S6] and "97.4% of Fortune 500" [S10]: no sources given.
- The 75% match target [S10]: unsourced.
- Recruiters read for 6–10 seconds [S2][S28]: uncited.

**Contested**: see §9.

## 9. Where sources disagree

1. **Do ATS auto-reject resumes?**
   - **Yes or partly:**
     - "70–80% never make it through" [S6], unsourced.
     - AI "may screen out" resumes [S18] (2022).
     - "Some ATS rank candidates before a human reads a single word" [S1].
     - 53% of recruiters handed most screening to AI/ATS [S21].
     - 71% of employers let AI reject without human oversight [S30] (Resume Builder survey).
     - 19% say their tools screened out qualified applicants [S29].
   - **Mostly no:**
     - 92% of 25 recruiters said their systems don't auto-reject for format or content [S16].
     - "No major ATS on the market today auto-rejects your resume" [S28].
     - Recruiters usually still see resumes [S14].
     - Workday parsing is reviewable data entry [S15].
   - **Why they differ:** definitions (rejection vs. ranking that buries a candidate), small samples, and commercial interests on both sides.
   - **Synthesis (Inferred):** knockout questions can auto-disqualify; AI ranking can effectively bury low matches [S28]; format alone rarely causes rejection. Don't scare users, and don't promise anything.
2. **PDF vs. .docx.**
   - PDF preferred: [S6][S13][S27][S22].
   - Either format is fine: [S10][S18][S28].
   - .docx parses better in Workday: [S28], unnamed study.
   - **Synthesis:** follow the posting's instructions. Otherwise use a text-based PDF, and keep a .docx ready. The bot produces both.
3. **Templates.**
   - "Use a basic, text-focused ATS-compatible template" [S2].
   - "Do not use a template" [S4][S13].
   - Avoid online builders and Canva [S6][S10].
   - Harvard offers Word templates [S5]; its "Accessible" version uses tables (Inferred risk).
   - **Synthesis:** a plain single-column document with no design elements.
4. **Columns.** Avoid two columns [S6][S14]; one or two columns are OK [S10]; two columns won't cause rejection but may mislead a preview [S28]. Default to one column.
5. **Length.**
   - One page for students [S12][S13][S14].
   - 1–2 pages [S2][S4][S16][S20].
   - At most 2 pages [S19].
   - Two pages perform as well as one [S28] (vendor).
   - Federal: a hard 2-page maximum [S22].
6. **Margins and fonts.** Margins range from 0.5 in [S22] to 0.5–0.75 in [S2] to 0.5–1 in [S4][S12] to 1 in [S14][S27]. Body text 10–12 pt everywhere, but federal guidance suggests 10 pt body [S22]. Any value in range is fine.
7. **Tense for a current job.** Present tense [S4][S12] vs. past tense "even for current jobs" [S6]. Default to present tense for current duties; past tense for completed achievements is acceptable.
8. **Exact match vs. semantic match.** Even slight variations may mismatch [S10] vs. semantic matching [S28]. Safe course: mirror the exact term once, naturally, where it's true.
9. **Keyword-match targets.** "Aim for at least a 75% match" [S10] vs. "A perfect keyword match isn't necessary" [S6] vs. scanner scores are not a real ATS score [S28]. Treat coverage as a self-check, never a target to hit with padding.
10. **How much should AI write?**
    - Don't let AI generate most bullets [S11]; AI shouldn't be the primary author [S5]; submit your own documents [S9].
    - But Fresno offers "Write concise resume bullets for my role…" prompts [S20], and NACE's course uses AI to suggest keywords [S1].
    - S26 suggests LLM screeners favor LLM-styled text, while recruiters flag AI-mirrored resumes [S28].
    - **Synthesis:** the bot may draft from the user's own facts, but the user edits, approves, and owns the result. Keep their voice.
11. **Summary section.** Include an optional objective or summary [S13][S27] vs. one recruiter doesn't read it [S28]. Keep it short and specific, or skip it.
12. **When to apply.** Within 24 hours [S18]; within 48–72 hours [S16]; early, because pipelines close at about 5 interviews [S28]. All agree earlier is better.
13. **Address.** Full street address [S5][S19] vs. city and state (common US practice per [S4][S14], Inferred). For privacy, city and state is enough.

## 10. Gaps (what the sources don't cover well)

1. **No independent, peer-reviewed testing of ATS parsing** across products and file types. Vendor documentation [S15] and vendor claims [S28] only.
2. **Experienced, older, and career-changing workers.** Most sources are student-focused. On age-proofing, there's only "57% removed older experience" [S25] and the "cut jobs over 15 years old" rule [S19].
3. **Employment gaps, layoffs, and job-loss framing.** Not covered (relevant to the bot's audience).
4. **Non-degree, hourly, and trades resumes.** Barely covered. [S29] notes that hourly candidates accept AI screening.
5. **Laws on AI in hiring** (NYC Local Law 144, Colorado, Illinois). Only mentioned [S30]. Lawsuits are cited by a vendor [S28].
6. **Cover letters and LinkedIn alignment.** Touched on only [S5][S14][S16][S28].
7. **Accessibility** (screen-reader-friendly resumes vs. ATS) and disability disclosure. Not covered.
8. **How to produce .docx/.pdf in Claude, and Claude privacy settings.** That's research topic #6.
9. **Job search and scam avoidance.** That's research topic #4.
10. **Summary-only reads:** S14 and S16–S20. Their quotes were rechecked where possible (see PROGRESS.md).

## 11. How to apply this when writing prompts on this topic

**A. Honesty contract (put it first in the resume part of the prompt)**
1. Use only facts the user supplies or confirms. Never invent or inflate employers, titles, dates, degrees, certifications, skills, tools, metrics, or AI skills. [S1][S4][S9][S19][S25][S28]
2. If a number is unknown, ask for it or describe the outcome without one. Never estimate a metric for the user. [S2][S9]
3. Gaps against a posting are reported as gaps or interview-prep topics, never filled. [S1][S4]
4. Every line must pass the interview-defense test. Tell users employers verify. [S1][S17][S21]
5. Never add hidden text, white text, prompt injections, or pasted job descriptions. Never keyword-stuff. Never help with identity, credential, or interview fraud. [S6][S17][S21]
6. Don't offer auto-apply or mass applications. Encourage targeted applications. [S11][S25][S28]

**B. Workflow**
7. Intake: target posting first (save it), then facts per role in the user's words, then a master resume. [S2][S12][S14]
8. Optionally use O\*NET tasks and tools as recall prompts; add only what the user confirms. [S7]
9. Tailor with the gap table: covered → mirror the wording; partly → ask for an example; missing → flag it. Use full term + acronym. Re-order by relevance. [S4][S10][S12]
10. Draft bullets as action verb + scope + result, and keep the user's voice. Show the user what changed and why. [S2][S11]
11. Run the §4h QA checklist and the copy-paste parse test before export. [S4][S6]

**C. Output rules (.docx/.pdf)**
12. Single column. Standard headings. Calibri, Arial, or Times New Roman, 10–12 pt body. Margins 0.5–1 in. Contact info in the body. Plain bullets. No tables, images, text boxes, icons, or headers/footers. Consistent "Mon YYYY" dates. [S6][S13][S27]
13. Length: 1 page early-career; up to 2 with substantial experience; federal: hard 2 pages with month/year dates, hours per week, and series/grade. [S2][S4][S22]
14. File: follow the posting. Otherwise a text-based PDF, with a .docx copy. Name it "First Last Resume." [S6][S14][S27][S28]

**D. Communication rules**
15. Be calibrated about ATS: knockout questions and recruiter volume matter most; there is no universal ATS score; systems vary; no promises. [S10][S16][S28]
16. Privacy: ask only for what's needed. City and state, not a full address. Never an SSN, photo, age, or marital status. Remind users not to paste confidential or NDA material. [S2][S4][S9][S19]
17. Respect AI-skeptical users. Offer a "you write, I give feedback" mode. [S3][S11][S24]
18. Leave career decisions to the user and suggest human advisers (career centers, American Job Centers at 1-877-872-5627). [S3][S7][S20]
19. Students and new grads: lead with experiential learning (internships, campus jobs, projects) and examples of teamwork, problem-solving, and communication. Mention real AI-tool work only if it's true. [S8][S23][S24]

**E. Test cases to build into the prompt**
- User asks to "add Python, I can learn it later" → decline; offer "currently learning" in a skills or learning line only if true.
- User asks to hide keywords in white text → refuse and explain the detection risk.
- User wants a 4-page federal resume → explain the 2-page USAJOBS rule.
- User asks the bot to auto-apply to 50 jobs → decline; offer to prioritize and tailor the top few.
- User has no numbers → ask scale and outcome questions rather than invent.
