# Candidates: open source and technical sources

Batch: OSS / technical (package registries, key media-app libraries, release policies, no-Mac cloud builds, engineering-firm deep dives, KMP/Compose, Skip).
Checked 2026-11-25 with curl (UA `MediaAppResearch/0.1 (research run)`). "ACCESSIBLE" means HTTP 200 with real HTML/text content. Dates come from page metadata (datePublished / time tags / pub.dev "Published") where available. Content not yet read in full; reasons are based on search snippets plus a content skim.

Format: name | canonical URL | type | why it matters | how found | status

## Video playback
- expo-video SDK reference | https://docs.expo.dev/versions/latest/sdk/video/ | official library docs | The Expo-first video player for trailers; replaces expo-av, which SDK 55 removed | WebSearch "expo-video documentation SDK" | ACCESSIBLE (living doc)
- Software Mansion: The future of video in React Native, from expo-av to expo-video | https://swmansion.com/blog/the-future-of-video-in-react-native-moving-from-expo-av-to-expo-video-6f4f78e51196/ | engineering-firm deep dive | Explains the expo-video design and migration from the team that builds core RN libraries | WebSearch "expo-video documentation SDK" | ACCESSIBLE (2026-02-27)
- React Native Video docs (TheWidlarzGroup, v6 stable and v7 beta) | https://docs.thewidlarzgroup.com/react-native-video/ | OSS library docs | Main alternative RN player (DRM, subtitles, audio tracks, many platforms); v7 is a Nitro-modules rewrite still in beta | WebSearch "react-native-video v7 release" | ACCESSIBLE (living doc; site shows v7 Beta)
- Mux: Video playback in React Native | https://www.mux.com/docs/frameworks/react-native-video-playback | vendor technical guide | Shows HLS streaming playback in RN with expo-video / react-native-video from a video-infrastructure vendor | WebSearch "expo-video documentation SDK" | ACCESSIBLE (living doc; page is partly JS-rendered)
- video_player (pub.dev) | https://pub.dev/packages/video_player | package page with scores | First-party Flutter video plugin; 140 pub points, about 3.73k likes, about 4.16M downloads; last published Oct 2, 2026 | pub.dev URL verified after media_kit search | ACCESSIBLE (published 2026-10-02)
- media_kit (pub.dev) | https://pub.dev/packages/media_kit | package page with scores | libmpv-based cross-platform Flutter player (needs media_kit_video plus libs); 140 pub points, about 919 likes; last published Dec 13, 2025 (about 11 months ago, a maintenance signal worth noting) | WebSearch "media_kit flutter video player pub.dev" | ACCESSIBLE (published 2025-12-13)
- chewie (pub.dev) | https://pub.dev/packages/chewie | package page | Common UI-controls wrapper over video_player for Flutter | pub.dev URL verified (follow-up to video_player) | ACCESSIBLE (date not extracted)
- youtube_player_iframe (pub.dev) | https://pub.dev/packages/youtube_player_iframe | package page | Relevant if trailers come from YouTube (TMDB trailer keys are usually YouTube) | pub.dev URL verified | ACCESSIBLE (date not extracted)

## In-app subscriptions
- RevenueCat: Expo installation | https://www.revenuecat.com/docs/getting-started/installation/expo | vendor SDK docs | Official setup for react-native-purchases (and the UI package) in Expo; needs a dev build, not Expo Go | WebSearch "RevenueCat React Native Expo in-app purchases guide 2025" | ACCESSIBLE (living doc)
- Expo blog: Expo + RevenueCat in-app purchase tutorial | https://expo.dev/blog/expo-revenuecat-in-app-purchase-tutorial | framework-vendor tutorial | End-to-end subscription setup (store listings, paywall) | same search | ACCESSIBLE (2025-06-24)
- Expo guide: In-app purchases | https://docs.expo.dev/guides/in-app-purchases/ | official docs | Expo's own overview of IAP options (RevenueCat, expo-iap) | same search | ACCESSIBLE (living doc)
- purchases_flutter (pub.dev) | https://pub.dev/packages/purchases_flutter | package page with scores | RevenueCat's Flutter SDK; 140 pub points, about 926 likes; published Nov 18, 2026 (actively maintained) | WebSearch "purchases_flutter RevenueCat pub.dev" | ACCESSIBLE (published 2026-11-18)
- RevenueCat: Flutter installation | https://www.revenuecat.com/docs/getting-started/installation/flutter | vendor SDK docs | Flutter counterpart to the Expo install docs, so the two can be compared directly | URL verified (parallel to Expo page) | ACCESSIBLE (living doc)
- in_app_purchase (pub.dev) | https://pub.dev/packages/in_app_purchase | package page | First-party Flutter IAP plugin; baseline for comparison with RevenueCat | pub.dev URL verified | ACCESSIBLE (date not extracted)

