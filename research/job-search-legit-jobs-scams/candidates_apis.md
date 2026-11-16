# Candidates: APIs and queryable job data (open source / technical batch)

Checked 2026-11-15. Fetch method: WebFetch, or `curl -sSL` with no spoofed headers. "Keyless" means a live call returned data in this session with no key.

name | canonical URL | type | one-line reason it matters | how you found it | access status | date or last-updated | API?
---|---|---|---|---|---|---|---
USAJOBS Developer portal | https://developer.usajobs.gov/ | Official federal API docs (OPM) | Official home for the federal job APIs: Search, Historic JOA, codelists, schemas | WebSearch | ACCESSIBLE (WebFetch; curl got 403) | not visible | API: docs hub
USAJOBS Search API | https://developer.usajobs.gov/api-reference/get-api-search (endpoint https://data.usajobs.gov/api/Search) | Official API | Live federal job search with Keyword, LocationName, Radius, RemoteIndicator, DatePosted (0–60), ResultsPerPage (max 500) | WebSearch / portal nav | ACCESSIBLE (WebFetch) | not visible | API: key needed (free application at /apirequest/). Headers: Host=data.usajobs.gov, User-Agent=the registered email, Authorization-Key. Limits: 10,000 rows per query, 500 per page, "Public" jobs by default.
USAJOBS Authentication guide | https://developer.usajobs.gov/guides/authentication | Official docs | Says which calls need a key; "Authentication is not required when using the codelist APIs" | portal nav | ACCESSIBLE (WebFetch) | not visible | API: describes key and headers
USAJOBS Rate Limiting guide | https://developer.usajobs.gov/guides/rate-limiting | Official docs | Search: 10,000 rows per query and 500 rows per page. Codelist and Dynamic Search: "No limits." | portal nav | ACCESSIBLE (WebFetch) | not visible | API: limits
USAJOBS API Terms of Service | https://developer.usajobs.gov/guides/terms-of-service | Official terms | Public data may be used commercially, redistributed, and modified. Attribution is encouraged, not required. A product may not claim OPM endorsement or present altered data as official. | portal nav | ACCESSIBLE (WebFetch) | not visible | API: terms (see Notes)
USAJOBS Historic JOA API | https://developer.usajobs.gov/api-reference/get-api-historicjoa (endpoint https://data.usajobs.gov/api/historicjoa) | Official API | Current and past announcements: agency, series, pay range, open and close dates, status. "does not require authorization or authentication." | WebSearch | ACCESSIBLE. A live keyless call via WebFetch returned JSON (totalCount 1137 for series 2210 opened since 2026-10-01). Plain curl got 403. | data current to Oct 2026 postings | API: NO KEY. Filters: HiringAgencyCodes, PositionSeries, AnnouncementNumbers, USAJOBSControlNumbers, open and close date ranges. Pages by continuationToken.
USAJOBS Codelist APIs | https://developer.usajobs.gov/ (Code list APIs section) | Official API | Lookup values (agencies, series, and others) for building queries | portal nav | ACCESSIBLE (docs via WebFetch; the codelist endpoint itself got 403 via curl and was not retested) | not visible | API: no key, "No limits" (per docs)
USAJOBS.gov search page | https://www.usajobs.gov/search/results/ | Official job board | The human-facing federal search page | known from portal | BLOCKED (curl 403; WebFetch not tried, since the API is the better route) | n/a | queryable search page, but use the API
CareerOneStop Web API (main page) | https://www.careeronestop.org/Developers/WebAPI/Web-API.aspx | Official DOL-sponsored API docs | Registration and terms for the Jobs, Occupations, Skills Matcher, Salaries, Training, and AJC APIs | WebSearch | BLOCKED (WebFetch 403 and curl 403; cloudfront.careeronestop.org host not allowed by this session's network) | n/a | API: key needed (from search snippets only; see Notes)
CareerOneStop API Explorer | https://api.careeronestop.org/api-explorer | Official API explorer | Lists the APIs: Jobs V2, Occupations (keyword and skills match), Skills Matcher, Skills Gaps, Salaries, Training V2, AJCs, Certifications, Licenses, Unemployment | WebSearch | ACCESSIBLE (WebFetch and curl 200) | not visible | API: token needed ("Authorization: Bearer API Token"). The page gives no terms or limits.
CareerOneStop Jobs API Update Notice | https://www.careeronestop.org/Developers/WebAPI/jobs-api-updates.aspx | Official notice | Jobs API v2 needs a new request approved by the NLx Research Hub Governance Board (search snippet) | WebSearch | BLOCKED (WebFetch 403) | snippet says Aug 27, 2024 | API: approval-gated (unverified)
CareerOneStop Find Jobs page | https://www.careeronestop.org/Toolkit/Jobs/find-jobs.aspx | Official job search page | The human-facing NLx-powered job search | known URL pattern | BLOCKED (curl 403) | n/a | queryable search page, not verifiable here
NLx Research Hub, Data Access | https://nlxresearchhub.org/data-access | Research data access (NASWA / DirectEmployers) | Daily and historical job-posting microdata from state job banks and employers | WebSearch | ACCESSIBLE (WebFetch) | 2026 (pause notice) | API or secure files, by approval only. Data use agreement required. Raw data may not be shared. Currently "temporarily pausing processing data requests," with a new model planned for 2027. NOT usable by a consumer bot.
NLx Research Hub (NASWA page) | https://www.naswa.org/national-labor-exchange/nlx-research-hub | Background | Explains the Hub and its free access for approved projects | WebSearch | ACCESSIBLE (curl 200) | not visible | none for the public
US National Labor Exchange job search | https://usnlx.com/ (search at https://usnlx.com/jobs/?q=...&location=...) | Public job board (NASWA + DirectEmployers) | The NLx network that feeds state job banks. Collects openings from corporate sites, state job banks, and USAJOBS. | WebSearch | ACCESSIBLE (curl 200) | ©2026 | queryable search page (a GET form at /jobs/), but results are rendered by JavaScript. The backend search API is undocumented, so do not rely on it.
O*NET Web Services | https://services.onetcenter.org/ | Official DOL / ETA API | Occupation keyword search, the full O*NET database, and the Interest Profiler. Use it to map a resume to occupations and skills. | WebSearch | ACCESSIBLE (WebFetch) | current API is v2 (v1.9 previous) | API: free registration required. Licensed CC BY 4.0.
O*NET Web Services Terms | https://services.onetcenter.org/terms | Official terms | Free if a link to O*NET Web Services is displayed. Throttled above 5 requests/sec or 50,000/day. Data may not be altered. Paid apps need permission. | portal nav | ACCESSIBLE (WebFetch) | not visible | API: terms
O*NET OnLine / My Next Move | https://www.onetonline.org/ ; https://www.mynextmove.org/ | Official career-exploration sites | Human-facing occupation search and skills pages | known | ACCESSIBLE (curl 200) | not visible | queryable search pages
BLS Public Data API | https://www.bls.gov/developers/ | Official federal API | Wages and employment series (OES, CPS, and others) for pay sanity checks | WebSearch | ACCESSIBLE (WebFetch; curl 403) | not visible | API: v1.0 needs no key (25 queries/day, 25 series, 10 years). v2.0 needs a free registration key (500 queries/day, 50 series, 20 years). Both: 50 requests per 10 seconds.
BLS API FAQ | https://www.bls.gov/developers/api_faqs.htm | Official docs | Source for the limits above. The page also says "must not exceed a 10 year period," which conflicts with its own 20-year limit. | portal nav | ACCESSIBLE (WebFetch) | not visible | API: limits
BLS Occupational Outlook Handbook | https://www.bls.gov/ooh/ | Official outlook pages | Career outlook and pay by occupation | known | BLOCKED (curl 403 "Access Denied"; WebFetch not tried) | n/a | no API (BLS API covers wage series)
Apprenticeship.gov Apprenticeship Finder | https://www.apprenticeship.gov/apprenticeship-job-finder | Official DOL search page | Apprenticeship job openings, each tagged "Registered Occupation" or "Partner" | WebSearch / nav | ACCESSIBLE (curl 200; WebFetch 403) | not visible | queryable search page. No public API found. Its data page lists no API.
Apprenticeship.gov Data and Statistics | https://www.apprenticeship.gov/data-and-statistics | Official data page | Program statistics, not job openings | WebSearch | ACCESSIBLE (curl 200; WebFetch 403) | not visible | none found
Greenhouse Job Board API | https://developers.greenhouse.io/job-board.html (redirects to https://docs.greenhouse.io/job-board.html); endpoint https://boards-api.greenhouse.io/v1/boards/{token}/jobs | Public ATS API | Pulls an employer's own career-page listings straight from its ATS, a strong legitimacy signal | WebSearch | ACCESSIBLE. Docs via WebFetch. A live keyless call (boards/gitlab/jobs) returned 200. | not visible | API: NO KEY for GET ("authentication is not required for any GET endpoints"). Posting applications needs a key. No rate limits or terms stated.
Lever Postings API | https://github.com/lever/postings-api ; endpoint https://api.lever.co/v0/postings/{company}?mode=json (EU: api.eu.lever.co) | Public ATS API | The employer's own published postings | WebSearch | ACCESSIBLE. Docs via WebFetch (curl and gh 403). A live keyless call (leverdemo) returned 200. | not visible | API: NO KEY for GET. Key needed only to POST. 2 application POSTs/sec. Says "These jobs may be scraped by third parties." No browser CORS outside the company's own domain.
Ashby Public Job Posting API | https://developers.ashbyhq.com/docs/public-job-posting-api ; endpoint https://api.ashbyhq.com/posting-api/job-board/{name}?includeCompensation=true | Public ATS API | Employer postings, optionally with compensation data | WebSearch | ACCESSIBLE. Docs via WebFetch. A live keyless call (job-board/ashby) returned 200. | not visible | API: no key in practice (the docs do not state auth). No limits or terms stated.
SmartRecruiters Posting API | https://developers.smartrecruiters.com/docs/posting-api ; endpoint https://api.smartrecruiters.com/v1/companies/{companyId}/postings | Public ATS API | Employer postings | WebSearch | ACCESSIBLE. A live keyless call returned JSON (company smartrecruiters, released 2026-10-28). | not visible | API: public company postings returned with no key in this test. The docs page describes API key / OAuth for *internal* postings. No limits stated.
Workable public jobs endpoint | https://help.workable.com/hc/en-us/articles/115012771647-Using-the-Workable-API-to-create-a-careers-page ; endpoint https://www.workable.com/api/accounts/{subdomain}?details=true | Public ATS endpoint | Employer's published jobs | WebSearch | Docs ACCESSIBLE (WebFetch). The live endpoint returned 429 (rate-limited) to curl. | not visible | API: public endpoints show no token. The v3 `/spi/v3/jobs` needs a Bearer token. No limits documented.
Adzuna API | https://developer.adzuna.com/ ; endpoint pattern https://api.adzuna.com/v1/api/jobs/{country}/search/{page}?app_id=&app_key= | Commercial aggregator API | Large aggregated job index with salary estimates | WebSearch | ACCESSIBLE (curl 200 / WebFetch) | not visible | API: free key needed (app_id + app_key). Terms below. US coverage not confirmed on the pages read.
Adzuna API Terms | https://developer.adzuna.com/docs/terms_of_service | Terms | Attribution logo required (≥116x23 px, linked). Commercial and revenue-generating use needs a licence after a 14-day trial. No resale. | portal nav | ACCESSIBLE (WebFetch) | not visible | API: terms
Himalayas Remote Jobs API | https://himalayas.app/api | Aggregator API (remote jobs) | Remote jobs with salary ranges. A check endpoint returns 410 when a job has closed, which helps flag stale listings. | WebSearch | ACCESSIBLE (curl 200 / WebFetch) | not visible | API: NO KEY needed (optional free key: 60/min, 10,000/day). Must link back. Use the applicationLink unchanged. Show only on your own sites. No redistribution to other boards. Remove expired jobs.
Arbeitnow Job Board API | https://www.arbeitnow.com/blog/job-board-api ; endpoint https://www.arbeitnow.com/api/job-board-api | Aggregator API | Keyless, but Europe-focused, so a poor fit for US users | WebSearch | ACCESSIBLE (curl 200 / WebFetch) | mentions a 2026 UK launch | API: no key. No limits or terms stated.
WorkInTexas (example state job bank) | https://www.workintexas.com/ | State job bank (TWC) | Shows that state job banks offer public guest search | WebSearch-adjacent / known | ACCESSIBLE (WebFetch; curl 403) | not visible | queryable search page (guest), no public API found
CalJOBS (example state job bank) | https://www.caljobs.ca.gov/ | State job bank | California's state job bank | known | BLOCKED (curl 403; WebFetch not tried) | n/a | search page, not verified
American Job Centers (DOL) | https://www.dol.gov/general/topic/training/onestop | Official DOL page | Points users to in-person help and the CareerOneStop finder | known | ACCESSIBLE (curl 200) | not visible | none
python-usajobsapi (GitHub) | https://github.com/paddy74/python-usajobsapi | Open-source wrapper | Typed Python wrapper for USAJOBS Search and Historic JOA, with paging handled | WebSearch | ACCESSIBLE (WebFetch; curl 403; PyPI page showed a bot challenge) | no release date. 83 commits. Says it is under active development. | wrapper. License GPL-3.0. Needs a USAJOBS key for Search.
jobapis/jobs-usajobs (GitHub) | https://github.com/jobapis/jobs-usajobs | Open-source PHP wrapper | Older PHP client for USAJOBS | WebSearch | NOT OPENED (listed only) | n/a | wrapper, likely stale. Excluded.
The Muse API | https://www.themuse.com/developers/api/v2 | Aggregator API | Reported keyless (anecdotal) | WebSearch | BLOCKED (WebFetch 403) | n/a | excluded
Jooble API | https://jooble.org/api/about | Aggregator API | Key needed. Third-party reports say each key gets 500 lifetime requests (anecdotal). | WebSearch | BLOCKED (curl 403 "Just a moment..." bot check; WebFetch not retried) | n/a | excluded
Remotive API | https://remotive.com/api-documentation (redirects to github.com/remotive-io/remote-jobs-api) | Aggregator API | Keyless remote-jobs feed (reported) | WebSearch | BLOCKED (curl 403 on the GitHub redirect) | n/a | excluded
Findwork.dev API | https://findwork.dev/developers/ | Aggregator API | Developer jobs API | WebSearch-adjacent | LOGIN (redirects to the login page) | n/a | excluded

