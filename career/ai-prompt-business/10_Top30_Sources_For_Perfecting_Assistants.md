# Top 30 Sources to Learn Before Perfecting the Four Assistants

Drafted 2026-11-28. These sources support rebuilding four assistants as Claude Code prompts first, then converting them to other platforms:
1. Geometry/Algebra Assistant
2. Differentiation, Reteaching & Co-Teaching Assistant
3. Parent Communication & Mail-Merge Assistant
4. High School Study Helper

## How this list was built
- **It fills gaps rather than repeating what's already in the repository.** These knowledge bases will be reused as they are:
  - `claude-knowledge/`: Claude Code prompt framework, governance and testing
  - `HIGH_SCHOOL_DIFFERENTIATION_KNOWLEDGE/`: differentiation, assessment and instructional design
  - `gemini_k12_assistant_engineering/`: K-12 assistant design, safety, testing and its 30 sources
  - `research/stress-anxiety-wellness-safety/`: crisis handling and 988 rules for student-facing tools
  - `research/co-teaching-start/`: co-teaching
- **Access was checked on 2026-11-28** by loading each page and confirming its title or text, not just the status code, because block pages can return "200 OK."
- Eight first-choice sources were blocked: PNAS, SAGE, Taylor & Francis, Illustrative Math, two ed.gov pages, Common Sense's main site and Cell Press. Each was replaced with an open copy or the closest accessible equivalent, noted below.
- **Labels:**
  - **Documented:** official docs, standards or guidance.
  - **Research:** peer-reviewed studies or working papers.
  - **Reported:** news or secondary summaries.

---

## A. Building and testing the prompts in Claude Code (5)

| # | Source | Why we need it | Label |
|---|---|---|---|
| 1 | Anthropic, Prompting best practices (current Claude models): https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/claude-4-best-practices | Current guidance on how Claude follows instructions; updates `claude-knowledge` 01/09. | Documented |
| 2 | Agent Skills specification (SKILL.md open standard): https://agentskills.io/specification | **The key to portability.** Google's new Gemini "skills" use SKILL.md, and so do Claude skills. One file format can serve both. | Documented |
| 3 | Claude Code, Extend Claude with skills: https://code.claude.com/docs/en/skills | How to package each assistant as a Claude Code skill with supporting files and scripts. | Documented |
| 4 | Anthropic, Define success criteria and build evaluations: https://docs.claude.com/en/docs/test-and-evaluate/develop-tests | How to write test cases and pass/fail checks for each assistant. This becomes the "test evidence" districts want. | Documented |
| 5 | Google, About the transition from Gems to skills: https://support.google.com/gemini/answer/18560919 | The conversion target: what moves from Gems to skills, the dates, and the limits (including the 18+ restriction for Workspace skills). | Documented |

## B. AI tutoring that actually helps learning (Study Helper; Geometry/Algebra student mode) (7)

| # | Source | Why we need it | Label |
|---|---|---|---|
| 6 | Kestin et al. (2025), "AI tutoring outperforms in-class active learning," *Scientific Reports*: https://www.nature.com/articles/s41598-025-97652-6 | A randomized trial of a well-designed AI tutor. Shows which design features (scaffolding, pacing, structure) made it work. | Research |
| 7 | Bastani et al. (2025), "Generative AI without guardrails can harm learning," *PNAS*. Open full text via Europe PMC: https://www.ebi.ac.uk/europepmc/webservices/rest/PMC12232635/fullTextXML (PNAS site blocked) | A high school math field experiment: unrestricted GPT-4 hurt later test scores, while a tutor with guardrails didn't. This is the evidence for the Study Helper's "don't give answers" rule. | Research |
| 8 | Google DeepMind, "Towards Responsible Development of Generative AI for Education" (LearnLM): https://arxiv.org/abs/2407.12687 | Turns learning science into tutor behaviors (encourage active learning, manage cognitive load, adapt, spark curiosity) and gives rubrics to evaluate them. | Research |
| 9 | Anthropic, Introducing Claude for Education (Learning mode): https://www.anthropic.com/news/introducing-claude-for-education | How Anthropic designed Socratic "learning mode." A model for Claude-side tutoring behavior. | Documented |
| 10 | IES What Works Clearinghouse, *Organizing Instruction and Study to Improve Student Learning*: https://ies.ed.gov/ncee/wwc/PracticeGuide/1 | Evidence-rated practices (spacing, retrieval quizzing, worked examples mixed with practice) to build into practice and review modes. | Documented / Research |
| 11 | Deans for Impact, *The Science of Learning* (PDF): https://deansforimpact.org/wp-content/uploads/2016/12/The_Science_of_Learning.pdf (replaces Dunlosky et al. 2013; SAGE blocked) | A short, cited summary of how students learn: worked examples, retrieval and misconceptions. Good for plain-language teacher guides. | Research summary |
| 12 | Nickow, Oreopoulos & Quan (2020), "The Impressive Effects of Tutoring on PreK-12 Learning," NBER: https://www.nber.org/papers/w27476 (replaces VanLehn 2011; Taylor & Francis blocked) | A meta-analysis of what makes human tutoring effective. Sets the target behaviors and realistic claims. | Research |

