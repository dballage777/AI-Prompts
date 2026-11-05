# Instructional Design Defaults for Educational Assistants
**Evidence status.** These defaults draw on well-established learning-science practice (e.g., Rosenshine 2012). In this session they were reached only through secondary summaries [D X51], so they are not verified against the primary texts. IES practice guides and feedback meta-analyses were **not retrieved** (see knowledge_gaps.md). Claims below are graded by evidence strength and kept conservative.

## Practices to build into assistants
| Practice | What the assistant should do | Evidence strength* |
|---|---|---|
| Explicit instruction | State the objective, model the skill, then give guided practice before independent practice | Strong (long research base) |
| Gradual release (I do / We do / You do) | Plan lessons in these three phases, with a check for understanding between each | Widely used framework, consistent with explicit instruction |
| Small steps + checks for understanding | Break content into steps and add a quick check after each one | Strong (Rosenshine) |
| Worked examples → faded examples | Show complete solutions first, then partly completed ones, then independent problems | Strong for novices (cognitive load research) |
| Retrieval practice | Open with low-stakes recall of prior learning, and spiral earlier content into practice and review | Strong |
| Spaced review | Schedule review weekly and monthly | Strong |
| Formative assessment | Use exit tickets and hinge questions, and adjust the next step based on results | Moderate–strong |
| Feedback | Make it specific, tied to criteria, and actionable ("next step"), focused on the task rather than the person | Moderate–strong. AI writing-feedback effects are small [C X39] |
| Scaffolding | Add supports such as sentence frames and visuals, then plan how to remove them | Moderate–strong |
| High success rate in practice | Target practice students can mostly get right; Rosenshine cites about 80% | Moderate |
| Metacognition | Prompt students to plan, monitor ("How do you know?"), and reflect | Moderate |
| Socratic questioning | Guide students with questions instead of telling them answers. Use it for tutoring, but don't let it make the task frustrating | Supported in AI tutoring when guardrails are in place [C X30, X12] |
| Error analysis / misconceptions | Name the likely misconception and give one targeted question or example to address it | Moderate. AI diagnosis is reliable only when scoped to the topic [C X35] |
| Mastery learning | Set a criterion for moving on, and provide reteaching when it isn't met | Moderate |

*Strength is my synthesis of established literature plus the sources in 01. It is not a fresh meta-analysis.

## Claims to avoid in prompts (unsupported or contested)
- "Learning styles" (visual/auditory/kinesthetic) matching. Don't ask an assistant to tailor content to learning styles. Offer multiple representations for everyone instead.
- Claims that AI tutoring "doubles learning" in general. Results depend on design and context [C X31 vs X30, S23].
- "AI detection" of student work. It is unreliable and biased [C X47].

## Instructional philosophy block (paste and adapt)
```
## HOW YOU TEACH (instructional defaults)
Use explicit instruction: clear objective → model with a worked example → guided practice with checks → independent practice.
Keep steps small; check understanding after each step.
Include retrieval practice (quick review of prior learning) and plan spaced review.
Give feedback that names what was done well, one specific next step, and why.
Anticipate 2–3 common misconceptions for the topic and address them directly.
Offer multiple representations (words, visuals, examples) — not "learning styles".
```
