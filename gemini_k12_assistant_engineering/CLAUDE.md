# Gemini K–12 Educational Assistant Prompt Engineering: Knowledge Base Instructions

## What this is
A separate knowledge base for writing, revising, evaluating, and troubleshooting **Google Gemini** prompts that create **K–12 educational assistants**. It covers Gems, skills, Classroom-assigned Gems, and system instructions. It holds research records, a prompt-engineering manual, K–12 pedagogy guidance, safety and privacy rules, copy-ready templates, and a testing and evaluation system.

**This is not the Claude Code knowledge base.** Gemini prompting and Claude prompting are different disciplines. Never merge this folder with `claude-knowledge/`, and don't edit that folder or any global CLAUDE.md on this project's behalf. You may *consult* `claude-knowledge/` for general methods such as research methodology or evaluation practice. Label anything you borrow from it as such.

## When to consult it
Consult it whenever the user asks for, or asks to improve, any of the following:
- a Gemini prompt or custom Gem or skill for a K–12 educational purpose
- a student tutoring assistant, a teacher assistant, or a subject-specific educational AI
- a school administrative AI assistant
- an educational AI workflow for Gemini
- an evaluation or troubleshooting of an existing Gemini educational prompt (e.g., `gemini/*.txt` in this repo)

## How to use it (retrieve only what's relevant)
1. Start at `README.md` (the routing table).
2. Always read `02_GEMINI_PROMPT_ENGINEERING/gemini_prompt_architecture.md` §1–3 (Gemini-specific principles, the 22-part framework, the length budget) and `custom_gems_design.md` §1 (environment matrix).
3. Pick the closest template in `05_PROMPT_TEMPLATES/`, then add rules from the relevant `03_K12_EDUCATION/` and `04_SAFETY_AND_GOVERNANCE/` files.
4. Use `02/interactive_workflows.md` for any assistant that takes more than one input.
5. Before delivering, score the prompt with the 100-point rubric (`06/testing_framework.md`) and include the applicable test cases from `06/test_cases.md` for the user to run.
6. Be honest about what was tested. Say "desk-reviewed, not live-tested" unless you actually ran it in Gemini, and record the environment if you did.

## Rules for prompts produced from this knowledge base
- **Ask the user, or state your assumption, about the environment:** personal or school account, Gem or skill, Classroom-assigned, add-ons, and the user's age setting. Never assume a license or feature.
- **Keep it lean.** Most assistants need roughly 300–1,200 words of instructions. Put reference material in knowledge files. Safety rules and workflow steps stay in the instructions.
- **Always include** the privacy rules, the accuracy and honesty rules, teacher precedence, human review, and limits. Student-facing assistants also need the answer policy, one question per turn, and the crisis response.
- **Use model-agnostic wording.** Recommend "the strongest reasoning model available to you" rather than naming a model version.
- **No legal conclusions.** Point users to district policy and the people responsible for it.
- **Give the user a deliverable** in `gemini/` (`.txt`, plus `.docx` if helpful), following the repo's conventions. Keep the knowledge base itself in this folder.

## Updating the knowledge base
Follow `07_FUTURE_LEARNING/research_updates.md`. In short: verify, find the affected files, log the change with a date and evidence tier, update, mark superseded text rather than deleting it, re-test, and bump template versions. Record new gaps in `knowledge_gaps.md`. Update `PROGRESS.md` when you run research passes.

## Evidence tiers used throughout
- **[A]** read directly
- **[B]** official source, known from search summary
- **[C]** peer-reviewed or academic, from search summary
- **[D]** secondary, vendor, or community
- **[I]** inference or synthesis

Source IDs are S1–S30 (originals) and X1–X78 (expanded). See `01_RESEARCH/`.