## Notes

**Works with no key (confirmed by live calls in this session):**
- USAJOBS Historic JOA. It worked through WebFetch; plain curl got 403. It returns closed postings too, so check `positionOpeningStatus` and `positionCloseDate`.
- Greenhouse boards API, Lever postings API, Ashby posting API, and SmartRecruiters company postings.
- Himalayas works with no key; Arbeitnow too, but it is EU-focused.
- Workable's public endpoint returned 429 to curl.
- Per the docs (not live-tested), the USAJOBS codelists and BLS API v1 need no key.

ATS endpoints need the employer's board token or slug, so they serve to verify a specific company's postings, not to search broadly. That is still a strong anti-scam check: confirm that a job seen elsewhere also appears on the employer's own ATS board.

**Needs a key or registration:**
- USAJOBS Search: free application. User-Agent must be the registered email.
- CareerOneStop: Bearer token from registration.
- O*NET Web Services: free sign-up.
- BLS v2: free key.
- Adzuna: free app_id and app_key.

**Approval-gated:**
- CareerOneStop Jobs API v2 (NLx Governance Board approval, per search snippets).
- NLx Research Hub. It is currently pausing new data requests, with a new model planned for 2027. It is limited to state LMI and nonprofit research, and raw data may not be shared. Not viable for a consumer bot.

