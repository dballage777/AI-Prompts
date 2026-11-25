# Candidates — primary and authoritative (lead researcher, 2026-11-25)
Format: name | canonical URL | type | why it matters | how found | status
All opened with curl (HTTP 200, real content) on 2026-11-25 unless noted.

React Native / Expo
- React Native docs: Get Started (framework recommendation) | https://reactnative.dev/docs/environment-setup | official docs | Meta's own docs recommend starting new apps with a framework (Expo) | direct | ACCESSIBLE
- React Native blog: "The New Architecture is here" (0.76) | https://reactnative.dev/blog/2024/10/23/the-new-architecture-is-here | official release post | New Architecture default from 0.76; JSI, Fabric, migration effort | search | ACCESSIBLE
- React Native 0.82 "A New Era" | https://reactnative.dev/blog/2025/10/08/react-native-0.82 | official release post | first New-Architecture-only release; Hermes V1 experimental | search | ACCESSIBLE
- React Native 0.84 "Hermes V1 by Default" | https://reactnative.dev/blog/2026/02/11/react-native-0.84 | official release post | Hermes V1 default; legacy code removal | search | ACCESSIBLE
- React Native blog index (0.86–0.88) | https://reactnative.dev/blog | official | current cadence: 0.88 latest; several "no breaking changes" releases | direct | ACCESSIBLE
- React Native versions page | https://reactnative.dev/versions | official | support window, latest = 0.88 | direct | ACCESSIBLE
- React Native llms.txt | https://reactnative.dev/llms.txt | official AI-readable docs | AI-agent-friendly docs | direct | ACCESSIBLE
- Expo docs home + llms.txt | https://docs.expo.dev/llms.txt | official AI-readable docs | markdown docs index for agents | search | ACCESSIBLE
- Expo docs: Claude Code and Expo | https://docs.expo.dev/agents/claude/ | official docs | create-expo-app ships AGENTS.md + Claude settings; official Expo plugin with Skills + MCP | search | ACCESSIBLE
- Expo docs: Expo MCP Server | https://docs.expo.dev/eas/ai/mcp/ | official docs | MCP requires paid EAS plan; local tools need SDK 54+ | search | ACCESSIBLE
- Expo docs: Work without a Mac | https://docs.expo.dev/preview/simulators/how-to/work-without-a-mac/ | official docs | EAS cloud Simulators; Xcode only needed for local builds | search | ACCESSIBLE
- Expo docs: EAS Build introduction | https://docs.expo.dev/build/introduction/ | official docs | cloud builds + managed credentials for iOS/Android | direct | ACCESSIBLE
- Expo docs: Continuous Native Generation | https://docs.expo.dev/workflow/continuous-native-generation/ | official docs | native projects generated from config; easier upgrades | direct | ACCESSIBLE
- Expo docs: Development builds | https://docs.expo.dev/develop/development-builds/introduction/ | official docs | Expo Go vs dev builds for native modules | direct | ACCESSIBLE
- Expo docs: EAS Update | https://docs.expo.dev/eas-update/introduction/ | official docs | OTA JS updates after release | direct | ACCESSIBLE
- Expo docs: Submit to App Store | https://docs.expo.dev/submit/ios/ | official docs | submit from Linux via EAS Submit | direct | ACCESSIBLE
- Expo pricing | https://expo.dev/pricing | vendor pricing | Free: 15 Android + 15 iOS builds/mo; Starter $19/mo | direct | ACCESSIBLE
- Expo changelog | https://expo.dev/changelog | vendor changelog | SDK 58 current; cadence | direct | ACCESSIBLE
- Expo blog: how to build mobile apps with AI — the three tools | https://expo.dev/blog/how-to-build-mobile-apps-with-ai-the-three-tools-that-actually-matter | vendor blog | Expo's AI workflow (skills, MCP, llms.txt) | search | ACCESSIBLE
- Expo blog: solo dev playbook (no Xcode/Android Studio) | https://expo.dev/blog/building-a-cross-platform-app-without-touching-xcode-or-android-studio | vendor case study | solo workflow; vendor bias | search | ACCESSIBLE
- Expo blog: App Store Connect minimum SDK 26 | https://expo.dev/blog/app-store-connect-minimum-sdk-26 | vendor blog | how Expo handles Apple SDK deadline | search | ACCESSIBLE
- Expo article: choosing a mobile stack | https://expo.dev/articles/choosing-a-mobile-stack/cross-platform-mobile-development | vendor article | vendor framing of choice | search | ACCESSIBLE