## C. Math content and accuracy (Geometry/Algebra Assistant; Differentiation answer keys) (5)

| # | Source | Why we need it | Label |
|---|---|---|---|
| 13 | Indiana Department of Education, Mathematics standards: https://www.in.gov/doe/students/indiana-academic-standards/mathematics/ | Align every geometry and algebra task to Indiana standards, a must for Indiana districts. | Documented |
| 14 | IES WWC, *Teaching Strategies for Improving Algebra Knowledge in Middle and High School Students*: https://ies.ed.gov/ncee/wwc/PracticeGuide/20 | Evidence-rated algebra strategies: solved problems, structure and comparing strategies. Use these for worked examples and reteaching. | Documented / Research |
| 15 | NCTM, *Principles to Actions* (8 Mathematics Teaching Practices): https://www.nctm.org/PtA/ | Standard language on effective math teaching practices (for example, purposeful questioning and productive struggle) that districts recognize. | Documented |
| 16 | Open Up Resources, High School Math curriculum access: https://access.openupresources.org/curricula/our-hs-math/index.html (replaces Illustrative Math; Cloudflare blocked) | An openly licensed HS Algebra and Geometry curriculum. A model for task quality, structure and sequencing. Check the license before reusing any text. | Documented |
| 17 | Apple, "GSM-Symbolic: Understanding the Limitations of Mathematical Reasoning in LLMs": https://arxiv.org/abs/2410.05229 | Shows AI math answers break when numbers or wording change. The evidence for making Claude Code **compute and check** every answer key with code. | Research |

## D. Differentiation, reteaching and readability (Differentiation Assistant) (4)

| # | Source | Why we need it | Label |
|---|---|---|---|
| 18 | CAST, Universal Design for Learning Guidelines 3.0: https://udlguidelines.cast.org/ | The framework districts use for access and choice. Makes tiered versions more than "easier and harder." | Documented |
| 19 | Kincaid et al. (1975), the Flesch-Kincaid readability formula (Navy report): https://stars.library.ucf.edu/istlibrary/56/ | The original source for the reading-level formula the assistant uses. Needed to describe what it measures and what it misses. | Research (primary) |
| 20 | IES WWC, *Improving Adolescent Literacy*: https://ies.ed.gov/ncee/wwc/PracticeGuide/8 | Evidence-rated practices for reteaching with text: vocabulary, comprehension strategies and discussion. | Documented / Research |
| 21 | Common Sense Media, AI Teacher Assistants Risk Assessment (2025): https://institute.commonsensemedia.org/risk-assessments/ai-teacher-assistants (main site blocked; this is the Youth AI Safety Institute page) | Tested Gemini in Classroom, MagicSchool, Khanmigo and Curipod. Found bias (for example, in behavior plans), "invisible influencer" risks and problems with special education documents. Use it as a list of failure modes to test against. | Research (nonprofit) |