**USAJOBS terms (developer.usajobs.gov/guides/terms-of-service):**
- Public data is usable for lawful commercial or noncommercial purposes, and may be redistributed and modified.
- Attribution is encouraged: name USAJOBS as the source, link the official announcement, and include the retrieval date.
- Do not claim OPM endorsement or present altered data as official. Do not use the seal.
- Do not bypass rate limits or share credentials. OPM does not guarantee the data is current, so verify against the official announcement.
- Bot rule: tell users to apply only through the announcement's instructions, and never claim to have submitted an application.

**O*NET terms:**
- Free with a prominent link and attribution, under CC BY 4.0.
- Limit is 5 requests/sec and 50,000/day.
- Data must not be altered (reformatting is OK).
- Paid or registration-only apps need permission unless a free version also exists. This matters if the bot is ever paywalled.

**Adzuna terms:**
- Personal job search, publishing listings with the Adzuna logo, and research are allowed.
- Commercial, revenue, or lead-generating use requires a licence after a 14-day trial.
- No resale. Do not contact Adzuna's content providers. One account per entity.
- No AI-specific clause was found.

**Himalayas terms:**
- Link back, and do not modify the apply link.
- Show jobs only on your own properties, with no redistribution to other boards or Google Jobs.
- Remove expired jobs.
- No CORS headers, so call it from a backend.
- AI agents are mentioned as a supported use. Full terms are at himalayas.app/terms#api (not opened).

