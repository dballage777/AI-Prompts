# Candidates — primary and authoritative (lead, 2026-11-25)
Format: name | canonical URL | type | why it matters | how found | date seen | status
All opened 2026-11-25 with curl (HTTP 200, on-topic title confirmed). Apple docs pages are JS shells; their JSON at developer.apple.com/tutorials/data/... opened.

## Platform rules
- Apple App Review Guidelines (4.8 Login Services; 5.1.1(v)) | https://developer.apple.com/app-store/review/guidelines/ | policy | 4.8: apps using Google or other social login for the primary account must also offer an equivalent login that limits data to name+email, lets users hide email, no ad tracking without consent (Sign in with Apple qualifies; not named as mandatory) | known host | current | ACCESSIBLE
- Apple: Offering account deletion in your app (guideline reference 5.1.1(v)) | https://developer.apple.com/help/app-review/guideline-reference/5-1-1-account-deletion | policy guidance | in-app deletion requirement; Sign in with Apple token revocation | redirect from developer.apple.com/support/offering-account-deletion-in-your-app/ | current | ACCESSIBLE
- Apple news: Account deletion requirement starts June 30 | https://developer.apple.com/news/?id=12m75xbj | policy news | enforcement date for in-app deletion (2022; still the reference) | known | 2022 | ACCESSIBLE
- Sign in with Apple REST API: Token revocation | https://developer.apple.com/documentation/signinwithapplerestapi/revoke-tokens | official API docs | revoke tokens on account deletion | Apple docs | current | ACCESSIBLE (JSON)
- Apple HIG: Sign in with Apple | https://developer.apple.com/design/human-interface-guidelines/sign-in-with-apple | design guidance | button rules, private email relay | Apple docs | current | ACCESSIBLE (JSON)
- Apple App Privacy Details | https://developer.apple.com/app-store/app-privacy-details/ | policy | privacy label data types for accounts/user content | known | current | ACCESSIBLE
- Google Play: Understanding app account deletion requirements | https://support.google.com/googleplay/android-developer/answer/13327111 | policy | in-app + web deletion link, data deletion | known | current | ACCESSIBLE
- Google Play: User Data policy | https://support.google.com/googleplay/android-developer/answer/10144311 | policy | account deletion clause in user data policy | known | current | ACCESSIBLE

