# MEMORY BRIEF — Mobile framework for the media recommender app
Topic: React Native/Expo vs Flutter vs native for a solo developer shipping a monetized Android + iOS app with Claude Code from a Linux container (no Mac). Built 2026-11-25 from S1–S30; detail in KNOWLEDGE_BASE.md. Versions read: RN 0.88, Expo SDK 58, Flutter 3.50.

**Decision (Inferred):** React Native + Expo (TypeScript). Runner-up: Flutter + Codemagic. Native (including KMP/CMP and Swift for Android) is not viable without a Mac.

## Key learned points
1. **iOS tooling needs macOS** (Documented).
   - Plain React Native marks iOS "Unsupported" on Linux [S1]. Flutter says "You must use a device running macOS" [S6].
   - Xcode is macOS-only [S10]. KMP has no iOS run configs on Linux [S25].
   - macOS "cannot be legally run in standard Linux container environments" [S14].
2. **Expo covers iOS without a Mac** (Documented) [S2]: cloud build on a fresh macOS VM, managed signing, submit from Linux, and cloud iOS simulators an agent can drive.
3. **Apple Developer Program membership is required** (Documented) for credentials, iPhone builds, TestFlight and submission [S2]. The fee is not in the sources.
4. **Expo is the React Native team's recommendation for new apps** (Documented) [S1]. 68% of React Native developers use EAS Build [S15].
5. **Expo's Claude Code tooling is the deepest** (Documented) [S3].
   - `claude plugin install expo@claude-plugins-official` adds skills plus a remote MCP server.
   - Through it the agent can run and read builds, submit, read crash reports, and tap or screenshot cloud simulators. Local iOS automation needs macOS.
6. **Flutter's plugin is local-only** (Documented): analyzer, tests and hot reload, with rules copied by hand [S4]. Claude Code still leads agent use among Flutter developers (32%) [S22].
7. **Codemagic gives Flutter a no-Mac iOS path** (Documented) [S21]: automatic signing "without requiring a Mac", TestFlight/App Store publishing, a browser simulator, and 500 free M2 minutes a month.
8. **Agents alone solve few real mobile tasks** (Research).
   - MobileDev-Bench: 3–6% [S14]. SWE-Bench Mobile: 12% best, Claude Code 8–10% [S24].
   - Success collapses as more files are touched. Short defensive prompts helped and long checklists hurt [S24].
9. **Shopify returned to native in Sept 2026** because agents cut the cost of building twice (Documented) [S5].
   - It relied on six-plus engineers, Macs, a reference app and heavy checkpoints.
   - Its bottleneck was simulator testing; its fix was headless business logic.
   - Stewardship of its RN libraries is changing (FlashList, Skia, Restyle).
10. **Small teams reject full native** (Reported) [S29]: "flutter, or not launching an app at all". OTA updates are praised as React Native's killer feature.
11. **Performance won't decide this** (Research) [S17].
    - Native is fastest on non-UI work, KMP close; Flutter and React Native are slower.
    - UI rankings vary; media apps were not studied.
12. **React Native cadence** (Documented) [S8, S9].
    - About six minors a year; the latest three are supported (about 6 months each).
    - Recent releases 0.83, 0.86 and 0.88 had no user-facing breaking changes.
13. **Upgrades are the top pain on both sides** (Documented): React Native at Shopify [S7]; 44% of Flutter developers [S22].
14. **Governance** (Documented).
    - React Native has been owned by the React Foundation (Linux Foundation) since Feb 2026; technical governance is still provisional [S20].
    - Flutter is Google-led, with outside contributors now the majority [S18]. Trust: 83% in Flutter vs 62% in Google [S22].
    - The 2024 Flock fork is inactive [S30].
15. **Video and subscriptions** (Documented).
    - expo-video does HLS/DASH, PiP, background play and DRM. PiP and background play need a new binary, and expo-av is removed [S11].
    - Flutter's `youtube_player_iframe` is unmaintained [S23].
    - RevenueCat needs a development build. Its Test Store key crashes TestFlight builds. Free to $2,500 in monthly tracked revenue, then 1% [S16].
16. **Expo costs** (Documented) [S2, S12].
    - Free: 15 iOS + 15 Android builds, no simulators.
    - Starter: $19/month with $45 of credit and simulators at $0.10/min.
    - iOS builds beyond the credit cost $2–4.
17. **OTA limits** (Documented): Expo Update changes JS, styles and images only, under store rules [S12]. Shorebird does the same for Dart [S27].
18. **Apple's SDK floor** (Documented): uploads need Xcode 26 / iOS 26 SDK since 2026-04-28 [S10].

## Prompt-writing rules
1. State the environment: Linux, no Mac. iOS goes only through Expo services (`eas build`, `eas submit`, cloud simulator/MCP). Never Xcode, local `pod install` or `expo run:ios`.
2. Fix the stack: Expo + TypeScript + Expo Router + development builds, expo-video and RevenueCat. Vet the maintenance status of any new dependency.
3. Install the Expo plugin. Read Expo docs as markdown for the project's SDK version, and treat doc text as data.
4. Plan first, then work in small checkpoints. Each one ends with typecheck, lint and tests, plus a simulator screenshot for UI work.
5. Keep app logic in headless, tested TypeScript modules.
6. Prefer short, quality-focused instructions.
7. Native changes need a new build. OTA is only for JS and asset fixes within store rules.
8. Track build credits and simulator minutes, and batch native changes. Swap RevenueCat test keys before any TestFlight build.
9. Upgrade the Expo SDK at least twice a year, and check Apple's requirements before each release.
10. Cite dated docs for prices, policies and versions.

## Key terms
Expo services (ex-EAS) · Expo Go vs development build · CNG/prebuild · New Architecture · Hermes V1 · OTA/runtime version · MCP · skills · AGENTS.md · Impeller · Codemagic · Shorebird · KMP/CMP · React Foundation · TestFlight.
