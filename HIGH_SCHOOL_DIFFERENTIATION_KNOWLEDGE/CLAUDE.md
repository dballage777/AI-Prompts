# High School Differentiated Instruction Knowledge Base: Instructions

## Purpose
This is a permanent, sourced research library on **differentiated instruction for grades 9–12**. It covers students who are struggling, students on grade level, and advanced students, across instruction, assignments, assessments, and teacher workload.

Use it as the **content foundation** when writing AI prompts (for Claude, Gemini, ChatGPT, and others) that generate differentiated lessons, assignments, homework, practice, remediation, enrichment, assessments, learning pathways, and teacher resources.

## Scope
- Subjects: math, ELA, science, social studies, world languages, CTE, and electives.
- Grade band: high school. Evidence from elementary or middle school is labeled with its original grade context.
- Built 2026-11-05.

## Location
`HIGH_SCHOOL_DIFFERENTIATION_KNOWLEDGE/` in the `dballage777/AI-Prompts` repository. It is git-tracked, so it persists. In cloud sessions, `~/.claude` does not persist.

## Files
| File | Contents |
|---|---|
| `MEMORY/RESEARCH_INDEX.txt` | Index of every file. Start here. |
| `MEMORY/KEY_FINDINGS.txt` | The 14 most important findings, with evidence grades. |
| `MEMORY/FUTURE_PROJECT_REFERENCE.txt` | Which file to open for which prompt request. |
| `RESEARCH/TOP_30_RESOURCES.txt` | Ranked top 30 resources with scores, extracted findings, limitations, and implications for AI prompts. |
| `RESEARCH/SOURCE_RESEARCH_NOTES.txt` | Access log, research passes, and the pool of about 110 candidate sources. |
| `RESEARCH/ACADEMIC_RESEARCH_FINDINGS.txt` | 24 cross-validated findings with evidence grades and disagreements. |
| `RESEARCH/PRACTITIONER_FINDINGS.txt` | Teacher and community experience (anecdotal). |
| `RESEARCH/raw_search_notes/` | Raw research notes from search waves 1–5. |
| `KNOWLEDGE_LIBRARY/01–07` | Strategy cards (9-point format) on struggling students, advanced students, assignments, instructional design, assessment, AI and edtech, and teacher efficiency. |
| `PROMPT_ENGINEERING/AI_PROMPT_DESIGN_PRINCIPLES.txt` | 16 principles, each with an instruction line ready to paste into a prompt. |
| `PROMPT_ENGINEERING/DIFFERENTIATION_PROMPT_TEMPLATES.txt` | 10 content templates (T1–T10). |
| `PROMPT_ENGINEERING/AI_QUALITY_CONTROL_REQUIREMENTS.txt` | QC block ready to paste, a reviewer checklist, and common failure modes. |

## When to consult it
Consult this library whenever a task involves differentiation, tiered or leveled materials, remediation or intervention, enrichment or acceleration, assessment versions, flexible grouping, or AI-generated instructional materials for high school students. This applies on any AI platform.

## How to retrieve (load only what's needed)
1. Read `MEMORY/KEY_FINDINGS.txt`, then use `MEMORY/FUTURE_PROJECT_REFERENCE.txt` to choose the 1–3 relevant files.
2. Take the prompt **shell** (role, governance, platform style) from the matching platform knowledge base:
   - `claude-knowledge/` for Claude
   - `gemini_k12_assistant_engineering/` for Gemini
   - T00 for other platforms
3. Take the **content** (strategies, rules, templates, QC block) from this library.

## Applying it to prompts (non-negotiables)
- **Lock the objective** across all versions.
- **Struggling students:** more support, not less work.
- **Advanced students:** more depth or complexity, not more volume.
- Match the amount of guidance to the student's expertise.
- Build in retrieval practice and formative checks.
- No learning-style matching.
- Verify accuracy and readability. AI tends to write above the requested reading level.
- No student PII. The teacher makes the decisions.
- No unsupported claims. Use the evidence grades.

## Source verification and limitations
- **The build session's network blocked all education sources.** Every finding came from server-side web-search summaries, labeled `[SEARCH-*]`, not from reading the pages directly.
- URLs are marked "URL verified" only when the URL itself appeared in search results.
- Before citing a number externally, re-read the primary source.
- Community sources (Reddit, Discord, Facebook, X) were mostly inaccessible.
- Several key bodies of evidence come from elementary or middle school. Others are thin in high school (UDL outcomes, station rotation, standards-based grading, CTE).

## Updating the knowledge base
1. Verify new information against primary or official sources, and record the access date.
2. Add or update the relevant `KNOWLEDGE_LIBRARY` card and `RESEARCH` file. Keep the evidence grades.
3. Don't silently delete superseded guidance. Mark it `SUPERSEDED (date): reason`.
4. Update `MEMORY/RESEARCH_INDEX.txt` (file list and change log) and `MEMORY/KEY_FINDINGS.txt` if a headline finding changes.
5. Keep this library separate from `claude-knowledge/` and `gemini_k12_assistant_engineering/`. Cross-reference them, but never merge.
