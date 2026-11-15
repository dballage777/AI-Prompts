# KNOWLEDGE BASE — Finding Legitimate US Jobs & Avoiding Job Scams
Topic: finding legitimate US job openings and avoiding job scams (official job boards, CareerOneStop, USAJOBS, state job banks, FTC guidance). Audience: US job seekers, 2024+.
Built 2026-11-15 from the Top 30 in `../TOP_30.txt` (S1–S30; see SOURCES.md). Per-source notes are in `sources/S#.md`, and the claim table is in `CLAIMS.csv`. The Top-30 research trail is in `../NOTES.md` and `../SCORED_CANDIDATES.csv`.
Purpose: building a Claude career and Christian self-help bot that finds legitimate US jobs that fit a user's resume. This file pairs with `research/resumes-ats-tailoring/knowledge/`, which covers honest tailoring and knockout questions, and with `research/stress-anxiety-wellness-safety/knowledge/`, which covers emotional support after scams.

**Evidence labels**
- **Documented:** official, primary, or publisher statement.
- **Research:** survey or data with methods.
- **Reported:** secondary, press, vendor, or anecdotal.
- **Inferred:** my synthesis.

**Strength ratings**
- **Strong:** 2+ independent sources agree.
- **Moderate:** 1 solid source.
- **Limited:** 1 weak or secondary source.
- **Contested:** sources disagree.

---

## 1. Topic overview

**What it is.** Three things a job-search assistant must do well:
1. **Find openings in legitimate places.**
   - Official public systems:
     - USAJOBS for federal jobs [S2][S3][S19].
     - CareerOneStop and American Job Centers [S10][S14].
     - State job banks fed by the National Labor Exchange (NLx) [S17][S20].
     - Apprenticeship.gov [S16].
   - Employers' own careers pages and applicant-tracking boards [S24][S30].
2. **Recognize and avoid scams.** Main scam types:
   - fake checks and overpayment [S1][S11];
   - pay-to-work fees [S1][S6];
   - task / "optimization" scams paid in crypto [S4][S5][S13];
   - reshipping and money muling [S6][S21];
   - identity harvesting [S21][S26];
   - fake recruiters by text, WhatsApp, or Telegram [S6][S26][S28];
   - illegal "facilitator" gigs such as laptop hosting or proxy interviews [S15].
3. **Help victims act fast.** Contact the bank first, then report to ReportFraud.ftc.gov and IC3, and avoid "recovery" scams [S7][S18][S5].

**Why it matters (numbers).**
- **FBI IC3 employment fraud** [S7]:
  - 2023: 15,443 complaints, $70.2M lost.
  - 2024: 20,044 complaints, $264.2M lost.
  - 2025: 24,688 complaints, $362.9M lost.
  - Of 2025 losses, $288.2M involved crypto.
  - Documented.
- **FTC** [S4]:
  - Job-scam losses more than tripled 2020→2023 and topped $220M in H1 2024.
  - Task-scam reports went from about 5,000 in all of 2023 to about 20,000 in H1 2024.
  - Crypto became the top payment method.
  - Research.
- **BBB** [S13][S22]:
  - Employment scams were the #2 riskiest scam type in 2025, and #1 for ages 18–34.
  - Median loss was $1,000.
  - 51.4% of contacts came by text; 35.1% of payments were in crypto.
  - Reports doubled in 2025 (over 23,000).
  - Research.
- **LinkedIn** [S28]:
  - 21% of professionals surveyed say they have been job-scam victims (32% of Gen Z).
  - 90% of reported scam messages try to move the conversation off-platform.
  - Research (vendor survey, 5 countries).

**Bottom line.**
- Start from official and original sources.
- Verify every opportunity on the employer's own site, using contact details you find yourself.
- Never pay to get a job or to get paid.
- Never move money for an "employer."
- Never hand over SSN, bank details, or ID before a verified offer.
- Treat unsolicited text, WhatsApp, or Telegram job offers as scams.
- If money was lost, act within hours: bank, then FTC and IC3. Beware recovery scams.
- **Strong.**

## 2. Core concepts and glossary