## Supabase
- Supabase Pricing | https://supabase.com/pricing | pricing | Free: 50k MAU, 500 MB DB, 5 GB egress, pauses after 1 week idle, 2 projects; Pro $25 incl. 100k MAU then $0.00325/MAU, 8 GB disk, $10 compute credit, spend cap on by default; Edge Functions 500k free / 2M Pro then $2/M | known | 2026-11-25 | ACCESSIBLE
- Supabase: Row Level Security | https://supabase.com/docs/guides/database/postgres/row-level-security | official docs | policies with auth.uid(), performance tips | known | current | ACCESSIBLE (.md also)
- Supabase KB: RLS performance and best practices | https://supabase.com/kb/troubleshooting/rls-performance-and-best-practices-Z5Jjwv | official KB | (select auth.uid()) wrapping, indexes | Pass 2 | current | ACCESSIBLE
- Supabase: Securing your API | https://supabase.com/docs/guides/api/securing-your-api | official docs | publishable vs secret keys; RLS as the gate | known | current | ACCESSIBLE
- Supabase: Sign in with Apple | https://supabase.com/docs/guides/auth/social-sign-in/auth-apple | official docs | native ID-token flow for Expo, secret rotation every 6 months for web/OAuth flow | known | current | ACCESSIBLE
- Supabase: Sign in with Google | https://supabase.com/docs/guides/auth/social-sign-in/auth-google | official docs | native signInWithIdToken on RN | known | current | ACCESSIBLE
- Supabase: Use Supabase Auth with React Native | https://supabase.com/docs/guides/auth/quickstarts/react-native | quickstart | session storage, AppState refresh | known | current | ACCESSIBLE
- Supabase: Expo React Native quickstart | https://supabase.com/docs/guides/getting-started/quickstarts/expo-react-native | quickstart | | known | current | ACCESSIBLE (near-duplicate of above)
- Supabase: User Management (managing user data) | https://supabase.com/docs/guides/auth/managing-user-data | official docs | profiles table pattern, deleting users | known | current | ACCESSIBLE
- Supabase JS: auth.admin.deleteUser | https://supabase.com/docs/reference/javascript/auth-admin-deleteuser | API reference | server-only deletion | known | current | ACCESSIBLE
- Supabase: Anonymous Sign-Ins | https://supabase.com/docs/guides/auth/auth-anonymous | official docs | guest-then-link flow, abuse notes | known | current | ACCESSIBLE
- Supabase: Securing Edge Functions | https://supabase.com/docs/guides/functions/auth | official docs | JWT verification (overlaps topic 2) | known | current | ACCESSIBLE
- Supabase: JWT Signing Keys | https://supabase.com/docs/guides/auth/signing-keys | official docs | asymmetric keys, JWKS verification in a Cloudflare Worker | known | current | ACCESSIBLE
- Supabase: JWTs | https://supabase.com/docs/guides/auth/jwts | official docs | claims | known | current | ACCESSIBLE
- Supabase: Production checklist | https://supabase.com/docs/guides/deployment/going-into-prod | official docs | RLS, SSL, rate limits, PITR | known | current | ACCESSIBLE
- Supabase: Control your costs / spend cap | https://supabase.com/docs/guides/platform/cost-control | official docs | spend cap behavior | known | current | ACCESSIBLE
- Supabase: Manage MAU usage | https://supabase.com/docs/guides/platform/manage-your-usage/monthly-active-users | official docs | MAU definition | known | current | ACCESSIBLE
- Supabase: Billing on Supabase | https://supabase.com/docs/guides/platform/billing-on-supabase | official docs | org-level billing, compute per project | known | current | ACCESSIBLE
- Supabase: Advisors (security/performance lints) | https://supabase.com/docs/guides/observability/advisors | official docs | flags tables without RLS | known | current | ACCESSIBLE
- Supabase: Edge Functions pricing | https://supabase.com/docs/guides/functions/pricing | pricing | | known | current | ACCESSIBLE
- Supabase: Firebase Auth as third-party auth | https://supabase.com/docs/guides/auth/third-party/firebase-auth | official docs | hybrid option | known | current | ACCESSIBLE