## Ecosystem, release and support policy, upgrades
- React Native Directory | https://reactnative.directory/ | package directory | Searchable RN library index with platform, New Architecture and maintenance flags (page is server-rendered with data) | Known directory; URL verified | ACCESSIBLE (living)
- React Native Releases Overview | https://reactnative.dev/releases/overview | official support policy | Release cadence (about every two months), Active/Unsupported status table; key for maintenance burden | WebSearch "React Native releases support policy" | ACCESSIBLE (modified 2026-07-27)
- React Native blog: New Architecture is here (0.76) | https://reactnative.dev/blog/2024/10/23/the-new-architecture-is-here | official release post | New Architecture on by default from 0.76; matters for library compatibility and for how old benchmarks should be read | WebSearch "React Native new architecture default 0.76" | ACCESSIBLE (2024-10-23)
- endoflife.date: React Native | https://endoflife.date/react-native | third-party lifecycle tracker | Support/EOL dates per RN minor in one table | Surfaced in RN support policy search | ACCESSIBLE (modified 2026-10-28)
- rn-diff-purge README (backs React Native Upgrade Helper) | https://raw.githubusercontent.com/react-native-community/rn-diff-purge/master/README.md | OSS repo doc | Template diffs between RN versions that the Upgrade Helper uses; stands in for the JS-only helper UI | Known repo; fetched via raw.githubusercontent | ACCESSIBLE (repo doc, undated)
- Expo SDK 55 changelog | https://expo.dev/changelog/sdk-55 | official release notes | RN 0.83, drops Legacy Architecture, removes expo-av; shows Expo's upgrade cadence | WebSearch "Expo SDK 55 release changelog" | ACCESSIBLE (2026-02-25)
- Expo SDK 56 changelog | https://expo.dev/changelog/sdk-56 | official release notes | Latest SDK seen; for the current baseline | same search | ACCESSIBLE (2026-05-21)
- Flutter compatibility policy | https://docs.flutter.dev/release/compatibility-policy | official policy | How Flutter handles breaking changes and deprecations | WebSearch "Flutter release support policy" | ACCESSIBLE (living doc)
- Flutter breaking changes and migration guides | https://docs.flutter.dev/release/breaking-changes | official docs | Per-release migration guides; a measure of upgrade work | same search | ACCESSIBLE (living doc)
- Flutter what's new | https://docs.flutter.dev/release/whats-new | official docs | Release history for the current baseline | URL verified | ACCESSIBLE (living doc)

## AI-assisted development tooling
- Expo docs llms.txt | https://docs.expo.dev/llms.txt | machine-readable docs index | Expo publishes LLM-ready docs (an index plus full bundles); directly useful for Claude Code | WebSearch "Expo docs llms.txt MCP server" | ACCESSIBLE (living)
- Expo: Using MCP with Expo | https://docs.expo.dev/mcp/ (redirect from /eas/ai/mcp/) | official docs | Expo MCP server for coding agents; snippets say it needs an EAS paid plan and SDK 54+ for local features | same search | ACCESSIBLE (living doc)
- Expo blog: Become an AI-native developer with the Expo MCP server | https://expo.dev/blog/become-an-ai-native-developer-with-the-expo-mcp-server | vendor blog | Launch post for the MCP server | same search | ACCESSIBLE (2025-10-21)
- Flutter: Get started developing with AI (AI rules, Dart and Flutter MCP server) | https://docs.flutter.dev/ai/get-started (redirect from /ai/mcp-server and /ai/ai-rules) | official docs | Dart/Flutter MCP server (experimental, Dart 3.9+), includes a Claude Code setup command, plus AI rules files | WebSearch "Flutter AI rules Dart MCP server" | ACCESSIBLE (living doc)
- Flutter blog: Supercharge your Dart and Flutter development with the Dart MCP server | https://flutter.dev/blog/supercharge-your-dart-flutter-development-experience-with-the-dart-mcp-server | official blog | Launch post for the Dart MCP server | same search | ACCESSIBLE (date not extracted)