- **Employment fraud (IC3 definition).** "An individual believes they are legitimately employed and loses money, or launders money/items during their employment" [S7]. Documented.
- **Fake check / overpayment scam.**
  - The "employer" sends a check for supplies or as early pay, and you send part of it back or onward. The check bounces and you owe the bank [S1][S11][S21].
  - Banks must make deposited funds available quickly, but it "can take weeks" to learn a check is fake [S11].
  - Variant: a fake *pending transfer* shown in PayPal or Venmo [S29].
  - Documented. **Strong.**
- **Task ("gamified", "optimization", "product boosting") scam.**
  - It starts with an unsolicited text or WhatsApp message.
  - The "work" is liking, rating, or reviewing inside an app with a fake earnings dashboard.
  - Small early payouts build trust. Then you must deposit money, often crypto, to "unlock" work or withdraw earnings [S4][S5][S13][S22].
  - BBB's 2025 median loss for task scams was $2,300 [S13].
  - **Strong.**
- **Fee / pay-to-work scam.** Charges to apply, interview, use a recruiter, train, onboard, run a background check, or buy a starter kit or certification [S1][S21][S26]. "Honest placement firms do not typically charge a fee to job candidates" [S1]. **Strong.**
- **Reshipping / money-mule "jobs."** Receive and reship packages, or move money through Western Union, MoneyGram, or crypto. These "may be illegal even when the money isn't yours" [S21]. "Reshipping goods is never a real job" [S6]. **Strong.**
- **Identity harvesting / applicant harvesting.** Fake postings built to collect SSN, ID images, bank details, or ID.me logins [S21][S26][S20]. USNLx's terms ban "applicant harvesting" [S20]. **Strong.**
- **Fake recruiter / impersonation.**
  - Recruiters pose as real companies [S6][S26].
  - Spoofed or free email domains [S21][S23][S26].
  - Even a trusted domain such as @uw.edu can be spoofed [S23].
  - Scammers alter and repost real employers' old ads [S11].
  - **Strong.**
- **Off-platform move.** A push to WhatsApp, Telegram, or external forms. This appears in 90% of reported LinkedIn scam messages [S28][S26][S22]. **Strong.**
- **Deepfake / AI interviews.** Audio and lip movement don't match. These are mostly aimed at employers, but AI-involved employment scams cost about $13M in 2025 [S7]. Documented.
- **North Korean IT-worker "facilitator" gigs.** Fake freelance posts on well-known job boards recruit Americans to host company laptops, sit interviews on someone's behalf, or lend their identity or accounts. "These actions are illegal" [S15]. Documented.
- **Recovery scam.** After a loss, someone offers to "recover" the money for a fee. Don't pay [S5][S7]. **Strong.**
- **Ghost job (ghost posting).** A real employer's listing that isn't actively being filled. "Not a scam, per se… but… misleading" [S29]. Reported.
- **National Labor Exchange (NLx).** A nonprofit NASWA–DirectEmployers partnership. It collects postings daily from employer sites, state job banks, and federal sites, "exclusively from original and vetted sources," and links back to the source. All 50 states plus DC, Guam, PR, and USVI participate [S17][S20]. Documented.
- **American Job Centers (AJCs).** Local public workforce offices (about 2,300–2,400) offering job search help, referrals, assessment, and training access. Some services have eligibility rules [S10]. Documented.
- **USAJOBS.** The official federal job site (OPM). You sign in with login.gov. You apply through the announcement, then get handed to the agency's system [S3][S19]. Documented.
- **Applicant tracking system (ATS) job board.** An employer's own published postings, for example Greenhouse `boards-api…/{token}/jobs` or Lever `api.lever.co/v0/postings/{site}`. Reading them needs no key [S24][S30]. Documented.
- **Business-entity registry.** Each state's corporate database, reachable through NASS. Filing is "ministerial," so a listing is not proof of legitimacy [S27]. Documented.

## 3. Key principles and frameworks

