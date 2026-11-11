# Research Plan: Career and Christian Self-Help Bot (Claude)
Created 2026-11-11. The bot will run on Claude, as a Claude Project with custom instructions, for **US job seekers**.

**What the bot will do:**
1. Build or update a resume, either from an upload or step by step, and output it as .docx or .pdf.
2. Find US jobs that fit the resume or the user's request.
3. Tailor the resume to a specific job.
4. Offer self-help plans (stress and anxiety, meal plans, exercise, daily planner) from a Christian, non-denominational perspective.

## How to run each topic (one new Claude Code chat per topic)
1. Start a **new Claude Code chat** in the dballage777/AI-Prompts repository.
2. Paste `prompts/claude/Top30_Resource_Research_Prompt_v3.txt`. When it asks for the topic, paste the topic line from the table below.
3. When the Top 30 list is done, paste `prompts/claude/Topic_Learning_Master_Prompt_v2.txt` in the **same chat**, then paste the Top 30 list.
4. At the end, tell Claude: "Commit and push all research files, and tell me the branch name."
5. Record the branch name in the table.

| Order | Name | Topic line to paste | Done? | Branch |
|---|---|---|---|---|
| 1 | Stress, Anxiety & Wellness-Bot Safety | Evidence-based self-help for stress and anxiety, and safety rules for AI wellness chatbots (crisis handling, 988, when to refer to a professional). Audience: US adults · Recency: 2023+ · Region: US · Language: English · Folder: research/stress-anxiety-wellness-safety | ☑ | claude/brave-hypatia-cg00ep |
| 2 | Christian Perspective & Scripture Use | Integrating a Christian (non-denominational) perspective into self-help and wellness support: respectful non-denominational framing, how to pair Scripture with proven coping methods, and which Bible translations can be quoted freely (publisher quotation limits vs. public-domain translations). Preferred source types: Christian counseling organizations, faith-and-mental-health research, and Bible publishers' permission pages. Audience: US adults · Language: English · Folder: research/christian-perspective-scripture-use | ☐ | |
| 3 | | Resume writing, applicant tracking systems (ATS), and tailoring a resume to a job description, without fabrication. Audience: US job seekers · Recency: 2024+ · Region: US | ☐ | |
| 4 | | Finding legitimate US job openings and avoiding job scams (official job boards, CareerOneStop, USAJOBS, state job banks, FTC guidance). Audience: US job seekers · Recency: 2024+ | ☐ | |
| 5 | | Healthy lifestyle planning: meal planning, beginner exercise routines, sleep, and daily planners, based on official US guidelines (Dietary Guidelines, MyPlate, CDC/HHS Physical Activity Guidelines) with safety screening. Audience: US adults | ☐ | |
| 6 | | Claude app (claude.ai) features for building a custom assistant: Projects and custom instructions, creating .docx/.pdf files, web search, file uploads, memory, and privacy settings. Recency: current Anthropic documentation (10–15 sources is enough) | ☐ | |

## After all six are done
Start a chat and say: "Build the Career and Christian Self-Help bot. Load the knowledge bases from these branches: …". Use the Prompt Architect master prompt v2 with platform **Claude**.
