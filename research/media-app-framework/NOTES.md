# NOTES — media-app-framework (Top 30 research)
Run date: 2026-11-25 · Prompt: prompts/claude/Top30_Resource_Research_Prompt_v3.txt · Topic 1 of 9 in prompts/plans/Media_Recommender_App_Research_Plan.md

## Scope
- Topic: Choosing a cross-platform mobile framework for a solo developer building a public Android + iOS app in 2025–2026: React Native with Expo vs. Flutter vs. native; learning curve, AI-assisted development, ecosystem, performance, long-term maintenance.
- Recency 2024+ · English · any region. The run instructions gave the topic, so the "ask for the topic" step was skipped (automated run, no questions).
- Downstream use: a public, monetized movie/TV/anime recommender app (trailer playback, subscriptions, LLM calls via a backend), built largely with Claude Code from a Linux cloud container with **no Mac**. That constraint shaped relevance and practical scores: anything that requires a local Mac (Xcode) was scored on how it affects this developer, not on its general merit.
- Current versions seen 2026-11-25: React Native 0.88 (reactnative.dev/versions), Expo SDK 58 (expo.dev/changelog), Flutter 3.50 / Dart 3.14 (docs.flutter.dev/release/whats-new).

## Weights (changed)
Relevance 20 · Reliability 20 · Authority 12 (−3) · Depth 15 · Accuracy 10 · Practical 10 · Currentness 10 (+5) · Community 3 (−2).
Reason: the topic moves fast (RN New Architecture, Expo/Flutter AI tooling, Shopify's Sept 2026 reversal, Apple SDK deadlines), so currentness was raised. Authority was trimmed slightly so primary engineering case studies and research were not swamped by official docs. Community reputation is captured separately in Pass 4 (anecdotal).

## Pool
- Batches: candidates_primary.md (lead, ~55), candidates_oss_technical.md (worker, 44 accessible), candidates_community_media.md (worker, 31 accessible + 2 paywalled), candidates_academic.md (worker, 23 accessible). About 150 accessible candidates; about 130 after deduplication.
- Pass 2 expansion: followed links from Shopify (→ HN thread, New Architecture post), Software Mansion blog (→ "React Native vs Native" and the Gobi migration), Expo docs (→ llms.txt, MCP, managed credentials, pricing), Flutter AI docs (→ agent-plugins for Claude Code), and an omission search that surfaced the React Foundation (react.dev, Feb 2026).
- 64 shortlisted and scored (SCORED_CANDIDATES.csv).
- **Selection rule.** Candidates were picked in score order, with two documented adjustments:
  1. Pass 6 dedup: sub-pages of an already selected site were merged into it and read during learning. The near-misses below with higher totals than the lowest selected item are mostly this case:
     - Shopify "Migrating to the New Architecture" → read under Shopify "Five years";
     - Expo pricing and "Work without a Mac" → read under EAS Build / Expo docs;
     - purchases_flutter → covered by the RevenueCat docs (Flutter page on the same site);
     - Kotlin docs and Android KMP page → covered by the JetBrains CMP post;
     - InfoQ → secondary to the Shopify primary post.
  2. Diversity cap: official docs and policies were capped at about 15 of 30. Because of that cap, a research paper, an OSS experience report (Zulip), a community thread (HN) and a governance critique (Flock) took the last slots over more Expo, Flutter, and Kotlin doc pages (Impeller, React Native Directory, Flutter-for-RN-devs).
- Final 30 mix:
  - official docs, release posts and policy: 15 (Expo 5, RN 4, Flutter 4, Apple 1, JetBrains 1);
  - official language blog: 1 (Swift.org);
  - vendor docs or package pages: 3 (RevenueCat, Codemagic, pub.dev);
  - primary engineering case studies: 3 (Shopify ×2, Zulip);
  - engineering-firm or vendor analysis: 3 (Software Mansion, Shorebird, Expo AI blog);
  - research: 3 (Ilovan, MobileDev-Bench, SWE-Bench Mobile);
  - community survey: 1 (State of React Native; Flutter's survey is counted under official);
  - community thread: 1 (HN);
  - governance critique: 1 (Flock).

## Access preflight (2026-11-25)
| Category | Test hosts | Result |
|---|---|---|
| Official framework docs | docs.expo.dev, reactnative.dev, docs.flutter.dev, kotlinlang.org, developer.android.com, developer.apple.com, swift.org | OPEN (developer.apple.com doc pages are JS-heavy) |
| Vendor / package registries | pub.dev OPEN; registry.npmjs.org JSON OPEN; npmjs.com HTML 403; revenuecat.com, docs.codemagic.io, expo.dev OPEN | MIXED |
| Preprints / academic | arxiv.org OPEN; research.utwente.nl, aaltodoc OPEN; dl.acm.org, doaj.org 403; JSERD connection closed | MIXED |
| Communities | news.ycombinator.com + hn.algolia.com API OPEN; lobste.rs OPEN; reddit.com JS shell/bot wall (BLOCKED); stackoverflow.com 403; indiehackers.com 403 | MIXED |
| Code hosts | github.com HTML 403, api.github.com 403; raw.githubusercontent.com OPEN | MIXED |
| Independent media | dev.to, shopify.engineering, infoq.com, simonwillison.net, devclass.com, substack.com OPEN; medium.com 403; thenewstack.io 403 | MIXED |
| Video | youtube.com 200 (not used; transcripts not readable) | OPEN-ish |
| Archives | web.archive.org connection failed (000) | BLOCKED |

## Excluded-source log (not described, not listed)
- PAYWALL: The Pragmatic Engineer "Cross-platform mobile development" (2025-01) and "Why has Shopify dropped React Native?" (2026-09): only the free intro loads, then "This post is for paid subscribers". levelup.gitconnected "Flutter just beat native iOS" (member-only).
- BLOCKED: thedroidsonroids.com (403), thenewstack.io (403, three articles), medium.com (403), npmjs.com package pages (403), github.com (403), reddit.com (bot wall), stackoverflow.com (403), indiehackers.com (403), doaj.org (403), dl.acm.org (403), JSERD Flutter Stack Overflow study (connection closed), Hamburg KMP thesis (503), web.archive.org (failed).
- DEAD: Software Mansion "We built the same app in Flutter and React Native" (redirects to the blog index), react-native-video v7 intro (404), zero-one-group benchmark raw README (404), Bitrise old Flutter path (404), endoflife.date/flutter (404), several dev.to posts (404).
- JS SHELL / no content: React Native Upgrade Helper UI (rn-diff-purge README used instead), Reddit.
- OUT OF RANGE: thoughtbot 2018 benchmark; Codemagic 2022 no-Mac blog; Oliveira et al. EASE 2023 (kept as near-miss only).
- Quality exclusions: about 20 SEO comparison listicles and agency or content-farm posts (tech-insider.org, markaicode, kubaik.github.io, webandcrafts, techaheadcorp, riseuplabs, many generic dev.to and hashnode "Flutter vs RN 2025" posts). They contain inconsistent version numbers and benchmark figures that have no stated method.

## Community findings (anecdotal; reputation, not proof)
- Expo is treated as the default way to do React Native. Complaints focus on paid, metered EAS builds and on "lock-in" (HN 41937591).
- React Native upgrade churn, especially the New Architecture migration, is the most repeated pain point (HN 45225217; State of React Native).
- Flutter gets praise for mobile UI consistency and hot reload, plus recurring doubt about Google's commitment: the 2024 layoffs, the Flock fork, and Canonical taking over Flutter desktop in 2026.
- After Shopify's Sept 2026 post, many commenters argue that AI agents make two native codebases affordable. Every native-with-agent success report seen here relies on a Mac with Xcode and simulators.
- Solo developers who report shipping with Claude Code mostly chose Expo, wrote a plan or spec first, and used Supabase or Firebase (several Substack and dev.to posts).
- Dart and agents: opinions are split. Some cite less training data; others say strong typing, the analyzer and hot reload help agents.
- No-Mac iOS shipping via EAS Build and EAS Submit is reported as working by several first-time developers (dev.to). Simulator debugging is the gap people repeatedly mention.

## Disagreements between sources
- Performance: vendor and blog benchmarks conflict (startup and memory figures vary by build mode and device). The only controlled study (Ilovan 2026) finds no universal winner: native is fastest on client logic, KMP comes closest, and UI rankings vary by task.
- Maintenance: Shorebird (a Flutter vendor) claims lower Flutter maintenance. React Native sources point to fewer breaking changes in recent releases (0.86 and 0.88 are labeled "no breaking changes"). Neither side offers independent data.
- AI-assisted development: Shopify says agents make native cheap again. Benchmarks (MobileDev-Bench at 3–6%, SWE-Bench Mobile at 12%) show agents still resolve few real mobile tasks on their own. Both can be true, because Shopify relies on heavy human review and checkpoint loops.
