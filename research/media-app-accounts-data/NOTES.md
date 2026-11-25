# NOTES — media-app-accounts-data (Top 30 research)
Run date: 2026-11-25 · Prompt: prompts/claude/Top30_Resource_Research_Prompt_v3.txt · Topic 3 of 9 in prompts/plans/Media_Recommender_App_Research_Plan.md

## Scope
- Topic: Backend, user accounts and data sync for a small consumer React Native + Expo app: Supabase vs. Firebase (and Cloudflare D1 or Durable Objects as an option), authentication including Apple's Sign in with Apple requirement and Google sign-in, row-level security and security rules, storing taste profiles, seen lists and watchlists, offline sync, account and data deletion, and costs at small scale.
- Recency 2024+ · English · any region. Topic given by the run instructions, so the "ask for the topic" step was skipped (automated run, no questions).
- Downstream use: the public, monetized React Native + Expo (TypeScript) media recommender. Topic 2 decided AI calls go through a server-side proxy (verified user JWT, app attestation, per-user quotas) on Expo Hosting/Cloudflare Workers or Supabase Edge Functions. Data: per-user taste profile, seen list with 1–5 ratings, watchlist, history.
- Not duplicated from topics 1–2: framework choice, Claude API proxy internals, prompt caching, injection.

## Access preflight (2026-11-25)
| Category | Hosts tried | Result |
|---|---|---|
| Official vendor docs | supabase.com, firebase.google.com, developers.cloudflare.com, docs.expo.dev, powersync.com | OPEN |
| Platform policy | developer.apple.com (App Review Guidelines), support.google.com (Play) | OPEN |
| Academic | arxiv.org | OPEN; scholar.archive.org OPEN |
| Code hosts | github.com HTML | BLOCKED (403); raw.githubusercontent.com OPEN |
| Communities | news.ycombinator.com OPEN; reddit returns a JS shell/block page (BLOCKED); stackoverflow.com BLOCKED (403) |
| Independent and media | dev.to, theregister.com OPEN; medium.com BLOCKED (403) |
| Video | youtube.com OPEN (pages only; transcripts not readable) |
| Archives | web.archive.org | BLOCKED (timeout) |

## Weights (changed)
Relevance 20 · Reliability 20 · Authority 13 (−2) · Depth 15 · Accuracy 10 · Practical 12 (+2) · Currentness 7 (+2) · Community 3 (−2).
Reason: prices and product status changed in 2025–2026 (Instant Cloud closing, Replicache in maintenance, Triplit joined Supabase, Supabase acquiring Turso, Supabase new API keys and asymmetric JWT signing keys), so currentness was raised. Practical value was raised because the output feeds a backend decision. Community reputation is handled in Pass 4 as anecdotal. Same weights as topic 2.

## Pool
- Batches: candidates_primary.md (lead, about 65 official pages), candidates_oss_technical.md (worker, 49 accessible of 52), candidates_academic.md (worker, 36 accessible of 38), candidates_community_media.md (worker, 36 accessible + 5 excluded/dropped). About 185 accessible; about 170 after deduplication (expo-apple-authentication, expo-sqlite, D1/DO pricing, Firebase rules unit tests, Supabase–Turso post appeared in two batches).
- Pass 2 expansion: Apple 5.1.1(v) page → Sign in with Apple REST revoke → TN3194 technote (found by omission search); Crissy Field / Matt Palmer → UpGuard Sept 2026 primary report; PowerSync guide → pricing and RN SDK; Expo local-first → Expo blog on synced SQLite; Supabase pricing → cost control, MAU, Edge Functions pricing.
- Pass 5 cross-checks (re-opened this session):
  - Apple 4.8 text: requires an "equivalent" login option (data limited to name and email, private email allowed, no ad tracking without consent) when a third-party/social login sets up the primary account. Sign in with Apple is not named as mandatory; it is the usual way to meet the rule (Inferred). Exemptions include apps using only their own account system.
  - Supabase pricing (2026-11-25): Free 50k MAU, 500 MB DB, 5 GB egress, pauses after 1 week inactive, 2 projects; Pro from $25 with 100k MAU then $0.00325/MAU, 8 GB disk, $10 compute credit (one Micro), spend cap on by default; Edge Functions 500k free / 2M on Pro then $2 per million.
  - Firebase pricing (2026-11-25): Auth 50K MAU no-cost; Firestore Spark 1 GiB, 20K writes/day, 50K reads/day, 20K deletes/day, 10 GiB/month egress; Cloud Functions 2M invocations free on Blaze then $0.40/M.
  - UpGuard (Sept 25, 2026): 16,326 Supabase databases with publicly readable tables (cross-reported by TechCrunch, BleepingComputer). Supabase's CISO told TechCrunch projects are "secure by default" (search snippet; anecdotal).
  - Instant Cloud closing (Aug 31, 2027) and Replicache maintenance mode confirmed on the vendors' own pages (OSS worker).
