# Source Library (ranked): Deliverable 2
Each source gets a relevance score out of 10 for writing Gemini K-12 assistant prompts. The score weights authority (40%), specificity to Gemini or K-12 prompting (40%), and recency (20%).

Evidence tiers:
- **A**: read directly.
- **B**: official source, known only from search summaries.
- **C**: peer-reviewed or academic source, known from search summaries.
- **D**: secondary, vendor, or community source.

A tier B or C source is authoritative in itself, but because this session couldn't open the pages, the claims attributed to it here still need confirming against the original.

## Tier 1: anchor sources (consult first)
| Rank | Source | URL | Tier | Score | Why it matters |
|---|---|---|---|---|---|
| 1 | Gemini Help: transition from Gems to skills | https://support.google.com/gemini/answer/18560919 | B | 10 | Determines what assistant container you design for (Gem or skill) and when. |
| 2 | Gemini 3 developer guide / "What's new in Gemini 3.8 Flash" | https://ai.google.dev/gemini-api/docs/gemini-3 | B | 10 | Gemini-specific advice: be concise, put instructions after the data, set persona and format in system instructions. |
| 3 | Gemini API prompt design strategies | https://ai.google.dev/gemini-api/docs/prompting-strategies | B | 9 | Core techniques. Few-shot examples paired with instructions. Parameter changes. |
| 4 | LearnLM paper + LearnLM docs/prompt guide | https://arxiv.org/abs/2412.16429 · https://ai.google.dev/gemini-api/docs/learnlm | C/B | 9 | Google's own model of pedagogical instruction-following. Classroom precedence. Example tutor instructions. |
| 5 | Classroom: create & assign Gems/Notebooks | https://support.google.com/edu/classroom/answer/16534159 | B | 9 | How teachers deploy assistants to students in practice, and the limits. |
| 6 | Gemini for Education / Workspace Edu FAQ | https://edu.google.com/intl/ALL_us/ai/gemini-for-education/ · Workspace admin FAQ | B | 9 | Data protections, age access, admin controls. |
| 7 | google-gemini/cookbook (System_instructions, JSON_mode) | https://github.com/google-gemini/cookbook | A | 8 | Verified behavior: system instructions persist across turns and don't prevent leaks. Structured output. |
| 8 | Bastani et al., PNAS 2025 | DOI 10.1073/pnas.2422633122 | C | 9 | Unguarded AI harms learning, while guardrails remove that harm. The basis for tutor design rules. |
| 9 | UK classroom RCT, LearnLM + Eedi | https://arxiv.org/abs/2512.23633 | C | 8 | Tutor prompt pattern (one question, short turns) plus human oversight. |
| 10 | Workspace Prompting Guide 101 | https://services.google.com/fh/files/misc/gemini-for-google-workspace-prompting-guide-101.pdf | B | 8 | Persona, Task, Context, Format: the vocabulary teachers already learn. |

## Tier 2: strong supporting sources
| Rank | Source | URL | Tier | Score | Why |
|---|---|---|---|---|---|
| 11 | Stanford SCALE teacher-prompt brief (2026) | https://scale.stanford.edu/research-in-action/what-k12-educators-are-actually-prompting-to-ai-early-findings-from-teacher-ai-chats | B/C | 8 | Shows what teachers actually ask for. Use it to prioritize templates. |
| 12 | Khanmigo math updates | https://blog.khanacademy.org/khanmigo-math-computation-and-tutoring-updates/ | D+ (practitioner, primary) | 8 | Real-world lessons on math accuracy from running a tutor at scale. |
| 13 | Tutor CoPilot RCT | https://nssa.stanford.edu/news/what-happens-when-ai-assistant-helps-tutor-instead-student | C | 8 | Prompting with a named strategy works. AI that supports a human tutor helps. |
| 14 | LLM misconception diagnosis (arXiv 2310.02439) | https://arxiv.org/pdf/2310.02439 | C | 7 | Narrow the diagnosis to a small set of candidates. |
| 15 | US ED OET AI report (2023) | https://tech.ed.gov/ai-future-of-teaching-and-learning/ | B | 7 | Humans in the loop as a design principle. |
| 16 | TeachAI Toolkit | https://www.teachai.org/toolkit | B | 7 | Seven principles and sample policies. |
| 17 | ITS systematic review (npj 2025) | https://www.nature.com/articles/s41539-025-00320-7 | C | 7 | Realistic size of tutoring effects. |
| 18 | Michigan Virtual K-12 AI Guidance | https://michiganvirtual.org/wp-content/uploads/2024/03/K-12-AI-Guidance-Final_03-27-24-1.pdf | D+ (state-level practice) | 7 | Data-handling tiers. Concrete do-not-enter rules. |
| 19 | Common Sense AI risk assessment: Gemini | https://www.commonsensemedia.org/ai-ratings/gemini | D+ | 7 | Child-safety risks to design against. |
| 20 | Kestin et al. AI tutor RCT | https://arxiv.org/html/2409.09047 | C | 6 | Shows the upside of a purpose-built tutor. Narrow sample. |
| 21 | Google Classroom Gemini teacher tools | https://support.google.com/edu/classroom/answer/15410566 | B | 7 | Built-in tools you may not need to rebuild as a Gem. |
| 22 | Guided Learning | https://blog.google/products/gemini/guided-learning-google-gemini/ | B | 6 | Built-in tutoring mode, an alternative to a custom tutor. |
| 23 | Stanford HAI on AI-detector bias | https://hai.stanford.edu/news/ai-detectors-biased-against-non-native-english-writers | C | 6 | Supports the "never detect AI" rule. |
| 24 | UNESCO teacher/student AI frameworks | https://www.unesco.org/en/articles/ai-competency-framework-teachers | B | 5 | AI-literacy and PD assistants. |
| 25 | AI4K12 Big Ideas and grade bands | https://ai4k12.org/gradeband-progression-charts/ | B | 5 | Age-appropriate AI literacy content. |

## Tier 3: context and leads
CoSN readiness and maturity tools (5), Digital Promise briefs (5), CCSSO hub and state trackers (5), ISTE (4), writing-feedback studies (5), ELL/translanguaging studies (4), district prompt libraries (4), practitioner blogs (Ditch That Textbook, AVID, Control Alt Achieve) (4), Reddit snapshots (2, anecdotal).

## Where credible sources disagree (don't hide these)
1. **Prompt length.** Google's Gemini 3 guidance says to be concise, because verbose prompt engineering can be over-analyzed. Practitioner prompts for multi-step assistants, including this repo's NAHS v2 at about 9.7k words, are very long. → Keep instructions lean, move reference detail into knowledge files, and test. See gemini_prompt_architecture.md §3.
2. **Where instructions go.** Google says to put persona, constraints, and format at the start or in the system instruction. For long context, Google says to put the specific question after the data. Claude's docs say the same about query placement. → Use both: put rules in the Gem instructions, and put the task-specific request last.
3. **Do AI tutors help?** Effects range from more than double learning (Kestin) to harm (Bastani, unguarded) to no difference (Bastani, guarded) to modest effects (the ITS review). → Design matters more than access. Use guardrails and keep a teacher in the loop.
4. **Student age access.** Google allows all ages under the Edu ToS. Some features are limited to users marked 18+. Common Sense rates Gemini's teen and kids experiences high risk. → Templates for students must assume a restricted under-18 experience and teacher-assigned deployment.
5. **Knowledge-file limits and reliability.** Sources cite 10 files with varying size limits, and some report that files get ignored. → Don't depend on knowledge files for safety-critical rules.