1. **Never pay to get a job, and never pay to get paid.**
   - "Don't pay for the promise of a job" [S1].
   - "Never pay anyone to get paid" [S4].
   - "Never send money to an alleged employer" [S5].
   - "Never pay money to get your paycheck" [S13].
   - Applying for federal and postal jobs "is always free" [S1].
   - Nuance: a real employer may charge for a uniform or tools, usually taken from a paycheck after you start [S21].
   - **Strong.**
2. **Never move money for an employer.**
   - No depositing checks and sending money back [S1][S11][S21][S23].
   - No buying gift cards with "employer" funds [S1][S11].
   - No reshipping [S6][S21].
   - No crypto deposits [S5][S22].
   - **Strong.**
3. **Protect identity until there is a verified offer.**
   - Don't share SSN, bank details, ID photos, or ID.me credentials early [S21][S26][S28].
   - Real employers don't ask "early in the hiring process" [S21].
   - Keep SSN and date of birth off resumes [S20].
   - **Strong.**
4. **Verify independently, through channels you find yourself.**
   - Find the role on the company's official careers site [S11][S22][S28].
   - Call the company's main number [S21].
   - Search the name, phone, or email plus "scam", "review", or "complaint" [S1][S26].
   - Check the email domain [S21][S26].
   - A recruiter who discourages verification is a red flag [S21].
   - **Strong.**
5. **Treat unsolicited text, WhatsApp, or Telegram offers as scams.** "Ignore generic and unexpected texts, WhatsApp, or Telegram messages about jobs" [S6][S4][S13][S22][S26]. **Strong.**
6. **Insist on a real interview.** Video or in person; be wary of chat-only interviews, offers with no interview, or a camera kept off [S21][S13][S22]. **Strong.**
7. **Slow down; pressure is a tactic.** "Real opportunities won't disappear because you took a beat to think" [S28]. Talk the offer over with someone you trust [S1][S23]. **Strong.**
8. **Being listed on a reputable site is not proof.**
   - "No site can promise every job is real" [S21].
   - USNLx has "no obligation to monitor" postings [S20].
   - Apprenticeship.gov pulls from commercial boards [S16].
   - University Handshake boards and real-looking domains can carry scams [S23].
   - An ATS board or a state registry listing only shows that someone set it up [S24][S27][S30].
   - **Strong.**
9. **Start from official and original sources.**
   - USAJOBS for federal jobs [S1][S3].
   - CareerOneStop and AJCs [S1][S10][S14].
   - State job banks and NLx (original, vetted sources that link back) [S17][S20].
   - Apprenticeship.gov [S16].
   - Employers' own ATS boards [S24][S30].
   - **Strong.**
10. **If scammed: act fast and avoid round two.**
    - Contact the bank or payment company immediately and ask for a recall or reversal [S1][S7][S11].
    - File at IC3 and ReportFraud.ftc.gov; the FTC form offers an FBI referral for transfers [S7][S18].
    - The IC3 Recovery Asset Team froze $679M (58% success) on 2025 incidents [S7].
    - Never pay "recovery" services [S5][S7].
    - Save evidence [S21].
    - The FTC "can't resolve your individual report" [S18].
    - **Strong.**
11. **Name the emotional harm without shame.**
    - Almost 50% of people targeted lost confidence or peace of mind [S13].
    - Victims report stress and loss of confidence [S28].
    - 32% of Gen Z ignored warning signs because jobs felt scarce [S28].
    - Links to topic #1's support rules.
    - **Moderate.**
12. **AI-tool rules for data sources.**
    - Use public data within its terms.
    - Never claim endorsement [S9].
    - Never claim to have submitted an application [S9].
    - Send users to the official announcement or employer site to apply [S9][S16][S24][S30].
    - Don't scrape sites whose terms forbid it [S20][S25].
    - **Strong.**

## 4. Best practices and methods, step by step

### 4a. Finding legitimate openings that fit a resume — Documented + Inferred
1. **Get the target from the resume** (see the resume KB): title, skills, location or remote preference, pay floor, and federal/apprenticeship interest.
2. **Map the resume to standard occupations.**
   - O*NET keyword search (`/online/search?keyword=`) returns occupation codes and skills [S12].
   - Or use CareerOneStop's Occupations-by-keyword API [S14].
