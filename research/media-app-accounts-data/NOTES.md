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