## E. Parent communication (Parent Communication Assistant) (4)

| # | Source | Why we need it | Label |
|---|---|---|---|
| 22 | Kraft & Rogers (2015), "The Underutilized Potential of Teacher-to-Parent Communication" (Harvard Kennedy School page): https://www.hks.harvard.edu/publications/underutilized-potential-teacher-parent-communication-evidence-field-experiment | Field-experiment evidence on which messages to parents work, such as improvement-focused messages. Shapes the letter templates. The page is a summary; the journal is paywalled. | Research |
| 23 | Bergman & Chan (2021), "Leveraging Parents through Low-Cost Technology," *Journal of Human Resources*: https://jhr.uwpress.org/content/56/1/125 | A randomized trial of automated grade and missing-work alerts to parents. Direct evidence for the mail-merge use case. | Research |
| 24 | U.S. Departments of Education and Justice, *Fact Sheet: Information for Limited English Proficient Parents* (2015) (copy hosted by Delaware DOE): https://education.delaware.gov/legacy/wp-content/uploads/sites/4/2024/06/dcl-factsheet-lep-parents-201501.pdf (ed.gov blocked) | Schools must communicate with parents in a language they understand. Sets the rules for the translation feature: qualified human review, and never rely on students. | Documented (federal guidance; check its current status) |
| 25 | Google, Send personalized emails with mail merge (Gmail Help): https://support.google.com/mail/answer/12921167 | Exactly how Google's built-in mail merge works and which editions have it. Fixes the "which tool sends the letters" step. | Documented |

## F. Privacy, policy, integrity and accessibility (all four) (5)

| # | Source | Why we need it | Label |
|---|---|---|---|
| 26 | U.S. Department of Education (Privacy Technical Assistance Center), *Protecting Student Privacy While Using Online Educational Services*: https://studentprivacy.ed.gov/resources/protecting-student-privacy-while-using-online-educational-services-requirements-and-best | FERPA rules for online tools. The basis for the IT and privacy packet, especially for Parent Communication. | Documented |
| 27 | Indiana Department of Education, AI guidance (PDF): https://secure.in.gov/doe/files/AI-Policy-Final.pdf | What Indiana expects from school AI use. Every product sheet should map to it. | Documented |
| 28 | U.S. Department of Education, July 2025 guidance on AI and federal grant funds (THE Journal summary): https://thejournal.com/Articles/2025/07/23/ED-Offers-Guidance-on-the-Use-of-Federal-Grants-to-Support-Learner-Outcomes-with-AI.aspx (ed.gov original blocked) | Districts may use federal funds for AI tutoring, instructional materials and training. Useful for the "how to pay for it" part of a pitch. | Reported (find the primary letter text later) |
| 29 | Liang et al. (2023), "GPT detectors are biased against non-native English writers": https://arxiv.org/abs/2304.02819 | Supports the academic-integrity guidance: never rely on AI detectors. Belongs in the Study Helper teacher guide. | Research |
| 30 | W3C, How to Meet WCAG 2.1 (Quick Reference): https://www.w3.org/WAI/WCAG21/quickref/ | Make every document the assistants produce accessible (headings, contrast, alt text, tables). Required for district sales by 2027–2028. | Documented |

---

## Not on the list (already covered, or not needed yet)
- **Crisis handling and 988 wording:** already in `research/stress-anxiety-wellness-safety/`. Reuse it for the Study Helper.
- **Gemini prompt design and K-12 governance frameworks** (TeachAI, CoSN, UNESCO, ISTE): already validated in `gemini_k12_assistant_engineering/01_RESEARCH/`.
- **Differentiation strategies and assessment design:** already in `HIGH_SCHOOL_DIFFERENTIATION_KNOWLEDGE/`.

## Next step
Use your own pipeline:
1. Paste this list into the **Topic Learning Master Prompt (v2)**.
2. Claude reads the sources in parallel batches and builds a cited knowledge base.
3. Then perfect each assistant against it, one at a time, with test cases (source #4).

A copy-ready list of URLs is in `10_Top30_Sources_URL_List.txt`.
