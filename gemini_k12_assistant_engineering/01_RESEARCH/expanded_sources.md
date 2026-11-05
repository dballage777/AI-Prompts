# Expanded Sources (Pass 3): Candidates Screened
Screened 2026-11-05 through web search (about 30 queries), GitHub reading, and the GitHub search API.

- **Read directly (tier A):** the entries marked [A] below. Only the official Google GitHub repositories were readable.
- **Everything else:** judged from search summaries. Read status is "screened", not "read".

Decision key:
- ✅ **Include**: the source carries evidence.
- ➕ **Lead**: verify it later, from a network where it's reachable.
- ❌ **Exclude**, with the reason given.

## Google / Gemini official
| # | Source | URL | Decision | Why |
|---|---|---|---|---|
| X1 | google-gemini/cookbook: System_instructions, JSON_mode, Get_started [A] | github.com/google-gemini/cookbook | ✅ | Official, read directly. Covers system-instruction behavior, structured output, thinking levels. |
| X2 | google/generative-ai-docs [A] | github.com/google/generative-ai-docs | ✅ (as history) | Deprecated. Documents File API limits. Stale model references. |
| X3 | google-gemini/gemini-cli GEMINI.md [A] | github.com/google-gemini/gemini-cli | ➕ | Instruction-file style. Not education-specific. |
| X4 | Gemini 3 developer guide | ai.google.dev/gemini-api/docs/gemini-3 | ✅ | Be concise and direct. Instructions go at the end, after the data. Use the system instruction for persona and format. Keep temperature at default. (Marked deprecated → "What's new in Gemini 3.8 Flash".) |
| X5 | What's new in Gemini 3.8 Flash | ai.google.dev (exact path unknown) | ➕ | Current prompting guidance. Not retrieved. |
| X6 | System instructions (Cloud) | docs.cloud.google.com/.../system-instructions | ✅ | Put persona, constraints, and format in the system instruction. Restate the current date. |
| X7 | Few-shot examples (Cloud) | docs.cloud.google.com/.../few-shot-examples | ✅ | Pair examples with instructions. Vary them. Test how many work best. |
| X8 | Gemini for Workspace Prompting Guide 101 | services.google.com/fh/files/misc/gemini-for-google-workspace-prompting-guide-101.pdf | ✅ | Persona, Task, Context, Format. The task verb matters most. |
| X9 | LearnLM: Improving Gemini for Learning | arxiv.org/abs/2412.16429 | ✅ | Pedagogical instruction following. In classrooms, teacher instructions take priority. |
| X10 | LearnLM Partner Prompt Guide | services.google.com/fh/files/misc/learnlm_prompt_guide.pdf | ➕ high priority | Official tutor system-instruction examples. |
| X11 | LearnLM API docs | ai.google.dev/gemini-api/docs/learnlm | ✅ | Example tutor instructions: guiding questions, step by step, ask the student to explain. |
| X12 | AI tutoring UK RCT (Eedi + Google DeepMind) | arxiv.org/abs/2512.23633 | ✅ | Supervised LearnLM ≥ human tutors. Prompt: short messages, one question at a time. |
| X13 | Transition from Gems to skills (Gemini Help) | support.google.com/gemini/answer/18560919 | ✅ critical | Timeline and draft-skill migration. |
| X14 | Transition to skills (Workspace Admin) | knowledge.workspace.google.com/admin/generative-ai/gemini-app/about-the-transition-to-skills | ✅ critical | Work and school accounts: 2027. |
| X15 | Gemini app available for all Edu users (Workspace Updates, 2025-06-20) | workspaceupdates.googleblog.com/2025/06/... | ✅ | All ages under the Edu ToS. Stricter rules for under-18 users. |
| X16 | Educators create Gems & notebooks in Classroom (Workspace Updates, 2025-09) | workspaceupdates.googleblog.com/2025/09/educators-create-gems-notebooks-google-classroom.html | ✅ | Assign Gems and notebooks. Class materials become knowledge files. |
| X17 | Create & assign Gemini Notebook and Gems in Classroom | support.google.com/edu/classroom/answer/16534159 | ✅ | Official how-to. Personal accounts are excluded. |
| X18 | Use NotebookLM & Gems in Classroom (student) | support.google.com/edu/classroom/answer/16538778 | ✅ | Students find these under "Class learning tools". |
| X19 | Guided Learning (Google blog, Aug 2025) | blog.google/products/gemini/guided-learning-google-gemini/ | ✅ | Built-in tutoring mode. An alternative to a custom tutor. |
| X20 | Gemini in Classroom: no-cost AI tools (Google blog) | blog.google/outreach-initiatives/education/classroom-ai-features | ✅ | Teacher tool list. |
| X21 | ISTE 2026 educator updates (Google blog) | blog.google/products-and-platforms/products/education/iste-2026-educator-updates/ | ➕ | Newest education features. |
| X22 | Google AI Pro for Education (Admin help) | knowledge.workspace.google.com/admin/generative-ai/workspace-with-gemini/ai-pro-for-education | ✅ | Paid add-on, 18+ users only. Feature limits. |
| X23 | Generate presentations in the Gemini app (Workspace Updates, 2025-10) | workspaceupdates.googleblog.com/2025/10/generate-presentations-in-gemini-app.html | ✅ | Slides via Canvas on Education editions. |
| X24 | Canvas export (Gemini Enterprise help) | support.google.com/g/answer/16914858 | ✅ | Export to Docs, Slides, PDF requires a Workspace license. |
| X25 | Gemini/NotebookLM edu admin quickstart & enablement guides | services.google.com/fh/files/misc/quickstart_guide_gemini_notebook_edu_admins.pdf | ➕ | Admin setup. |
| X26 | Guardian's guide to AI in education (Google) | services.google.com/fh/files/misc/guardians_guide_to_ai_in_education.pdf | ✅ | "No Workspace for Education data… used to train." |
| X27 | Gemini app release notes | gemini.google/release-notes/ | ➕ | Use to track features. |
| X28 | Common Sense privacy evaluation: Gemini in Workspace for Education | privacy.commonsense.org/evaluation/Gemini-in-Google-Workspace-for-Education | ➕ | Independent privacy rating. |
| X29 | Common Sense AI risk assessment: Gemini | commonsensemedia.org/ai-ratings/gemini | ✅ | Rated "High Risk" for kids and teens (Sep 2025). |