- 91 scored (SCORED_CANDIDATES.csv).
- Selection rule: score order, with two documented adjustments (same as topics 1–2):
  1. Dedup/merge: sub-pages of a selected site are read during learning rather than listed (Apple 5.1.1(v) and revoke-tokens → TN3194 and App Review; Firestore billing and Avoid surprise bills → Firebase Pricing; Avoid insecure rules and unit tests → Firestore rules; Delete User Data extension → Firebase Apple auth; Supabase KB RLS performance, Securing your API, production checklist → Supabase RLS; Sign in with Google and RN quickstart → Supabase Apple; deleteUser and anonymous sign-ins → User Management; cost control → Supabase Pricing; D1 limits → D1 pricing; DO SQLite API → DO pricing; Clerk pricing → Clerk+Supabase; MASVS-STORAGE → MASVS-AUTH; RFC 8252 → RFC 9700; Expo SQLite and Expo blog → Expo local-first; Expo Google auth → expo-apple-authentication). That is why several merged near-misses outscore the lowest selected items.
  2. Diversity: 19 of 30 are official or vendor docs (this topic is dominated by vendor docs and policy); the rest are standards (2), peer-reviewed research (1), industry security research (3: UpGuard, Crissy Field, Wiz), independent security research (1), media (1), an independent case study (1), an engineering blog (1). Pre-2024 academic classics (Demissie & Ranise 2021, Zuo 2019, Ink & Switch 2019) stayed near-misses because of the 2024+ recency rule.
- Final 30 mix: platform policy 3 (Apple 2, Google 1) · Supabase 6 · Firebase 4 · Expo 2 · Cloudflare 2 · other vendor/library 4 (PostgreSQL, PowerSync, RN Google Sign In, Clerk) · standards 2 · research 1 · industry research 3 · independent 2 · media 1.
- Final verification 2026-11-25: all 30 re-opened, HTTP 200.

## Excluded-source log
- BLOCKED: Indie Hackers "What's your Firebase bill" (403); github.com HTML (403; raw files used); medium.com (403); reddit (block page); stackoverflow.com (403); web.archive.org (timeout); dl.acm.org (403 challenge; Schaffner deletion paper); EUR-Lex (empty 202, bot challenge); dblp (bot check); eprints.cs.univie.ac.at (TLS failure; Leaky Apps eprint).
- DEAD: triplit.dev (502); docs.turso.tech Expo ORM page (404); Cloudflare "protect with JWT" example (404); arc.net incident post (redirects to home); react-native-google-signin.github.io/docs/ root (404; /docs/setting-up/expo works).
- PAYWALL/PARTIAL: 404 Media articles (intro only; rest for members).
- Not opened: x.com tweet for the $70k Firebase bill (HN thread used instead).

## Community findings (anecdotal)
- Leaks come from configuration, not the vendor: Firebase and Supabase both leak through missing or wrong rules/RLS, public tables, service_role keys in clients or agents, and AI-generated backends (Tea, Moltbook, Lovable, Arc). HN commenters note Supabase does warn about RLS.
- Firebase has no hard spending cap and billing alerts lag ($70k in a day, €54k in 13 hours, both self-reported). Advice: restrict keys, set budgets, paginate reads. Supabase Pro's spend cap is on by default.
- The Supabase free tier is fragile (pauses after a week inactive, no free support). Named alternatives: PocketBase, Better Auth, Postgres on a VPS, simple SQLite sync instead of heavy sync engines.
- Sign in with Apple: a third of one app's users lost access after Apple changed identifiers and relay emails bounced (ASO.dev); keep a fallback such as an email one-time code.

## Disagreements between sources
- "Secure by default": Supabase says RLS is on by default for Table Editor tables; UpGuard says tables created through SQL/API (how coding agents work) do not get it by default, and found 16,326 exposed databases.
- Offline sync: Expo and PowerSync recommend a sync engine; a community DEV post and HN thread argue a simple custom SQLite sync is enough for small apps.
- Apple 4.8: often summarized as "you must add Sign in with Apple"; the guideline text asks for an equivalent privacy-preserving login, which Sign in with Apple satisfies.