## Firebase / Google
- Firebase Pricing | https://firebase.google.com/pricing | pricing | Spark: Auth 50K MAU; Firestore 1 GiB stored, 20K writes/day, 50K reads/day, 10 GiB/month egress | known | 2026-11-25 | ACCESSIBLE
- Firestore billing | https://firebase.google.com/docs/firestore/pricing | pricing | per-read/write/delete billing, listener costs | known | current | ACCESSIBLE
- Firebase: Avoid surprise bills | https://firebase.google.com/docs/projects/billing/avoid-surprise-bills | official docs | budgets alert only, don't cap | known | current | ACCESSIBLE
- Firestore Security Rules: Get started | https://firebase.google.com/docs/firestore/security/get-started | official docs | request.auth.uid patterns | known | current | ACCESSIBLE
- Firebase: Avoid insecure rules | https://firebase.google.com/docs/rules/insecure-rules | official docs | open rules, test-mode expiry | known | current | ACCESSIBLE
- Firebase: Basic Security Rules | https://firebase.google.com/docs/rules/basics | official docs | content-owner-only pattern | known | current | ACCESSIBLE
- Firebase: Build unit tests for rules | https://firebase.google.com/docs/rules/unit-tests | official docs | emulator tests | known | current | ACCESSIBLE
- Firestore: Access data offline | https://firebase.google.com/docs/firestore/manage-data/enable-offline | official docs | built-in offline cache | known | current | ACCESSIBLE
- Firestore data model | https://firebase.google.com/docs/firestore/data-model | official docs | subcollections | known | current | ACCESSIBLE
- Firestore best practices | https://firebase.google.com/docs/firestore/best-practices | official docs | hotspots, document limits | known | current | ACCESSIBLE
- Firebase Authentication limits | https://firebase.google.com/docs/auth/limits | official docs | quotas | known | current | ACCESSIBLE
- Firebase Delete User Data extension | https://firebase.google.com/docs/extensions/official/delete-user-data | official docs | cascade deletion on auth delete | known | current | ACCESSIBLE
- Firebase: Authenticate using Apple (JS) | https://firebase.google.com/docs/auth/web/apple | official docs | Apple token revocation via revokeAccessToken | known | current | ACCESSIBLE
- Firebase App Check | https://firebase.google.com/docs/app-check | official docs | attestation for Firebase resources | known | current | ACCESSIBLE
- Firebase SQL Connect (ex Data Connect) | https://firebase.google.com/docs/sql-connect | official docs | Postgres option inside Firebase | known (redirect) | current | ACCESSIBLE
- React Native Firebase | https://rnfirebase.io/ | official community library docs | native SDK; needs dev build | known | current | ACCESSIBLE
- React Native Firebase: Social auth | https://rnfirebase.io/auth/social-auth | library docs | Apple/Google with RNFirebase | known | current | ACCESSIBLE
- Google: Sign in with Google overview | https://developers.google.com/identity/siwg | official docs | | known | current | ACCESSIBLE
- Google: Android Credential Manager | https://developers.google.com/identity/android-credential-manager | official docs | replaces legacy Google Sign-In | known | current | ACCESSIBLE

## Expo
- Expo: Using Supabase | https://docs.expo.dev/guides/using-supabase/ | official docs | | known | current | ACCESSIBLE
- Expo: Using Firebase | https://docs.expo.dev/guides/using-firebase/ | official docs | JS SDK vs RNFirebase | known | current | ACCESSIBLE
- Expo: AppleAuthentication | https://docs.expo.dev/versions/latest/sdk/apple-authentication/ | official SDK docs | name/email only on first sign-in | known | current | ACCESSIBLE
- Expo: Using Google authentication | https://docs.expo.dev/guides/google-authentication/ | official docs | recommends @react-native-google-signin | known | current | ACCESSIBLE
- Expo: Authentication overview | https://docs.expo.dev/develop/authentication/ | official docs | | known | current | ACCESSIBLE
- Expo: Local-first architecture | https://docs.expo.dev/guides/local-first/ | official docs | sync engines list | known | current | ACCESSIBLE
- Expo SQLite | https://docs.expo.dev/versions/latest/sdk/sqlite/ | official SDK docs | local store | known | current | ACCESSIBLE

## Cloudflare
- Cloudflare D1 pricing | https://developers.cloudflare.com/d1/platform/pricing/ | pricing | billed by rows read/written; last updated Oct 30 2026 | known | 2026-10-30 | ACCESSIBLE
- Cloudflare D1 overview | https://developers.cloudflare.com/d1/ | official docs | | known | current | ACCESSIBLE
- Cloudflare D1 read replication | https://developers.cloudflare.com/d1/best-practices/read-replication/ | official docs | sessions API | known | current | ACCESSIBLE
- Durable Objects pricing | https://developers.cloudflare.com/durable-objects/platform/pricing/ | pricing | | known | current | ACCESSIBLE
- Durable Objects overview | https://developers.cloudflare.com/durable-objects/ | official docs | per-user object pattern | known | current | ACCESSIBLE
- Durable Objects SQLite storage API | https://developers.cloudflare.com/durable-objects/api/sqlite-storage-api/ | official docs | | known | current | ACCESSIBLE
- Workers pricing | https://developers.cloudflare.com/workers/platform/pricing/ | pricing | $5/month paid plan | known | current | ACCESSIBLE

## Failed
- react-native-google-signin.github.io/docs/ | DEAD (404 at that path); /docs/install returned 200 — logged; the OSS worker covers it.