Flutter / Dart
- Flutter docs: Flutter & AI (rules, MCP server, tools) | https://docs.flutter.dev/ai | official docs | Dart/Flutter MCP server (Claude Code setup), AI rules files | search | ACCESSIBLE
- Flutter docs: AI rules | https://docs.flutter.dev/ai/ai-rules | official docs | rules.md / 4k / 1k variants | search | ACCESSIBLE
- Flutter docs: Dart and Flutter MCP server | https://docs.flutter.dev/ai/mcp-server | official docs | live analyzer/diagnostics for agents | search | ACCESSIBLE
- Flutter docs: Build and release an iOS app | https://docs.flutter.dev/deployment/ios | official docs | "must use a device running macOS" for official path | direct | ACCESSIBLE
- Flutter docs: Impeller | https://docs.flutter.dev/perf/impeller | official docs | renderer status per platform | direct | ACCESSIBLE
- Flutter docs: Flutter for React Native developers | https://docs.flutter.dev/flutter-for/react-native-devs | official docs | learning-curve mapping | direct | ACCESSIBLE
- Flutter docs: What's new (3.50) | https://docs.flutter.dev/release/whats-new | official | current version Flutter 3.50 / Dart 3.14 | direct | ACCESSIBLE
- Flutter & Dart 2026 roadmap | https://flutter.dev/blog/flutter-darts-2026-roadmap | official roadmap | Impeller Android completion, AI, build_runner | search | ACCESSIBLE
- Flutter 2025 roadmap update | https://flutter.dev/blog/flutter-2025-roadmap-update | official roadmap | macros dropped; Impeller | search | ACCESSIBLE
- Flutter Q2 2026 user survey | https://flutter.dev/blog/flutter-q2-2026-survey | official survey | 93% satisfaction; first AI-tool questions | search | ACCESSIBLE
- Top ten highlights Flutter & Dart 2025 | https://flutter.dev/blog/the-top-ten-highlights-from-flutter-dart-in-2025 | official blog | year summary | search | ACCESSIBLE
- What's new in Flutter 3.47 | https://flutter.dev/blog/whats-new-in-flutter-3-47 | official release | recent features | HN | ACCESSIBLE

Native / platform
- Apple: Upcoming requirements (SDK minimums) | https://developer.apple.com/news/upcoming-requirements/ | official policy | Xcode 26 / iOS 26 SDK required since 2026-04-28 — every framework must keep up | search | ACCESSIBLE
- Apple: Xcode | https://developer.apple.com/xcode/ | official | Xcode is macOS-only: native iOS dev needs a Mac | direct | ACCESSIBLE
- Apple: Xcode Cloud | https://developer.apple.com/xcode-cloud/ | official | Apple's cloud CI still started from Xcode on a Mac | direct | ACCESSIBLE
- Apple: SwiftUI docs | https://developer.apple.com/documentation/swiftui | official docs | native iOS UI baseline | direct | ACCESSIBLE (JS-heavy page)
- Android Developers: Kotlin Multiplatform | https://developer.android.com/kotlin/multiplatform | official docs | Google's KMP stance | search | ACCESSIBLE
- Android Developers: Target API level requirements | https://developer.android.com/google/play/requirements/target-sdk | official policy | Play's yearly target-SDK rule | direct | ACCESSIBLE
- Kotlin docs: What is Kotlin Multiplatform | https://kotlinlang.org/docs/multiplatform/kmp-overview.html | official docs | share logic vs UI | search | ACCESSIBLE
- JetBrains: Compose Multiplatform 1.8.0 — iOS stable | https://blog.jetbrains.com/kotlin/2025/05/compose-multiplatform-1-8-0-released-compose-multiplatform-for-ios-is-stable-and-production-ready/ | official release | CMP iOS stable May 2025 | search | ACCESSIBLE
- JetBrains: KMP tooling shifting gears (Fleet drops KMP) | https://blog.jetbrains.com/kotlin/2025/02/kotlin-multiplatform-tooling-shifting-gears/ | official | IDE tooling = Android Studio/IntelliJ; Xcode still needed for iOS | search | ACCESSIBLE
- Swift.org: Announcing the Swift SDK for Android | https://swift.org/blog/nightly-swift-sdk-for-android/ | official | Swift on Android preview (Oct 2025) | search | ACCESSIBLE
- Skip | https://skip.tools/ | vendor product | Swift→Android; requires Xcode/Mac | HN | ACCESSIBLE

Primary engineering case studies
- Shopify: Native is now the future of mobile at Shopify | https://shopify.engineering/back-to-native | primary engineering post (Sep 2026) | big RN adopter returns to native because AI agents cut duplication cost | search | ACCESSIBLE
- Shopify: Five years of React Native at Shopify | https://shopify.engineering/five-years-of-react-native-at-shopify | primary engineering post (Jan 2025) | RN at scale: benefits and costs | search | ACCESSIBLE
- Shopify: Migrating to React Native's New Architecture | https://shopify.engineering/react-native-new-architecture | primary engineering post (2025) | real migration costs | HN | ACCESSIBLE

Surveys
- Stack Overflow Developer Survey 2024 — Technology | https://survey.stackoverflow.co/2024/technology | survey | Flutter vs RN usage/admired numbers (last year with clean comparison) | direct | ACCESSIBLE
- Stack Overflow Developer Survey 2025 — Technology | https://survey.stackoverflow.co/2025/technology/ | survey | category changed; Flutter/RN no longer comparable | direct | ACCESSIBLE (low value)
- State of React Native 2025 results | https://results.stateofreactnative.com/en-US/ | community survey (Software Mansion) | Expo/EAS usage, New Arch 80% adoption, pain points | search | ACCESSIBLE (JS-heavy; section pages open)

Excluded in this batch
- The Pragmatic Engineer, "Cross-platform mobile development" — PAYWALL after intro ("This post is for paid subscribers"). Logged, not described further.
- thedroidsonroids.com comparison — 403 BLOCKED.
- thenewstack.io RN 0.82 article — 403 BLOCKED.
- github.com/zero-one-group/flutter-react-native-benchmark — github.com 403; raw README 404 (DEAD on main branch).
