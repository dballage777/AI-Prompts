# NOTES — Job search: legitimate US jobs & avoiding scams

## Scope
Topic: Finding legitimate US job openings and avoiding job scams (official job boards, CareerOneStop, USAJOBS, state job banks, FTC guidance). Audience: US job seekers · Recency: 2024+ · Region: US · Language: English.
Extra requirement: record which job-search sources have public APIs or search pages an AI assistant could query — key needed? terms of use?
Purpose (Part 2): building a Claude career and Christian self-help bot that finds legitimate US jobs that fit a user's resume.

## Access preflight (2026-11-15, plain HTTPS request through the session proxy)
| Category | Host tested | Result |
|---|---|---|
| Official federal job sites | careeronestop.org, usajobs.gov, developer.usajobs.gov | BLOCKED to plain requests (Akamai 403 bot protection at the site). Readers may try the standard fetch tool once; no workarounds. |
| Official consumer-protection | consumer.ftc.gov | BLOCKED to plain requests (403). Same rule. |
| Official law-enforcement | ic3.gov | OPEN |
| Labor-exchange / workforce | nlxresearchhub.org, apprenticeship.gov | OPEN |
| Consumer NGO | bbb.org/scamtracker | OPEN |
| Academic/preprint | arxiv.org | OPEN |
| Community | reddit.com, news.ycombinator.com | OPEN |
| Code host | github.com | 400 to bare request (likely fine via fetch tool) |
| Video | youtube.com | OPEN |
| Archive | web.archive.org | BLOCKED (connection closed by relay) |