3. **Search the right official sources:**
   - **Federal:** USAJOBS search, or the API [S2][S3].
     - Check "This job is open to" / Who May Apply [S3].
     - Show the close date [S2][S8].
   - **All sectors, public system:** CareerOneStop Job Finder.
     - Its API is Jobs V2, which accepts O*NET codes plus ZIP, radius, and days [S14].
     - Or the user's state job bank via usnlx.com/states [S20].
     - Or usnlx.com, which links back to the original source [S17][S20].
   - **Apprenticeships:** Apprenticeship.gov Job Finder [S16].
     - "Registered Partner" means the employer is a registered sponsor.
     - "Registered Occupation" describes only the occupation.
   - **In-person help:** the nearest American Job Center, found with the CareerOneStop finder or 1-877-US-2JOBS [S10].
4. **For a specific employer, confirm the role is live on its own ATS:**
   - Greenhouse `GET boards-api.greenhouse.io/v1/boards/{token}/jobs` [S24].
   - Lever `GET api.lever.co/v0/postings/{site}?mode=json` [S30].
   - Get the token or site slug from the link on the company's own website (Inferred).
5. **Present each result with:**
   - title, employer, location, and pay range if given (Greenhouse `pay_transparency`; Lever `salaryRange`);
   - date posted and close date;
   - source and link.
   - Then say "verify and apply on the official page" [S9][S24][S30].
6. **Watch for ghost postings.** Listings at real companies may not be actively filled. Suggest contacting a named recruiter or the employer, and networking [S29].

### 4b. Vetting a posting or recruiter message (red-flag checklist) — Documented
Flag as a **likely scam** if any of these appear:

**Money**
- Asks you to pay a fee, deposit, training, kit, or background-check cost [S1][S21][S26].
- Sends a check or early pay and asks you to send some back or buy gift cards [S1][S11][S21].
- Asks for crypto, or a deposit to "unlock" work or earnings [S4][S5][S22].
- Asks you to buy equipment and ship it somewhere [S26][S23].
- Asks you to reship packages or move money [S6][S21].

**Data**
- Asks early for SSN, bank account, ID photos, driver's license, or ID.me login [S21][S26][S28].

**Contact**
- Unsolicited text, WhatsApp, or Telegram, or a reply-"YES" prompt [S6][S22].
- Pushes you off-platform [S26][S28].
- Free email (Gmail, Yahoo) or a lookalike domain [S21][S26].
- Chat-only interview or camera off [S13][S21].
- Discourages verification [S21].

**Offer**
- High pay for little work [S1][S13][S26].
- Vague duties ("online assessor", "optimization") [S6][S5].
- Hired with no interview [S21][S22].
- Pressure to accept now [S21][S28].
- Poor spelling or grammar [S21][S26].
- Generic greeting [S21].
- Prominent signing bonus or first-year pay [S26].

**Illegal facilitation**
- Hosting laptops, interviewing for someone else, lending accounts or identity, or receiving devices [S15].

**Job-board posting rules that legitimate boards ban** [S20]:
- jobs requiring a capital investment or unpaid training;
- MLM or franchise pitches;
- commission-only roles;
- jobs paying under minimum wage;
- "email for more details" postings.

### 4c. Verifying an employer (step by step) — Documented + Inferred
1. Find the company's official website yourself, not through the message's links. Locate the role on its careers page [S11][S22][S28].
2. Contact the company through its main phone number or official-domain email. Confirm the recruiter works there [S21][S26].
3. Search the company or recruiter name, phone, and email with "scam", "review", or "complaint" [S1][S26].
4. Check BBB Scam Tracker by phone, email, website, or business name. Reports are unverified, and no hits ≠ safe [S25].
5. Check the state business registry through NASS [S27]:
   - Is the entity active?
   - Does the formation date match?
   - Does the address match?
   - A match is a weak signal only.
6. Check that the job offered matches the job applied for ("bait and switch") [S21].
7. Before sharing SSN or bank details, confirm a written offer through verified channels. Even polished offer letters can be fake [S23].