## Learning research
| # | Source | URL | Decision | Why |
|---|---|---|---|---|
| X30 | Bastani et al., "Generative AI without guardrails can harm learning," PNAS 2025 | doi via econpapers RePEc:nas:journl:v:122:y:2025:p:e2422633122 | ✅ | Students leaning on AI as a crutch scored 17% lower. Guardrails removed the harm. |
| X31 | Kestin et al., AI tutor vs active learning, Sci. Reports 2025 | arxiv.org/html/2409.09047 | ✅ (with caveats) | A purpose-built tutor more than doubled learning gains. Small, elite sample. |
| X32 | Tutor CoPilot RCT (Wang et al., Stanford) | nssa.stanford.edu/news/... | ✅ | Prompt the model to respond *using a named strategy*. Weaker tutors gained +9 pp. |
| X33 | Khanmigo math computation & tutoring updates | blog.khanacademy.org/khanmigo-math-computation-and-tutoring-updates/ | ✅ | Calculator tool and human-written solutions improve accuracy. Grading the student's steps stays error-prone. |
| X34 | Khan: why we're invested in AI math tutoring | blog.khanacademy.org/why-were-deeply-invested-... | ✅ | Benchmark and error-rate dashboard. |
| X35 | Novice Learner & Expert Tutor (LLM misconceptions) | arxiv.org/pdf/2310.02439 | ✅ | Picks the right misconception 92% of the time from 4 candidates, 40% from 100. Scope the diagnosis. |
| X36 | LLMs diagnosing cognitive skills in math | arxiv.org/html/2504.00843 | ✅ | Over-flags errors. Human judgment still needed. |
| X37 | ChatGPT-4 vs Gemini diagnosing exponent errors (Hacettepe) | research.hacettepe.edu.tr/... | ✅ | Gemini gave better solutions. ChatGPT-4 was better at identifying misconceptions. |
| X38 | Middle-school algebra misconception benchmark (Warwick) | warwick.ac.uk/.../a-benchmark-for-math-misconceptions... | ➕ | 83.9% accuracy when scoped to a topic. |
| X39 | LLM feedback on EFL argumentative essays (2024) | (secondary) | ✅ | Revision quality d=.19, motivation d=.36. |
| X40 | Triadic LLM–teacher collaboration in K-12 writing (ACL 2026 Findings) | themoonlight.io review → ACL Anthology | ✅ | 58k essays. Teacher acts as gatekeeper. Ceiling effects. |
| X41 | FeedbackWriter RCT (undergraduate) | arxiv.org/abs/2602.16820 | ✅ | AI-drafted TA feedback produced better revisions. |
| X42 | Improving student-AI interaction through pedagogical prompting (CS ed.) | arxiv.org/pdf/2506.19107 | ➕ | Teaching students to prompt better. |
| X43 | Scaffolding language learning via multimodal tutoring | arxiv.org/pdf/2404.03429 | ➕ | Pedagogical instructions. |
| X44 | Translanguaging & GenAI RCT (UCL, 2026) | discovery.ucl.ac.uk/10220497 | ✅ | Better emotional engagement for multilingual learners. |
| X45 | AI translanguaging writing assistant (LSU dissertation) | repository.lsu.edu/gradschool_dissertations/7132 | ✅ (null result) | No significant short-term writing gains. |
| X46 | Effective use of AI to support EAL learners (Chartered College) | my.chartered.college/impact_article/effective-use-of-ai-to-support-eal-learners/ | ✅ | Evidence is limited. Relying on AI scaffolds can reduce teacher insight. |
| X47 | Stanford HAI: AI detectors biased against non-native writers | hai.stanford.edu/news/ai-detectors-biased-against-non-native-english-writers | ✅ | 61% false positives on TOEFL essays. |
| X48 | CDT brief on AI detection and English learners | cdt.org | ➕ | Equity recommendations. |
| X49 | Frontiers 2026 systematic review (AI in education) | frontiersin.org/articles/10.3389/feduc.2026.1720377 | ➕ | Newer review. |
| X50 | West Point "I Tutor" systematic review | athena.westpoint.edu/... | ➕ | AI tutor review. |
| X51 | Rosenshine, Principles of Instruction (2012) via summaries | innerdrive.co.uk; structural-learning.com | ✅ | Ten evidence-informed principles. Primary article (American Educator) not retrieved. |
| X52 | "A principled way to think about AI in education" (2025) | arxiv.org/pdf/2510.01467 | ➕ | Learning-science framing. |
| X53 | Teachers negotiating GenAI's role (2025) | arxiv.org/pdf/2510.18296 | ➕ | Teacher experience. |
| X54 | SchoolAI: what K-12 teachers ask AI | schoolai.com/research/what-k12-teachers-ask-ai | ✅ (vendor) | 150k prompts. Teachers mix tasks within one chat. |
| X55 | Stanford SCALE: non-instructional ways schools use AI | scale.stanford.edu/news/non-instructional-ways-schools-are-using-ai | ➕ | Admin use cases. |