## Cloud builds without a Mac
- Expo EAS Build introduction | https://docs.expo.dev/build/introduction/ | official docs | Cloud iOS and Android builds from Linux; the main no-Mac path for RN | URL verified after the EAS credentials search | ACCESSIBLE (living doc)
- Expo: Managed credentials (app signing) | https://docs.expo.dev/app-signing/managed-credentials/ | official docs | EAS generates and stores iOS certificates and profiles, so no Mac or Keychain is needed | WebSearch "Expo EAS Build iOS credentials without Mac" | ACCESSIBLE (living doc)
- Expo: iOS build process reference | https://docs.expo.dev/build-reference/ios-builds/ | official docs | What happens on EAS macOS workers | same search | ACCESSIBLE (living doc)
- Expo: EAS Update introduction | https://docs.expo.dev/eas-update/introduction/ | official docs | OTA JS updates; cuts store-resubmission cycles for a solo developer | URL verified | ACCESSIBLE (living doc)
- Expo pricing | https://expo.dev/pricing | vendor pricing | Free and paid EAS build quotas (also gates the MCP server) | URL verified | ACCESSIBLE (living)
- Codemagic: Flutter apps quick start | https://docs.codemagic.io/yaml-quick-start/building-a-flutter-app/ | vendor CI docs | codemagic.yaml for Flutter iOS and Android on cloud Macs; docs offer .md pages and llms.txt | WebSearch "Codemagic build iOS Flutter app without Mac" | ACCESSIBLE (living doc)
- Bitrise: Getting started with Flutter projects | https://docs.bitrise.io/en/bitrise-ci/getting-started/quick-start-guides/getting-started-with-flutter-projects | vendor CI docs | Alternative cloud Mac CI for Flutter | WebSearch "Bitrise docs Flutter iOS build" | ACCESSIBLE (living doc)
- GitHub Docs: Actions runner pricing | https://docs.github.com/en/billing/reference/actions-runner-pricing | official pricing reference | macOS runner per-minute cost (10x minute multiplier); the DIY no-Mac option | WebSearch "GitHub Actions macOS runner pricing" | ACCESSIBLE (living doc)
- Shorebird docs | https://docs.shorebird.dev/ | vendor docs | Code push (OTA) for Flutter; the Flutter counterpart to EAS Update | URL verified after the Shorebird blog search | ACCESSIBLE (living doc)

## Alternatives: KMP/Compose, Skip, native
- JetBrains: Compose Multiplatform 1.8.0, iOS stable | https://blog.jetbrains.com/kotlin/2025/05/compose-multiplatform-1-8-0-released-compose-multiplatform-for-ios-is-stable-and-production-ready/ | official release post | Compose for iOS declared stable; key fact for the KMP option | WebSearch "Compose Multiplatform iOS stable release 2025" | ACCESSIBLE (2025-05-06)
- JetBrains: KMP roadmap, Aug 2025 | https://blog.jetbrains.com/kotlin/2025/08/kmp-roadmap-aug-2025/ | official roadmap | Swift export and tooling plans toward 2026 | same search | ACCESSIBLE (2025-08, from URL path)
- Kotlin docs: Compose Multiplatform | https://kotlinlang.org/docs/multiplatform/compose-multiplatform.html | official docs | Reference docs for the KMP UI option | URL verified | ACCESSIBLE (living doc)
- Skip (skip.dev) | https://skip.dev/ | OSS project site | Swift/SwiftUI to native Android; needs Xcode/macOS, which matters for a no-Mac developer | WebSearch "Skip tools Swift to Android" | ACCESSIBLE (living)
- InfoQ: Skip open-sourced | https://www.infoq.com/news/2026/01/swift-skip-open-sourced/ | tech news | Skip became fully free and open source in January 2026 | same search | ACCESSIBLE (2026-01-28)
- Swift.org: Announcing the Swift SDK for Android | https://www.swift.org/blog/nightly-swift-sdk-for-android/ | official language blog | Official Swift-on-Android preview (Oct 2025), the base of Skip Fuse | WebSearch "swift.org Swift SDK for Android announcement 2025" | ACCESSIBLE (2025-10, per search; date not extracted from page)

