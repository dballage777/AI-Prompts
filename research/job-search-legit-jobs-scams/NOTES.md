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

## Passes and method (2026-11-15)
- Pass 1 discovery: 5 parallel workers (official, scams, APIs, research/media, community/archives) → 186 candidate lines in candidates_*.md; about 146 accessible.
- Passes 2–5 (expansion, validation, community, cross-check) were done inside the workers: citations followed (e.g., FTC alerts → Data Spotlight; IC3 PSAs → annual report; HN threads → arXiv paper), live API calls made, FTC/IC3/BBB figures cross-checked, vendor surveys labeled.
- Pass 6 dedupe: removed overlapping FTC alerts (side-hustle, reshipping, "how to spot", 2025 loss press release), duplicate USAJOBS docs (tutorial, rate-limit page), duplicate ATS APIs (Ashby, SmartRecruiters, Workable), example state job banks (NLx covers the pattern), BBB guidance page (overlaps BBB 2026 study). These are listed as near-misses in SCORED_CANDIDATES.csv with the reason, which is why a few near-misses score above the lowest selected items.
- Pass 7 weights: default weights kept. Diversity: official guidance, official job boards, APIs/terms, nonprofit data, platform safety pages, a university guide, journalism.
- Pass 8 omission check: the strongest omissions are all BLOCKED this session — CareerOneStop Job Finder / AJC finder / state job bank list / Web API terms, USAJOBS Help Center (scam/phishing FAQ), DOL Women's Bureau pay-transparency map, ITRC. Accessible substitutes chosen: CareerOneStop API Explorer, DOL ETA AJC page, NASWA NLx + usnlx.com.
- Final verification: all 30 URLs re-opened 2026-11-15. 20 returned 200 to a plain request; 10 (consumer.ftc.gov ×3, ftc.gov, usajobs.gov, developer.usajobs.gov ×3, opm.gov, github.com) return 403 to plain requests (site bot protection) but opened via the standard fetch tool earlier today and are re-read in Part 2.

## Excluded-source log (selected; full log in candidates_*.md)
BLOCKED: careeronestop.org (all pages), usajobshelp.opm.gov, caljobs.ca.gov, myjobs.ny.gov (TLS/503), idtheftcenter.org, michigan.gov AG, indeed.com news release, fbi.gov victim page, mdpi.com (EMSCAD paper), dol.gov/agencies/wb map, e-verify.gov search, axios.com, reddit.com, workplace/money.stackexchange.com pages, askamanager.org, goodwill.org, YouTube watch pages, themuse.com API, jooble.org. DEAD: FTC work-from-home article (404), FINRA insights page (404), OPM FAQ index (404), emscad.samos.aegean.gr. LOGIN: mycareeradvisor.com, findwork.dev, community.workday-style NASWA member pages.

## Community findings (anecdotal)
HN threads: widespread belief in ghost jobs; fake recruiters sending malware "coding tests"; proxy-interview/identity-renting schemes; public "open to work" posts attract scammers; HN "Who is hiring" rules ban recruiters/job boards (not fully enforced). Reddit/Stack Exchange/Ask a Manager pages blocked; Stack Exchange titles seen only via its API.

## Disagreements between sources
- Job-scam losses differ by agency: FTC (job & employment-agency losses $501M in 2024) vs FBI IC3 (employment $264.2M in 2024, $362.9M in 2025) — different complaint pools; never add them.
- FTC H1 2024: "over $220M" (text) vs $223M (footnote).
- BBB 2025 employment-scam counts: 23,234 (BBB) vs ~22,000 (secondary coverage).
- Ghost-job prevalence: vendor surveys (Greenhouse, Clarify Capital, Resume Builder) use different definitions; not comparable. Ghost jobs ≠ scams.
- CareerOneStop Jobs API access: token per API Explorer; NLx governance approval per search snippets (unverified).

## Job-search APIs and queryable pages (for the bot)
| Source | Key needed? | Terms (as read) | Status |
|---|---|---|---|
| USAJOBS Search API | Yes (free; email as User-Agent) | Commercial use, redistribution OK; no OPM endorsement claims; don't present altered data as official; attribution encouraged | Verified docs + terms |
| USAJOBS Historic JOA API | **No** | same terms | Live keyless call returned JSON (via fetch tool); includes closed postings |
| USAJOBS codelists | **No** (per docs) | same | Docs only |
| CareerOneStop Web API (Jobs V2, AJC, salaries) | Yes (bearer token + user ID); Jobs V2 possibly needs NLx approval | Terms page blocked — unverified | API Explorer opened |
| NLx (usnlx.com) | — | No documented public API; JS-rendered search; Research Hub paused for new requests until 2027 | Link only |
| O*NET Web Services | Yes (free) | Visible link/attribution; ≤5 req/s, 50k/day; don't alter data; paid apps need permission | Verified |
| BLS API | v1 **No** (25/day); v2 free key (500/day) | — | Docs |
| Greenhouse / Lever / Ashby / SmartRecruiters public job boards | **No** (GET) | Need employer board slug; verification of a specific employer, not broad search | Live calls returned data |
| Himalayas | **No** (optional key) | Link back; don't modify apply link; no redistribution | Docs/terms |
| Adzuna | Yes (free) | Commercial use needs licence after 14-day trial | Terms read |
| Apprenticeship.gov Job Finder, state job banks, BBB Scam Tracker | Search pages only | Behind bot protection in several cases; link users rather than scrape | — |
| Reddit / Idealist | — | Reddit commercial use needs agreement; Idealist bans bots | Don't query |
| HN API / Algolia, Stack Exchange API | **No** | SE requires attribution; content anecdotal | — |
