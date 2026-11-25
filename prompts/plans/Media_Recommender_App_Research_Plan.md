# Research Plan: Media Recommender Mobile App (Android + iOS), Public and Monetized
Created 2026-11-25. Goal: turn the Claude Code media recommender (prompts/claude/Media_Recommender_Prompt_v1.txt, v1.5) into a public, monetized app for Android and iOS.
Decisions: **public release in both app stores** · **monetized** · research runs **one at a time** (automated chats report back to the "prompt creation" session).
Method per topic: Top 30 prompt (v3), then Topic Learning prompt (v2). Output goes to research/media-app-<slug>/.

| # | Slug | Topic line | Done? |
|---|---|---|---|
| 1 | framework | Choosing a cross-platform mobile framework for a solo developer building a public Android + iOS app in 2025–2026: React Native with Expo vs. Flutter vs. native; learning curve, AI-assisted development, ecosystem, performance, long-term maintenance. Recency: 2024+ · Language: English | ☑ |
| 2 | ai-backend | Building a consumer mobile app powered by a large language model (Claude API): secure server-side proxy (never ship API keys in the app), streaming, prompt caching, rate limiting, cost per user, abuse prevention, and prompt-injection risks. Recency: 2024+ | ☑ |
| 3 | accounts-data | Backend, user accounts and data sync for a small consumer app: Supabase vs. Firebase, authentication (including Apple's Sign in with Apple requirement), storing profiles and watchlists, security rules, account deletion. Recency: 2024+ | ☐ |
| 4 | data-licensing | Commercial licensing of movie, TV, and anime data and trailers for a monetized app: AniList, TVmaze, Wikidata, IMDb (datasets vs. licensed data), TMDB (including its AI-use restriction), JustWatch, Trakt, OMDb, YouTube API and embed terms, and attribution requirements. Recency: current terms | ☐ |
| 5 | app-store-rules | Publishing a public AI app on the Apple App Store and Google Play: developer accounts and fees, App Review Guidelines and Play policies for AI and generative content, age ratings, privacy labels and Data Safety forms, common rejection reasons. Recency: 2025+ | ☐ |
| 6 | privacy-legal | Privacy and legal requirements for a monetized US consumer app: privacy policies, children's privacy (COPPA) and age gating, state privacy laws (e.g., CCPA), account and data deletion, AI disclosure, terms of service, and copyright of trailers and posters. Recency: 2024+ | ☐ |
| 7 | monetization | Monetizing a consumer AI recommendation app: subscriptions vs. freemium vs. ads, Apple and Google in-app purchase rules and commissions, pricing against per-user AI costs, affiliate links to streaming services, and RevenueCat-style tools. Recency: 2024+ | ☐ |
| 8 | ux-design | Mobile UX for recommendation apps: onboarding and taste-profile intake, one-question-at-a-time flows, rating and swipe interactions, explaining recommendations, trailer playback, retention, and accessibility. Recency: 2022+ | ☐ |
| 9 | build-release | Building, testing, and releasing a cross-platform app without a Mac: cloud builds (e.g., Expo EAS), TestFlight and Google Play testing tracks, crash reporting and analytics, CI/CD, and updates after release. Recency: 2024+ | ☐ |

After all 9 topics: build the app plan (architecture, data sources that are licensed for commercial use, cost model, store checklist), then start building.