## Performance and architecture deep dives
- Shorebird: Flutter vs React Native in 2026, a technical architecture comparison | https://shorebird.dev/blog/flutter-vs-react-native/ | engineering-firm deep dive (vendor-biased toward Flutter) | Current architecture comparison by the team behind Flutter code push | WebSearch "Callstack ... Shorebird" | ACCESSIBLE (2026-02-16)
- Callstack: The Ultimate Guide to React Native Optimization | https://www.callstack.com/ebooks/the-ultimate-guide-to-react-native-optimization | engineering-firm ebook | Performance practice for RN New Architecture apps (may need email to download the full ebook; landing page opens) | same search | ACCESSIBLE (2026-06-22, modified 2026-11-09)
- Infinite Red: Top React Native posts of 2025 | https://infinite.red/top-react-native-posts-of-2025 | engineering-firm roundup | Pointers to 2025 RN ecosystem changes (RN 0.79 perf, Legend List) | same search | ACCESSIBLE (2025; dates on page from Jan 2025)

## Excluded
- TheWidlarzGroup v7 intro page | https://docs.thewidlarzgroup.com/react-native-video/docs/v7/intro | DEAD (HTTP 404); docs root used instead
- Mintlify mirror of react-native-video docs | https://www.mintlify.com/TheWidlarzGroup/react-native-video | DEAD (200 but "Page gone")
- npm: react-native-video | https://www.npmjs.com/package/react-native-video | BLOCKED (HTTP 403)
- npm: react-native-youtube-iframe | https://www.npmjs.com/package/react-native-youtube-iframe | BLOCKED (HTTP 403)
- React Native Upgrade Helper UI | https://react-native-community.github.io/upgrade-helper/ | JS SHELL (200 but "You need to enable JavaScript"); see the rn-diff-purge README instead
- Software Mansion: We built the same app in Flutter and React Native | https://swmansion.com/blog/we-built-the-same-app-in-flutter-and-react-native-here-s-what-we-found/ | DEAD (redirects to https://swmansion.com/blog/ index); likely a strong benchmark source, worth a retry with another URL form
- Bitrise Flutter guide (old path) | https://docs.bitrise.io/en/bitrise-ci/getting-started/quick-start-guides/getting-started-with-flutter-apps.html | DEAD (HTTP 404); the current path is listed above
- Expo "Linux workflow" page | https://docs.expo.dev/workflow/linux/ | DEAD (HTTP 404; guessed path, not from search)
- endoflife.date: Flutter | https://endoflife.date/flutter | DEAD (HTTP 404; no Flutter entry)
- thoughtbot: Examining performance differences between Native, Flutter, and React Native | https://thoughtbot.com/blog/examining-performance-differences-between-native-flutter-and-react-native-mobile-development | OUT OF RANGE (published 2018-05-31, modified 2024-09-12; predates New Architecture)
- Codemagic blog: Build and distribute iOS apps without a Mac with Flutter | https://blog.codemagic.io/how-to-build-and-distribute-ios-apps-without-mac-with-flutter-codemagic/ | OUT OF RANGE (published 2022-02-10); the current docs are listed instead
- github.com repos (react-native-purchases, purchases-flutter, skiptools, media-kit) | github.com | BLOCKED (github.com HTML returns 403 in this session, a known fact)
- Medium posts (e.g., Codemagic/Flutter-without-Mac articles, the Expo EAS + GitHub Actions article) | medium.com | BLOCKED (known 403)
- levelup.gitconnected "Flutter beat native iOS" benchmark | https://levelup.gitconnected.com/flutter-just-beat-native-ios-performance-and-the-2026-benchmarks-prove-it-254e70fe7459 | PAYWALL (member-only, per search listing; not fetched)