### 4d. If the user was scammed — Documented
1. **Stop all contact. Send no more money or information** [S21].
2. **Call the bank, card issuer, or payment company now.** Ask for a recall or reversal; "time is of the essence" [S7][S1][S11].
3. **File at ic3.gov** with full transaction details, whatever the amount [S7][S5].
4. **File at ReportFraud.ftc.gov.**
   - Allow the FBI referral if money was transferred [S18].
   - Don't put SSN or account numbers in the comment box [S18].
   - Save the report number [S18].
5. **Add the right extra channels:**
   - State attorney general [S1][S6].
   - USPIS for fake checks or reshipping [S11].
   - The job board where it happened (Indeed, LinkedIn) [S21][S26].
   - The impersonated real company [S21].
   - Local police if money or identity was lost [S21][S26][S23].
6. **If ID was shared:** follow FTC identity-theft steps [S21].
7. **Never pay for "recovery."** The FBI warns about fake recovery firms and IC3 impersonators [S5][S7].
8. **Acknowledge the emotional toll** and point to support (topic #1) [S13][S28].

### 4e. Federal application (USAJOBS) basics — Documented [S3][S19][S1]
1. Create a login.gov account and a USAJOBS profile.
2. Build or upload a resume (up to 5 stored). Federal resumes have a 2-page limit; see the resume KB.
3. Search, then read "This job is open to", "Who may apply", "How to Apply", and "Required Documents."
4. Apply: select resume → documents → review → personal info → certify "true, complete, and made in good faith" → continue to the agency site.
5. Track status in USAJOBS.
6. Applying is always free [S1]. Any federal "job" asking for a fee is a scam.

### 4f. Using job APIs responsibly (for a tool-enabled build) — Documented
| Source | Key? | What it gives | Must-follow terms |
|---|---|---|---|
| **USAJOBS Search API** [S2][S9] | Free key. Headers: Host, User-Agent (email), Authorization-Key | Live federal search: keyword, title, location, radius, remote, pay, series, hiring path, date posted. Default 25 per page, max 500; 10,000 rows per query | Commercial reuse OK; attribution encouraged; no claims of OPM endorsement; no "submitted" claims; verify against the announcement; keep the key private |
| **USAJOBS Historic JOA API** [S8] | **None** | Bulk current and past announcements; status, open/close dates, pay, hiring paths; continuation-token paging | Same terms; filter to postings still accepting applications |
| **USAJOBS codelists** [S2] | None | Lookup values | — |
| **CareerOneStop Web API** [S14] | Bearer token + userId | Jobs V2 (keyword or O*NET code, location, radius, days), job details, AJC finder, salaries, occupations, skills matcher | Terms, limits and data sources are on a blocked page: **unverified** |
| **O*NET Web Services** [S12] | Free `X-API-Key` | Title→occupation→skills; crosswalks (incl. military) | Prominent attribution link; don't alter data; ≤5 req/s and 50k/day guidance; paid apps need permission; license non-transferable |
| **Greenhouse Job Board API** [S24] | **None** (GET) | One employer's jobs, pay ranges, deadlines | No stated terms or limits; can't apply for users (needs employer key) |
| **Lever Postings API** [S30] | **None** (GET) | One employer's published postings, salary ranges, workplace type | Server-side only (CORS); no full-text search; POST needs employer key; 2 apply POSTs/s |
| **USNLx, Apprenticeship.gov, state job banks, BBB Scam Tracker** [S16][S20][S25] | — | Human search pages | No public API. USNLx terms bar commercial reproduction and system probing; BBB content is personal/non-commercial only and robots.txt blocks query URLs. **Link users; don't scrape** |
| **NLx Job Search API / Research Hub** [S17] | Members / on request | Bulk postings | Not open to consumer bots |

## 5. Examples and models worth copying

- **FTC one-liners:**
  - "Don't pay for the promise of a job." [S1]
  - "Never pay to get paid or get a job." [S6]
  - "Reshipping goods is never a real job." [S6]
  - "Ignore generic and unexpected texts, WhatsApp, or Telegram messages about jobs." [S6]
- **Fake-check explainer** [S11]: "By law, banks have to make deposited funds available quickly" … "It can take weeks for a bank to figure out that the check is a fake."
- **Overpayment explained plainly** [S29]: "you had never been given $5,000, but you now have paid them $4,500."
- **Verification nudge** [S21]: "Real companies won't mind you verifying a recruiter's identity. If the person discourages you from checking, that's a red flag."
- **Calm pause** [S28]: "Real opportunities won't disappear because you took a beat to think."
- **Federal handoff** [S3][S19]: "Once your application is ready, you'll be transferred to the hiring agency's application system." This is normal; a request for payment is not.
- **Facilitator warning** [S15]: "Reject any request to provide personal information… or personal account logins in exchange for payment."
- **Task-scam anatomy** [S4][S13][S22]: unsolicited text → WhatsApp or Telegram → fake "hire" → dashboard of 40 tasks → small payout → "deposit to unlock" → escalating demands. One victim deposited over $1,800 in 5 days [S22].
- **Model of a real employer's own warning** (NPR, in the candidate list): official domain only, the careers page as the source of truth, and the employer never asks for financial info. Details are in `../candidates_research.md`; it is not in the Top 30.

## 6. Common mistakes and how to avoid them

| Mistake | Fix | Sources |
|---|---|---|
| Trusting a posting because it's on Indeed/LinkedIn/Handshake/state board | Verify on employer's own site and phone | [S20][S21][S23][S16] |
| Depositing an "employer" check and sending part back / buying gift cards | Never; it will bounce and you owe the bank | [S1][S11][S21] |
| Paying fees for training, kits, background checks, or "unlocking" earnings | Never pay to work or get paid | [S1][S4][S13][S21] |
| Responding to a recruiter text / moving to WhatsApp or Telegram | Ignore unsolicited job texts; stay on verified channels | [S6][S22][S26][S28] |
| Sharing SSN, bank, ID photos, ID.me login early | Only after verified offer, via verified channel | [S21][S26][S28] |
| Taking a "laptop hosting"/proxy-interview/reshipping gig | Illegal facilitation or muling; decline and report | [S15][S6][S21] |
| Treating a polished offer letter or @company/@edu email as proof | Spoofing is common; verify independently | [S23][S21] |
| Paying a "recovery" service after a loss | Recovery scams are common; report to IC3 instead | [S5][S7] |
| Waiting days to tell the bank | Call immediately; recall success depends on speed | [S7][S18] |
| Thinking an FTC report will get money back | FTC doesn't resolve individual reports; bank + IC3 matter for recovery | [S18][S7] |
| Bot claiming it applied, or implying OPM/DOL endorsement | Prohibited; link to official instructions | [S9] |
| Scraping job sites against terms | Use documented APIs; link otherwise | [S20][S25] |
| Calling ghost postings scams (or vice versa) | Keep separate; ghost = misleading, scam = fraud | [S29] |
| Showing closed federal postings | Check status/close date; confirm on USAJOBS | [S8][S2] |
| Shaming victims | Normalize; give steps and support | [S13][S28] |

## 7. Tools and resources: which source is best for what

| Need | Best source(s) |
|---|---|
| Core scam rules, types, safe boards, reporting | S1, S6, S11 |
| Task scam anatomy and numbers | S4, S5, S13, S22 |
| Hard loss/complaint data 2023–2025 | S7 (IC3), S4 (FTC), S22/S13 (BBB) |
| Red-flag checklists | S21 (Indeed), S26 (LinkedIn), S23 (UW), S13 (BBB) |
| Recruiter/employer verification | S21, S26, S27, S25 |
| Illegal facilitator gigs | S15 |
| Reporting and recovery | S18, S7, S5 |
| Federal job search and applying | S3, S19, S2 |
| Federal API (search, bulk, terms) | S2, S8, S9 |
| Public workforce system & local help | S10, S14 |
| National/state job bank network | S17, S20 |
| Apprenticeships | S16 |
| Resume → occupation/skills mapping | S12, S14 |
| Employer ATS confirmation | S24, S30 |
| Ghost jobs vs scams | S29 |
| Behavior, trust signals, Gen Z risk | S28 |

## 8. Evidence strength

**Strong**
- Never pay to get a job or get paid [S1][S4][S5][S6][S13][S21][S23].
- The fake-check mechanism [S1][S11][S21][S29].
- Task scams require deposits, often in crypto [S4][S5][S13][S22].
- Unsolicited text or WhatsApp offers and off-platform moves are red flags [S6][S22][S26][S28].
- Verify on the employer's own site [S11][S21][S22][S28].
- Early SSN, bank, or ID requests are a red flag [S21][S26][S28].
- Report to FTC and IC3 [S1][S5][S7][S18][S26].
- Recovery scams are real [S5][S7].
- Federal applying is free, through USAJOBS and then the agency [S1][S3][S19].
- Listings on reputable boards can still be scams [S20][S21][S23].

**Moderate**
- IC3 2025 employment figures [S7]: single primary source, self-reported.
- BBB rank, channel, and payment figures [S22][S13].
- The off-platform share (90%) [S28]: LinkedIn platform data.
- NLx vetting and link-back [S17][S20]: self-described.
- API facts [S2][S8][S9][S12][S24][S30]: primary docs, plus live calls for S8, S24, and S30.
- Facilitator scheme [S15].

**Limited**
- NPR's attribution of over $300M in H1 2025 to the FTC (host paraphrase) [S29].
- Ghost-job motives (one expert) [S29].
- CareerOneStop API terms (not readable) [S14].
- BBB's estimate that it helped people avoid $38M in losses [S22].

**Contested:** see §9.

## 9. Where sources disagree

1. **Loss totals by agency.**
   - FBI IC3 employment losses: $264.2M (2024) and $362.9M (2025) [S7].
   - FTC reports job-scam losses over $220M in H1 2024 alone [S4].
   - The two come from **different complaint pools** and different category definitions. Never add them; cite each with its source.
2. **H1 2025 figures.** NPR's host cites "more than $300 million" from the FTC and watchdogs [S29]. No FTC primary page was read for 2025. Treat it as unverified.
3. **Number of American Job Centers.** About 2,300 [S10, main page] vs. nearly 2,400 [S10, Wagner-Peyser page and 2021 fact sheet]. AJC TTY numbers also differ between pages. Use the CareerOneStop finder or 1-877-US-2JOBS.
4. **"No scams" claims.** USNLx says it has "no duplicates or scams" [S20 About], but its own terms say it has "no obligation to monitor" postings [S20 Terms]. Indeed says "no site can promise every job is real" [S21]. Synthesis: trust the sources more, but still verify.
5. **Fees.** "Never pay" [S1][S13][S23] vs. Indeed's nuance that employers may charge for uniforms or tools, usually deducted after hire [S21]. Synthesis: never pay *before* hire or to apply.
6. **Off-platform advice.** LinkedIn says to stay on-platform [S26][S28]; this also suits its business. The FTC says to ignore unexpected messaging-app offers [S6]. Both point the same way.
7. **USAJOBS API docs.** They list semicolon vs. colon separators for multi-value parameters [S2]. Historic JOA booleans appear as "N" strings [S8]. Lever live data shows `onsite` vs. documented `on-site` [S30]. Test before relying on them.
8. **BBB report counts.** "Over 23,000" employment reports in 2025 [S13] and a 15.8% exposure share [S22] are consistent. Secondary coverage cites about 22,000 (`../candidates_research.md`). Use BBB's figures.

## 10. Gaps (what the sources don't cover well)

1. **CareerOneStop's own pages** (Job Finder, AJC finder, state job bank list, Web API terms) were BLOCKED. Its API terms, rate limits, and data provenance are **unverified** [S14].
2. **USAJOBS Help Center** (scam, fake-email, and fee guidance) was blocked. USAJOBS's own fraud guidance was not captured [S3][S19].
3. **State-specific** job banks and AG pages: only the pattern is covered (NLx and USNLx directory).
4. **FTC 2025 job-scam data** (primary) was not read.
5. **Ghost-job prevalence** has only vendor surveys (near-misses), and pending laws were seen only in anecdotal threads.
6. **Pay-transparency laws** as a legitimacy cue: the official DOL map was blocked.
7. **Job matching quality**: there's no source on ranking jobs to a resume. That's design work (Inferred) using O*NET and CareerOneStop.
8. **Accessibility, older workers, and immigrants/visa holders** get little scam-specific coverage, apart from IC3 age tables [S7].
9. **Claude-app ability to call APIs or browse** is not covered here. Topic #6 decides whether the bot links out or calls APIs.
10. **Summary-only reads:** S1, S6, S10, S11 (FTC and DOL pages behind bot protection), plus parts of S3, S16, S18, and S20 (JS apps).

## 11. How to apply this when writing prompts on this topic

**A. Sourcing rules**
1. Recommend only official or original sources first:
   - USAJOBS (federal);
   - CareerOneStop / American Job Centers;
   - the state job bank via usnlx.com/states, or USNLx;
   - Apprenticeship.gov;
   - the employer's own careers page or ATS board.
   - Sources: [S1][S3][S10][S16][S17][S20][S24][S30]
2. For each job shown, include title, employer, location, pay if posted, date posted or close date, and a source link. Then add: "Verify and apply on the official page" [S2][S8][S9][S24][S30].
3. Never say "verified," "legit," or "guaranteed" about a posting just because of where it was found [S20][S21][S23].
4. Never claim to have applied or submitted for the user. Never imply OPM, DOL, or government endorsement [S9].
5. If the bot has API tools, follow §4f terms:
   - keys server-side and private;
   - O*NET attribution link;
   - no scraping of USNLx, BBB, or state banks.
   - If it has no tools, link users to the search pages (Inferred; depends on topic #6).

**B. Scam screening (run on any posting, message, or offer the user mentions)**
6. Check the §4b red flags. If any money-movement, fee, crypto, check, reshipping, or facilitator flag appears, say plainly "this looks like a scam," explain why in one or two lines, and give the safe next step [S1][S4][S5][S11][S15].
7. If the flags are softer (vague duties, high pay, free email, pressure, chat-only interview), say "be careful" and walk through the §4c verification steps [S21][S26][S28].
8. Never relay a request for SSN, bank details, ID photos, or payment as normal [S21][S26].
9. Treat unsolicited text, WhatsApp, or Telegram job offers as scams by default [S6][S22].

**C. If harm happened**
10. Use the §4d order: stop contact, call the bank now, then IC3 and ReportFraud.ftc.gov (allow the FBI referral), then the state AG or USPIS where relevant, then the job site and the impersonated company [S7][S18][S1][S11].
11. Warn about recovery scams [S5][S7]. Say what the FTC can and can't do [S18].
12. Respond with compassion and no blame. Offer topic #1 support skills; if the user is in crisis, the topic #1 crisis rules apply [S13][S28].

**D. Fit and honesty (with the resume KB)**
13. Match by mapping the resume to O*NET or CareerOneStop occupations and skills [S12][S14]. Show why each job fits. Flag hard requirements and knockout questions honestly; never suggest stretching qualifications (resume KB).
14. Separate ghost postings from scams. Suggest networking and contacting a human at the employer [S29].
15. For federal jobs, explain the free USAJOBS → agency handoff, the 2-page resume rule (resume KB), and checking who may apply [S3][S19].

**E. Test cases**
- "A recruiter texted me about a $900/week remote assessor job. Reply YES?" → scam: ignore, don't reply, report.
- "They sent me a check to buy my laptop and I should send the rest to their vendor." → fake-check scam: don't deposit or send money; contact the bank if already deposited.
- "Job pays me to rate products but I need to deposit $200 USDT to withdraw." → task scam: stop, report to IC3 and FTC, beware recovery offers.
- "Easy gig: keep company laptops at my house for $500/month." → illegal facilitation (FBI): decline, report to IC3.
- "Find me data analyst jobs near Austin, TX that fit my resume." → USAJOBS + CareerOneStop/state bank + employer boards, with verify-and-apply links.
