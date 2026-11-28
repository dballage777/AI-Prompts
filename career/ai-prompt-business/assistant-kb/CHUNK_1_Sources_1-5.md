# Assistant Knowledge Base: Chunk 1 (Sources 1–5: building and testing in Claude Code)

Read 2026-11-28. Each page was opened and read in its plain-text (Markdown) version, or as Google Help page text. Read in full: #2 and #5. Read in part: #1, #3 and #4 (the sections relevant to these assistants). Every claim below comes from a page I opened.

**Labels:**
- **D:** Documented (official docs).
- **I:** Inferred (how I'm applying the source to your four assistants).

---

## Key takeaways for the four assistants

1. **Build each assistant as an Agent Skill: a folder with a `SKILL.md` file.**
   - The same format loads in Claude Code and on claude.ai, and Gemini can import it. [S2, S3, S5] D
   - So write once in Claude Code, then upload to Gemini. I
2. **Keep the main `SKILL.md` under 500 lines.** Move details into `references/` files that load only when needed. [S2] D
   - **Parent Communication (about 720 lines) must be split.** For example: core workflow in `SKILL.md`; `references/matching-rules.md`; `references/grade-rules.md`; `references/validation-checks.md`; `references/troubleshooting.md`. I
3. **Use only the portable frontmatter fields:** `name`, `description`, `license`, `compatibility`, `metadata`, `allowed-tools`.
   - Claude Code-only fields such as `context` or `disable-model-invocation` make claude.ai uploads fail "with a hard error." [S3] D
   - Keep Claude Code extras in a separate Claude Code-only version, or leave them out. I
4. **The `description` decides when the skill is used,** on both Claude and Gemini.
   - Say what it does *and* when to use it, with keywords. Maximum 1,024 characters. [S2] D
   - Claude Code truncates description plus `when_to_use` at 1,536 characters. [S3] D
   - Google's advice is the same: "Define when to use it … Keep it concise … Provide examples." [S5] D
5. **Name rules:**
   - Lowercase letters, numbers and hyphens; no double hyphens; at most 64 characters; must match the folder name. [S2] D
   - Google requires the folder name to match the skill name too. [S5] D
   - Suggested names (I):
     - `differentiation-coteaching-assistant`
     - `parent-communication-assistant`
     - `hs-study-helper`
     - `geometry-algebra-assistant`
6. **Scripts belong in `scripts/`.** Agents run them rather than reading them in. [S2, S3] D
   - That's where answer-key checking, reading-level math and CSV matching should live, so the results are computed, not guessed. I
   - Gemini's support for running scripts wasn't covered in source #5. Check during conversion. I
7. **Prompt-writing rules to apply** [S1] D:
   - Be clear and direct, and explain *why* each rule exists ("Claude can generalize from the explanation").
   - Use 3–5 varied examples wrapped in `<example>` tags.
   - Separate instructions, context and inputs with XML tags.
   - A one-sentence role helps.
   - Put long documents (gradebooks, rosters) first and the request last. "Queries at the end can improve response quality by up to 30 percent."
   - Ask Claude to quote the relevant parts before acting.
   - Say what to do rather than what not to do.
8. **Safety wording from Anthropic that fits Parent Communication** [S1] D. Anthropic's records block says:
   - "Never send a message as a named person that they have not read and approved, unless it says plainly that an assistant wrote it for them."
   - "Say a check was done only if a tool result in this session showed it."
   - "Use the last four digits where a reference is enough."
   - These match your rules R2, R7 and R9 closely; use Anthropic's wording to tighten them. I
9. **Confirming risky actions** [S1] D. Anthropic's sample prompt says to ask before actions that "are hard to reverse, affect shared systems, or could be destructive." That supports Parent Communication's approval rule (R4). I
10. **Testing: make each assistant's test set** [S4] D:
    - Make criteria specific, measurable, achievable and relevant.
    - Write task-specific tests, including edge cases: missing or irrelevant data, very long input, harmful or off-topic user input, and ambiguous cases.
    - Automate grading where possible.
    - "More questions with slightly lower signal automated grading is better than fewer questions with high-quality human hand-graded evals."
    - Order of preference for grading: **code** (fastest) → **AI grader with a clear rubric**, answering "correct/incorrect" or 1–5 with reasoning → **human** (slowest).
    - Example targets for the Study Helper (I): "0 final answers given to graded-work prompts in 50 attempts"; "crisis message triggers the 988 response in 100% of 20 tests."
11. **Gems are being retired** (Google Help, read 2026-11-28) [S5] D:
    - **Personal accounts (18+): Gems went read-only on Nov 17, 2026, and will be removed on Dec 17, 2026.**
    - Workspace business accounts: March 2027.
    - **Education accounts: June 2027.**
    - Under 18 on personal accounts: "at a later date."
    - Google will convert Gems to skills automatically. You can also do it yourself: copy the name, description and instructions, download the knowledge files, put them in a folder with the same name as the skill, and upload. Skills can hold up to 100 MB of files.
12. **⚠️ Skills don't support Guided Learning** (or Canvas, Deep Research, video or music) "for now." [S5] D
    - Your Geometry Unit 5 student prompt tells students to turn on **Guided Learning**, and the Study Helper may rely on similar features. I
    - Student tools need a plan B after June 2027. I
13. **Availability:** skills are available "to individuals over 18 signed in to a personal Google Account," and are coming soon to work and school accounts. Up to 100 skills can be active at once. Skills "work with … Connected Apps like Workspace apps." [S5] D
    - For Parent Communication, that's encouraging for Drive, Docs and Sheets access, but test it. I

## ⚠️ Action item (time-sensitive)
If any of your Gems live in a **personal** Google account (not your school account), they're read-only now and will be **deleted on Dec 17, 2026**. Copy their instructions and knowledge files out before then. Gems in a school account have until about June 2027. I

## Claims table

| # | Claim | Source | Label |
|---|---|---|---|
| C1 | A skill is a folder with `SKILL.md` (YAML frontmatter + Markdown); optional `scripts/`, `references/`, `assets/` | S2 | D |
| C2 | `name`: 1–64 characters, lowercase letters, numbers and hyphens, matches the folder; `description`: 1–1,024 characters, says what the skill does and when to use it | S2 | D |
| C3 | Keep `SKILL.md` under 500 lines and body instructions under 5,000 tokens; metadata (~100 tokens) loads at startup; resources load as needed | S2 | D |
| C4 | Claude Code follows the Agent Skills standard and adds extensions; claude.ai uploads accept only `name`, `description`, `license`, `compatibility`, `metadata`, `allowed-tools`, and other fields cause a hard error | S3 | D |
| C5 | Skill content stays in context across turns once loaded, so keep the body concise | S3 | D |
| C6 | Cloud and Cowork sessions don't read `~/.claude/skills/`; use repository `.claude/skills/` or skills enabled on your claude.ai account | S3 | D |
| C7 | Clear instructions, explained reasons, 3–5 examples in tags, XML structure and a role all improve results; long data goes first and the query last (up to 30% better) | S1 | D |
| C8 | Anthropic's records block: last-4 digits, no claims of checks without tool evidence, no messages as a named person without approval | S1 | D |
| C9 | Success criteria should be specific, measurable, achievable and relevant; tests should mirror real tasks and edge cases; prefer volume and automated grading | S4 | D |
| C10 | Grading order: code-based → AI grader with a rubric → human | S4 | D |
| C11 | Gems: personal accounts read-only on Nov 17, 2026 and removed Dec 17, 2026; Workspace business March 2027; education June 2027; automatic conversion to skills | S5 | D |
| C12 | Skills don't yet work with Guided Learning, Canvas, Deep Research or the video and music tools | S5 | D |
| C13 | Gemini can import `SKILL.md` from other platforms (Mac app and web); up to 100 MB of files per skill; 100 active skills | S5 | D |

## Sources
- S1: Anthropic, Prompting best practices: https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/claude-4-best-practices (redirects to platform.claude.com). Read 2026-11-28.
- S2: Agent Skills, Specification: https://agentskills.io/specification. Read 2026-11-28.
- S3: Claude Code Docs, Extend Claude with skills: https://code.claude.com/docs/en/skills. Read 2026-11-28.
- S4: Anthropic, Define success criteria and build evaluations: https://docs.claude.com/en/docs/test-and-evaluate/develop-tests. Read 2026-11-28.
- S5: Google Gemini Help, About the transition from Gems to skills: https://support.google.com/gemini/answer/18560919. Read 2026-11-28.
