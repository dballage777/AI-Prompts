# MEMORY BRIEF: Finding Legitimate US Jobs & Avoiding Job Scams
Working memory for this topic (built 2026-11-15 from S1–S30). Full detail is in KNOWLEDGE_BASE.md. Pairs with the resume knowledge base (honest fit) and the wellness knowledge base (support after harm).

## Most important learned points
1. **Never pay to get a job, and never pay to get paid.**
   - "Don't pay for the promise of a job" [S1].
   - "Never pay anyone to get paid" [S4].
   - "Never send money to an alleged employer" [S5].
   - Applying for federal and postal jobs "is always free" [S1].
   - One nuance: a real employer may charge for uniforms or tools, taken from pay after you start [S21]. *Strong*
2. **Never move money for an employer.** Fake checks bounce weeks later and you owe the bank, because "banks have to make deposited funds available quickly" [S11][S1][S21]. No gift cards, no reshipping, no crypto deposits [S6][S21][S22]. *Strong*
3. **Task scams are the 2024–2026 surge.**
   - The pattern: an unsolicited text, a move to WhatsApp, a fake dashboard, "likes" or "reviews," a small payout, then a deposit to "unlock" earnings.
   - FTC: task-scam reports went from about 5,000 in all of 2023 to about 20,000 in the first half of 2024 [S4].
   - BBB: median task-scam loss $2,300 [S13]. *Strong*
4. **Size of the problem.** FBI IC3 employment fraud losses: $70.2M (2023), $264.2M (2024), $362.9M (2025) [S7]. FTC: more than $220M in the first half of 2024 [S4]. Different complaint pools, so never add them. *Moderate*
5. **BBB 2025.** #2 riskiest scam type, #1 for ages 18–34. Median loss $1,000; 51.4% by text; 35.1% paid in crypto [S22]. *Research*
6. **Unsolicited job texts or messaging-app offers are scams by default.** "Ignore generic and unexpected texts, WhatsApp, or Telegram messages about jobs" [S6]. 90% of reported LinkedIn scam messages try to move people off the platform [S28]. *Strong*
7. **Guard your identity.** No SSN, bank details, ID photos or ID.me login before a verified offer [S21][S26][S28]. Keep SSN and date of birth off resumes [S20]. *Strong*
8. **Verify the employer yourself.**
   - Find the role on the company's own careers site, and call its main number [S21][S11][S28].
   - Search the company name with "scam," "review" or "complaint" [S1].
   - Check the email domain [S26]. A recruiter who discourages checking is a red flag [S21]. *Strong*
9. **Where a job is listed proves nothing.**
   - "No site can promise every job is real" [S21]. USNLx has "no obligation to monitor" its postings [S20].
   - Polished offer letters and even @uw.edu email addresses can be faked [S23].
   - A state business registration is "ministerial," so it is only a weak sign the company is real [S27]. *Strong*
10. **Illegal "gigs."** Hosting company laptops, interviewing on someone else's behalf, or lending your accounts or identity can be North Korean IT-worker schemes. The FBI says "These actions are illegal" [S15]. *Documented*
11. **If scammed, act fast.**
    - Stop contact. Call your bank immediately and ask for a recall; "time is of the essence" [S7].
    - Report at ic3.gov and ReportFraud.ftc.gov, allowing the FTC to refer it to the FBI [S7][S18].
    - The FTC "can't resolve your individual report" [S18]. Never pay "recovery" firms [S5][S7].
    - IC3's recovery team froze $679M in 2025, a 58% success rate [S7]. *Strong*
12. **Official places to search.**
    - USAJOBS: federal jobs; sign in with login.gov, then you're handed to the agency's own site [S3][S19].
    - CareerOneStop and American Job Centers (about 2,300–2,400 centers; 1-877-US-2JOBS) [S10].
    - State job banks through the National Labor Exchange (NLx): "original and vetted sources," with links back to the original posting [S17][S20].
    - Apprenticeship.gov: "Registered Partner" means a registered sponsor; "Registered Occupation" only means the occupation is registered [S16]. *Strong*
13. **Job APIs that need no key.**
    - USAJOBS Historic JOA (bulk listings; check status and close date) [S8].
    - Greenhouse and Lever job-board GET calls for a specific employer [S24][S30].
    - USAJOBS codelists [S2]. *Documented*
14. **APIs that need a key.**
    - USAJOBS Search: a free key, with your email sent as the User-Agent [S2].
    - O\*NET Web Services: free key; requires a prominent link back; don't alter the data [S12].
    - CareerOneStop: bearer token; its terms are unverified [S14].
    - Not open to a consumer bot: NLx data, BBB Scam Tracker and USNLx search. Link to them instead [S17][S20][S25].
15. **USAJOBS terms.** Commercial reuse is OK; never imply OPM endorsement or claim an application was submitted [S9]. *Documented*
16. **Ghost jobs are not scams:** real employers' unfilled listings. Suggest networking [S29]. *Reported*
17. **Emotional harm.** Almost 50% of people targeted lost confidence or peace of mind [S13]. "Real opportunities won't disappear because you took a beat to think" [S28]. *Research*

## Prompt-writing rules (from section 11)
- Search official and original sources first. Show each job's link, dates and pay, followed by "Verify and apply on the official page."
- Never call a job verified because of where it was posted. Never claim to apply for the user or imply government endorsement.
- Screen anything the user shares against the red flags: fees, checks, crypto, reshipping, early requests for SSN or bank details, recruiter texts, moves off-platform, free email domains, chat-only interviews, pressure, and facilitator requests.
- Hard flags: say "this looks like a scam" and give the safe next step. Soft flags: walk the user through verifying the employer.
- If the user was harmed: stop contact, call the bank, file with IC3 and the FTC, contact the state attorney general or Postal Inspection Service, and warn about recovery scams. Be compassionate, never blaming.
- With API tools: keep keys private, credit O\*NET, don't scrape. Without tools: give links (depends on topic #6).
- Match jobs to the resume honestly (O\*NET mapping); keep ghost jobs and scams separate.

**Gaps:** CareerOneStop pages and USAJOBS Help Center blocked; no primary FTC 2025 data; Claude's API and browsing abilities (topic #6).