## Governance, privacy, policy
| # | Source | URL | Decision | Why |
|---|---|---|---|---|
| X56 | Michigan Virtual K-12 AI Guidance (2024) | michiganvirtual.org/wp-content/uploads/2024/03/K-12-AI-Guidance-Final_03-27-24-1.pdf | ✅ | Never enter PII or sensitive data into consumer AI. Data tiers. |
| X57 | Victoria DET: protecting privacy with GenAI | www2.education.vic.gov.au/pal/generative-artificial-intelligence/guidance/protecting-privacy-and-personal-data | ✅ | De-identify. Collect only what's needed. |
| X58 | AI for Education: Using GenAI to support the IEP process | aiforeducation.io/s/Using-GenAI-to-Support-the-IEP-Process-1-Pager.pdf | ✅ | Pseudonyms. Teacher owns substantive IEP content. |
| X59 | AI for Education: State AI guidance tracker | aiforeducation.io/ai-resources/state-ai-guidance | ✅ | 40 states plus PR (Sep 2026). |
| X60 | ECS State AI Guidelines (Apr 2026) | ecs.org/wp-content/uploads/State-Artificial-Intelligence-AI-Guidelines_April-2026.pdf | ✅ | 35+ states. |
| X61 | EdSurge: AI guidelines for K-12 | edsurge.com/news/2024-04-10-ai-guidelines-for-k-12... | ✅ | Assume inputs may become public without a vendor agreement. |
| X62 | CoSN: privacy & accessibility recommendations for GenAI products | cosn.org/?p=21632 | ➕ | Accessibility gap. |
| X63 | FTC COPPA amended rule (16 CFR 312), effective 2025-06-23 | (secondary summaries) | ✅ (verify primary) | No codified school-authorization exception. Compliance due 2026-04-22. |
| X64 | FERPA 34 CFR 99.31 school-official exception | (secondary) | ✅ (verify primary) | Vendor acts under school control for the authorized purpose only. |
| X65 | NSBA on TeachAI toolkit | nsba.org/Perspectives/2023/teachai-toolkit | ✅ | Principle list. |
| X66 | WEF: AI guidance for schools | weforum.org/stories/2024/01/ai-guidance-school-responsible-use-in-education | ➕ | Overview. |
| X67 | US ED OET core messages PDF | www2.ed.gov/documents/ai-report/ai-report-core-messages.pdf | ✅ | Humans in the loop. |

