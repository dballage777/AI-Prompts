# NOTES — media-app-ai-backend (Top 30 research)
Run date: 2026-11-25 · Prompt: prompts/claude/Top30_Resource_Research_Prompt_v3.txt · Topic 2 of 9 in prompts/plans/Media_Recommender_App_Research_Plan.md

## Scope
- Topic: Building a consumer mobile app powered by a large language model (Claude API): secure server-side proxy (never ship API keys in the app), streaming, prompt caching, rate limiting, cost per user, abuse prevention, and prompt-injection risks.
- Recency 2024+ · English · any region. The run instructions gave the topic, so the "ask for the topic" step was skipped (automated run, no questions).
- Downstream use: the public, monetized React Native + Expo (TypeScript) media recommender (topic 1 decision). Its AI builds a taste profile, brainstorms, verifies titles via AniList/TVmaze/Wikidata (tool calls), and explains picks. A solo developer working from a Linux container.
- Instruction from the run: prefer official Anthropic docs for API facts, and Expo/React Native docs for the client side.

## Access preflight (2026-11-25)
| Category | Hosts tried | Result |
|---|---|---|
| Official vendor docs | platform.claude.com (.md works), docs.expo.dev, reactnative.dev, developers.cloudflare.com, supabase.com | OPEN |
| Anthropic sites | anthropic.com, support.claude.com, claude.com | OPEN |
| Academic | arxiv.org (/abs, /html) | OPEN |
| Standards and government | owasp.org, mas.owasp.org, genai.owasp.org (2026 per-entry pages 404), ncsc.gov.uk, nist.gov | OPEN |
| Code hosts | github.com HTML | BLOCKED (403); raw.githubusercontent.com OPEN |
| Communities | news.ycombinator.com | OPEN; reddit returned a block page (BLOCKED); indiehackers.com BLOCKED (403) |
| Independent and media | simonwillison.net, dev.to, theregister.com | OPEN; medium.com BLOCKED (403) |
| Archives | web.archive.org | BLOCKED (timeout) |

## Weights (changed)
Relevance 20 · Reliability 20 · Authority 13 (−2) · Depth 15 · Accuracy 10 · Practical 12 (+2) · Currentness 7 (+2) · Community 3 (−2).
Reason: prices, model tiers and the OWASP list changed in 2026 (OWASP LLM Top 10 2026 renumbered entries; Claude 5.5 pricing), so currentness was raised. Practical value was raised because the output feeds an architecture decision. Community reputation is handled in Pass 4 as anecdotal.

## Pool
- Batches: candidates_primary.md (lead, 31 Anthropic), candidates_oss_technical.md (worker, 59 accessible), candidates_academic.md (worker, 49), candidates_community_media.md (worker, 41 accessible + 8 excluded). About 180 accessible; about 160 after deduplication (the iOS study and Willison posts appeared in two batches).
- Pass 2 expansion: llms.txt index of platform.claude.com (found User profiles, Workspaces limits, Spend Limits API); Expo API routes → Expo Hosting (runs on Cloudflare Workers) → Cloudflare rate-limit binding; OWASP LLM10:2025 → the Aug 2026 edition (LLM06:2026); Help Net Security / Approov → arXiv 2606.12212 primary; Willison → design-patterns paper, CaMeL.
- Pass 5 cross-checks (re-opened this session):
  - arXiv 2606.12212 abstract confirms 444 iOS apps, 282 exposing usable LLM credentials, patterns 48% JWT / 33% unauthenticated proxy / 19% plaintext, 28% remediated after three months. Media/vendor figures matched.
  - Anthropic TS SDK README: "Note that React Native is not supported at this time"; browsers disabled unless `dangerouslyAllowBrowser`.
  - Spend Limits API is Claude Enterprise only → excluded. Per-workspace monthly spend limits and rate limits are on the Workspaces page (Console orgs).
  - Expo AppIntegrity wraps Play Integrity and App Attest (first-party).
- 73 scored (SCORED_CANDIDATES.csv).
- Selection rule: score order, with two documented adjustments (same as topic 1):
  1. Dedup/merge: sub-pages of a selected site are read during learning rather than listed (Errors, Streaming refusals, Token counting, Optimizing for cost, Choosing a model → read under Pricing/Rate limits/Streaming; Expo Hosting → under API Routes; AI Gateway rate limiting/caching → under the Anthropic provider page; Supabase limits → under Securing Edge Functions; App Attest / Play Integrity → under Expo AppIntegrity). That is why several near-misses outscore the lowest selected items.
  2. Diversity: the run asked to prefer official docs, so official/vendor docs are allowed above half (19 of 30). The other 11 slots were kept for standards (3 OWASP, 1 NCSC), research (3), an expert blog, a primary incident report, an engineering blog and a community thread, even where more Anthropic doc pages (Tool use, Structured outputs, Batch, Content moderation) scored higher.
- Final 30 mix: Anthropic official 10 · Expo/RN official 5 · infrastructure vendor docs 4 (Cloudflare 2, Supabase, Upstash) · standards/government 4 · research 3 · independent/engineering 2 · primary incident 1 · community 1.

## Excluded-source log
- BLOCKED: Freemius AI cost protection (403); Indie Hackers ×2 (403 Cloudflare); DZone streaming LLM tokens into RN (403); TechSpot $82k (403; The Register covers it); Dark Reading LLMjacking (403); github.com HTML pages (403, raw files used instead); medium.com (403); web.archive.org (timeout); reddit (block page).
- DEAD: Imane Builds proxy-api-keys (404); guessed genai.owasp.org 2026 entry URLs (404) → raw markdown from the official OWASP repo used instead.
- NOT FOUND: Ibrahim et al. 2025 Android LLM-key study (only cited secondhand).
- Not fetched: Economist "lethal trifecta" (likely paywalled).

## Community findings (anecdotal)
- Repeated HN stories of client-side or leaked keys turning into large bills within hours (€54k in 13 h from a Firebase browser key used for Gemini; $128K from one GCP key; $82K Gemini key theft reported by The Register; $300 from a "vibe coding" leak). Lesson repeated in comments: cap spend at the provider and never let a client hold a provider key.
- A $38k Bedrock bill blamed on a prompt-caching miss: caching mistakes are a cost risk, not just an optimization.
- METR (primary, Aug 2026) reported a stolen key ran up about $600K before anyone noticed: alerting on spend matters.
- Simon Willison's "lethal trifecta" (private data + untrusted content + exfiltration channel) is the most cited plain-language framing.
- Gap: no accessible source gave real cost-per-user figures for a consumer AI app (the Indie Hackers posts were blocked). Cost estimates must be built from official prices.

## Disagreements between sources
- Rate limiting: Cloudflare says its Workers rate-limit binding is approximate and eventually consistent; Upstash and Durable Objects docs offer stricter counting. Use the approximate binding for burst protection and a strongly consistent counter for paid quotas.
- Proxy as protection: Expo, React Native and Anthropic all say "put the key on a server"; the iOS study shows 33% of leaks were unauthenticated proxies, so a proxy without user auth/attestation still leaks.
- OWASP numbering: 2025 edition LLM10 Unbounded Consumption vs 2026 edition LLM06; 2025 LLM07 System Prompt Leakage became 2026 LLM08 Hidden Context Exposure.
