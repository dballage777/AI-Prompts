# Assistant Knowledge Base: Chunk 2 (Sources 6–10: AI tutoring research)

Read 2026-11-28. I opened every page in this chat and read the sections relevant to the four assistants:
- **#6:** the full article HTML (abstract, results, discussion, limitations and methods).
- **#7:** the Europe PMC full-text XML (significance, abstract, results on errors and engagement, and discussion).
- **#8:** the arXiv abstract, plus targeted parts of the arXiv HTML full text (v4): the pedagogy rubric (Table 13) and the passages on giving away answers and sycophancy.
- **#9:** the full announcement.
- **#10:** the WWC landing page, with its seven recommendations. I didn't open the full guide PDF, so this file doesn't report the guide's evidence levels.

Every claim below comes from a page I opened. No page was blocked.

**Labels:**
- **D:** Documented (official product or agency page).
- **R:** Research (a peer-reviewed study or a research preprint).
- **I:** Inferred (how I'm applying the source to your four assistants).

**Assistants:**
- **GA:** Geometry/Algebra Assistant.
- **DRC:** Differentiation, Reteaching & Co-Teaching Assistant.
- **PC:** Parent Communication & Mail-Merge Assistant.
- **SH:** High School Study Helper.

---

## Key takeaways for the four assistants

1. **Unguarded AI help can harm high school math learning. Guardrails remove most of that harm.**
   - Nearly 1,000 students in grades 9–11 took part. With AI access during practice, grades rose 48% (GPT Base) and 127% (GPT Tutor). [S7] R
   - When access was removed, GPT Base students scored 17% *lower* than students who never had AI. GPT Tutor students scored about the same as the control group. [S7] R
   - **So the GA and SH must never hand over final answers by default.** They should give hints, one step at a time. I
2. **Put the worked solution and common mistakes into the prompt. Don't let the model solve the problem on its own.**
   - Asked for answers to the practice problems, GPT Base was right only 51% of the time. It made logical errors 42% of the time and arithmetic errors 8% of the time. [S7] R
   - GPT Tutor's prompt held the solution, an instruction not to give it away, and common student mistakes paired with the hint for each. [S7] R
   - The Harvard tutor's prompts included "comprehensive, step-by-step answers" to reduce hallucinations. [S6] R
   - **For the GA, the teacher (or a checked answer key) supplies the solution, and a `scripts/` checker verifies the math (see chunk 1).** A `references/common-mistakes.md` file pairs each mistake with its hint. I
3. **Students can't tell when they are learning less.**
   - GPT Tutor students didn't do better than the control group on the exam, yet they *believed* they had done much better. [S7] R
   - Students "are either unable to detect these failures or unwilling to spend the effort" to check the AI's answers. [S7] R
   - **The SH should make students show their work and check themselves with a short quiz without AI help.** It shouldn't treat "I get it" as proof of learning. I
4. **A well-designed AI tutor can beat a strong class lesson, but only when its structure is built in.**
   - In a Harvard physics randomized trial (N = 194), median learning gains with the AI tutor were more than double those of in-class active learning. The median time on task was 49 minutes, against 60 minutes in class. [S6] R
   - The system prompt covered active learning, cognitive load and growth mindset. But "a system prompt could not reliably provide enough structure to scaffold problems with multiple parts": the tutor discussed parts out of order. So the platform walked students through each part in sequence. [S6] R
   - **Each skill should keep track of a fixed step order in its workflow (part a → b → c), not rely on the model to remember it.** I
5. **The AI tutor should come before class or support it, not replace the teacher.** "An AI tutor should not replace in-person teaching." [S6] R
   - The authors list homework help, study guidance and remedial lessons as fitting uses. [S6] R
   - Avoid AI "where students are likely to use it as a crutch." [S6] R
   - This fits the DRC's reteaching role and the SH's role: preparation and practice, not graded work. I
6. **Use a tutoring rubric to grade test conversations.** LearnLM's turn-level rubric covers six areas [S8] R:
   - Manage cognitive load: explain concepts clearly.
   - Encourage active learning: promote engagement and guide the student to the answer in steps.
   - Deepen metacognition: name the student's mistakes and successes.
   - Motivate and stimulate curiosity: inspire interest, monitor motivation and speak encouragingly.
   - Adapt to the learner's goals and needs.
   - Adapt to the learner's level.
   - **Use these six areas as the AI-grader rubric in each tutoring skill's test set (chunk 1, C10).** I
7. **Known failure modes to test for** [S8] R:
   - Giving away the answer: models "naturally tend to give away the answer very quickly."
   - Sycophancy: models fail to give proper feedback on mistakes.
   - "Wall-of-text" replies that overload the learner.
   - Drifting off topic.
   - **Add at least one test per failure mode, for example "Just tell me the answer" or a student's wrong answer stated confidently.** I
8. **Learning mode in Claude is the same pattern** [S9] D:
   - "Guiding rather than answering"
   - Socratic questions ("What evidence supports your conclusion?")
   - Emphasizing core concepts
   - Templates for study guides and outlines
   - It was announced for higher education (April 2025) and works within Projects. [S9] D
   - The SH can borrow these four moves word for word as its style rules. I
9. **The WWC study guide gives the SH its study methods** [S10] D:
   - Space learning over time.
   - Interleave worked examples with problems to solve.
   - Combine graphics with words.
   - Connect abstract and concrete representations.
   - Use quizzing (pre-questions and re-exposure quizzes).
   - Teach delayed judgments of learning.
   - Ask deep explanatory questions.
   - The guide covers grades K–12 and is from 2007. [S10] D
   - **The SH's study-plan feature should build on spacing, quizzing and delayed self-checks.** The GA should alternate a worked example with a problem for the student to try. I
10. **Teacher-facing uses look safer than student-facing ones.**
    - The PNAS authors point to "co-pilots" that work with a human tutor, and to helping teachers instead of students, as promising paths. [S7] R
    - Claude for Education lists faculty uses such as building rubrics, giving feedback, and making problems at different difficulty levels. [S9] D
    - This supports the DRC (problem sets at several levels) and the PC (teacher-reviewed drafts). Neither study tested the PC. I

## Limits of this evidence
- S6 was a college physics class. S7 was one high school in Turkey, in fall 2023, using GPT-4. Both authors say results may not generalize, and models have improved since. [S6, S7] R
- Neither study tested parent communication, so nothing here applies to the PC except the teacher-in-the-loop point. I
- S8's findings rest on the LearnLM authors' own benchmarks, and the paper's first version predates S6 and S7. [S8] R

## Claims table

| # | Claim | Source | Label |
|---|---|---|---|
| C14 | In a randomized trial (N = 194, Harvard physics, fall 2023), students learned significantly more with a structured AI tutor than with in-class active learning (median post-test 4.5 vs 3.5; p < 10⁻⁸) and in less time (median 49 vs 60 minutes) | S6 | R |
| C15 | A system prompt alone couldn't keep multi-part problems in order, so the platform walked students through the parts in sequence | S6 | R |
| C16 | Prompts with step-by-step worked solutions were used to reduce hallucinations; 83% of students rated the AI's explanations as good as or better than the instructors' | S6 | R |
| C17 | Authors: AI tutors should support in-person teaching, not replace it, and shouldn't be used where students will use them as a crutch; preparing each lesson's prompts took a few days, and building the platform took several months | S6 | R |
| C18 | High school math (nearly 1,000 students): AI access raised practice grades by 48% (GPT Base) and 127% (GPT Tutor); after access was removed, GPT Base students scored 17% lower than controls, while GPT Tutor students matched controls | S7 | R |
| C19 | GPT Tutor's prompt included the solution, an instruction not to give the answer, and common mistakes with matching hints | S7 | R |
| C20 | GPT Base answered practice problems correctly only 51% of the time (42% logical errors, 8% arithmetic errors) | S7 | R |
| C21 | GPT Tutor students thought they had done better on the exam even though they hadn't; the tutor stayed passive and didn't probe for misconceptions | S7 | R |
| C22 | LearnLM's pedagogy rubric: manage cognitive load, encourage active learning, deepen metacognition, motivate and stimulate curiosity, adapt to the learner's goals and needs, and adapt to the learner's level | S8 | R |
| C23 | Known failure modes of AI tutors: giving away answers too quickly, sycophancy, "wall-of-text" replies, drifting off topic; "The Tutor must never give away the answer in full" (a critic-prompt rule) | S8 | R |
| C24 | Learning mode: guides rather than answers, asks Socratic questions, emphasizes core concepts, offers templates; works within Projects; announced April 2, 2025, for higher education | S9 | D |
| C25 | WWC (2007) recommendations: spacing; interleave worked examples with problems; graphics with words; abstract with concrete; quizzing; delayed judgments of learning; deep explanatory questions | S10 | D |

## Sources
- S6: Kestin, G., et al., "AI tutoring outperforms in-class active learning: an RCT introducing a novel research-based design in an authentic educational setting," *Scientific Reports*, published 3 June 2025: https://www.nature.com/articles/s41598-025-97652-6. Read 2026-11-28. (I didn't open Supplementary Material 1, which holds the system prompt.)
- S7: Bastani, H., Bastani, O., Sungu, A., et al., "Generative AI without guardrails can harm learning: Evidence from high school mathematics," *PNAS* 122(26), e2422633122, 2025 (accepted May 5, 2025; a correction was published Aug 20, 2025). Europe PMC full-text XML: https://www.ebi.ac.uk/europepmc/webservices/rest/PMC12232635/fullTextXML. Read 2026-11-28.
- S8: Jurenka, I., et al., "Towards Responsible Development of Generative AI for Education: An Evaluation-Driven Approach," arXiv:2407.12687 (v1 May 21, 2024; v4 Dec 2, 2025): https://arxiv.org/abs/2407.12687, and the HTML of v4: https://arxiv.org/html/2407.12687v4. Read 2026-11-28.
- S9: Anthropic, "Introducing Claude for Education," Apr 2, 2025: https://www.anthropic.com/news/introducing-claude-for-education. Read 2026-11-28.
- S10: What Works Clearinghouse, "Organizing Instruction and Study to Improve Student Learning," practice guide released September 2007: https://ies.ed.gov/ncee/wwc/PracticeGuide/1. Read 2026-11-28 (landing page only).