## Practitioner and community (tier D; anecdotal)
| # | Source | URL | Decision | Why |
|---|---|---|---|---|
| X68 | Ditch That Textbook: Gems in the classroom | ditchthattextbook.com/?p=29864 | ✅ | Practical teacher Gem use. |
| X69 | AVID Open Access: using Gems in Gemini | avidopenaccess.org/resource/using-gems-in-gemini/ | ✅ | Teacher PD. |
| X70 | Tech Time 2026 "You're a Gem" deck | hosted-files.sched.co/techtime26/... | ✅ | Start simple. Shared instruction docs. Previewing does not save. |
| X71 | Educators Technology: Gems templates / Gemini in Classroom | educatorstechnology.com/2026/09/... | ✅ | Feature tracking (secondary). |
| X72 | Alice Keeler: Gemini quick start for teachers | alicekeeler.com/2026/08/01/... | ➕ | Known educator. |
| X73 | Control Alt Achieve: Guided Learning; Gemini data privacy | controlaltachieve.com/2025/08/... | ✅ | Educator explainers. |
| X74 | Reddit Gemini threads (via sentinel-team snapshots) | reddit.sentinel-team.org/... | ✅ (anecdotal) | Gems ignore knowledge files. Overly complex JSON rules get pushback. |
| X75 | District prompt libraries (Williamsburg VA, Wichita Falls ISD, Norfolk NE) | wps.k12.va.us/...; sites.google.com/wfisd.net/...; sites.google.com/npsne.org/ainps/prompt-library | ✅ | Real teacher prompt patterns with placeholders and standards codes (e.g., TEKS). |
| X76 | fast.io / felloai / ai-toolbox Gem limit articles | various | ✅ (low) | Different claims about knowledge-file limits. Treat as unverified. |
| X77 | 9to5Google / TechCrunch on Gems → skills | 9to5google.com/2026/09/27/gemini-gems-skills/; techcrunch.com/2026/09/28/... | ✅ | Corroborate the transition. |
| X78 | eesel / powerdrill / fynl: Gemini skills guides | various | ✅ (low) | SKILL.md format, / invocation, stacking. |

## Excluded (examples)
- GitHub "socratic tutor" prompt repos (0–4★, unvetted).
- SEO prompt-list farms ("60 best prompts…").
- AI-generated aggregator news sites (machineherald, hyper.ai).
- Quiz/cert-prep pages (pupuweb) that make stronger privacy claims than Google's own wording.

**Totals:** 78 candidates screened. 55 included or used as evidence. 21 recorded as leads. 3 read directly (official GitHub). The rest were judged from search summaries.