**CareerOneStop:**
- Its main pages returned 403 to both WebFetch and curl, and the cloudfront.careeronestop.org host is outside this session's allowed network. Terms details come from search snippets only and are UNVERIFIED.
- One snippet came from a PDF on a *staging* host (stagechatbotapi.careeronestop.org). It said the service is free with the attribution icon displayed, best-effort, keys must be kept secret, and use is limited to registered sites. Confirm against the live page before relying on it.

**BLS:**
- The FAQ conflicts with itself: 20 years per query for v2 in the table versus "must not exceed a 10 year period" in its text.
- The terms page returned 403 to curl and was not read.

**usnlx.com:**
- It is the public NLx job search, run by NASWA and DirectEmployers. It has a GET search URL (`/jobs/?q=&location=`), but results render client-side from an undocumented backend (prod-search-api.jobsyn.org). Treat it as a link to hand users, not as an API.

**State job banks:**
- No common public API was found. WorkInTexas allows guest search; CalJOBS blocked curl.
- The full list of states using NLx sits behind a NASWA page that returned "Log-in Required" (403).
- CareerOneStop's state job bank directory would be the canonical list, but it was blocked here.

**Third-party scrapers and wrappers (Apify actors, jobspipe, publicapis directories):**
- Seen in search results. Not used as sources; their claims are anecdotal.
- Apify "USAJOBS scraper" actors exist, but the official API makes them unnecessary.
- No CareerOneStop wrapper was found.
