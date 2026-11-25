# MEMORY BRIEF — Claude API backend for the media recommender app
Built 2026-11-25 from S1–S30 (details: KNOWLEDGE_BASE.md). Prices as read that day. Stack: React Native + Expo.

**Architecture (Inferred).** An Expo API route (paid Expo Hosting) or a Cloudflare Worker holds the key. It checks the user's session, app attestation and per-user quota. It calls Claude with a fixed prompt, model and tools, and streams the answer to `expo/fetch`. Default model: Sonnet 5.5 (about $0.04–0.05 per round); test Haiku 5.5 (about $0.003).

## Key learned points
1. **Never ship the key** (Strong).
   - `EXPO_PUBLIC_*` values sit in the bundle as plain text [S4].
   - "Never store sensitive API keys in your app code" [S24].
   - OWASP lists billed AI calls as the impact [S20].
   - The Anthropic TS SDK doesn't support React Native [S11].
2. **A proxy without real auth still leaks** (Research, preprint) [S15].
   - 282 of 444 iOS LLM apps leaked working credentials: 48% replayable JWTs, 33% unauthenticated proxies, 19% plaintext keys.
   - 28% were fixed after 90 days.
   - Supabase's default `verify_jwt` accepts the publishable key; use `auth: 'user'` [S22].
3. **Attest the app** with `@expo/app-integrity` (Play Integrity, App Attest). The server issues a one-time challenge of 16+ bytes and does all verification. It doesn't work on the iOS Simulator [S17].
4. **No CORS on native**; store tokens in `expo-secure-store` [S24].
5. **The server fixes model, system prompt, tools and `max_tokens`.** One leaking proxy accepted them from the client (Inferred from S15).
6. **Caps, not alerts** (Strong).
   - OWASP LLM06:2026 wants hard caps per key, user and account, and token or cost budgets; request rate limits "alone [are] no longer sufficient" [S10].
   - €54k in 13 h while alerts lagged [S30, anecdotal]; METR lost about $600k over about 3 weeks [S28].
7. **Anthropic limits** [S3, S8].
   - Tier caps: Start $500, Build $1,000, Scale $200,000 per month. At the cap: a 429 `enforced_spend_limit_reached`, paused until the next month.
   - Workspaces get their own spend limit (a 400 when hit), per-model rate limits and email alerts. 529 and `ramp_limit_exceeded` are retryable.
8. **Attribute every user.** `POST /v1/user_profiles` once, then the `anthropic-user-profile-id` header on every request. Enforcement then hits one user, not the organization. Hashed email only [S13].
9. **Rate limits** [S19, S25].
   - The Workers binding is approximate, counted per location, and only allows 10 s or 60 s windows. Key it by user ID.
   - Exact quotas need Durable Objects or Upstash. Upstash fails open on its timeout by default.
10. **Prices per million tokens** [S2]:
    - Haiku 5.5: $0.10 in / $0.50 out. Sonnet 5.5: $2 / $10. Opus 5.5: $4 / $20.
    - Batch is 50% off. Tools add 286 tokens. US-only inference costs 1.1x.
11. **Caching** [S1, S2, S3].
    - Writes cost 1.25x (5 min) or 2x (1 h). Reads cost 0.05x on Sonnet and Opus, 0.1x on Haiku. Minimum 512 tokens.
    - Order: tools → system → messages; changing tools or effort breaks it.
    - Cache reads don't count toward ITPM.
12. **Streaming** [S5].
    - An `error` event can arrive after HTTP 200; the SDK won't retry it.
    - Handle `stop_reason: "refusal"`.
    - Resume a cut-off answer with a user message, not a prefill.
13. **Client:** `expo/fetch` streams via `getReader()` [S16].
14. **Expo Hosting** (Cloudflare Workers): Free plan too small (10 subrequests); $2 per 1M extra requests; use "sensitive" variables [S9, S4].
15. **AI Gateway** caching is exact-match only; never ship its token [S18].
16. **Injection has no reliable filter fix** (Strong) [S12, S21, S23, S26].
    - The LLM is a "confusable deputy", and its privileges drop to those of the least-trusted input [S21].
    - API responses are "semi-trusted" [S12].
17. **Tool-result injection is real**: GPT-4 failed 24–47% in 2024 tests [S27].
18. **Patterns** [S23]: Action-Selector, Plan-Then-Execute, Map-Reduce, Dual LLM. The paper's Product Recommender case uses map-reduce, so one injected item affects only itself.
19. **Lethal trifecta** [S26]: private data + untrusted content + an outbound channel. Remove the outbound channel; rendered links and images count as one.
20. **Anthropic guidance** [S7, S12].
    - Put third-party text only in JSON-encoded `tool_result` blocks labeled with their source.
    - Optional Haiku screen.
    - Assume the system prompt leaks (LLM08:2026).
21. **Usage policy** [S14]: disclose AI each session; minors add age checks and a COPPA statement; no reselling Claude access.

## Prompt-writing rules
1. No provider key or gateway token in the app; name the proxy and its runtime.
2. Every AI endpoint:
   - checks a short-lived JWT, attestation, and a per-user quota that fails closed;
   - sends the user-profile header.
3. The server fixes model, prompt, tools and `max_tokens`.
4. Budgets in numbers:
   - rounds per day per plan;
   - a token cap per request;
   - a workspace spend limit;
   - per-user usage logging.
5. Caching order: tools → frozen system → `cache_control` → taste profile → turn. Test that `cache_read_input_tokens` is above 0.
6. Tool results are untrusted data:
   - read-only tools on fixed hosts;
   - trimmed JSON with invisible characters stripped;
   - map-reduce per title.
7. Structured output with verified IDs. The app builds links; no model-written URLs or images.
8. Stream through `expo/fetch`; handle `error`, `refusal`, abort and timeout.
9. AI disclosure, and a minimum-age decision.
10. Red-team synopsis injections; test 429/400 paths; re-check dated prices before launch.

## Key terms
proxy · EAS sensitive/secret · `+api.ts` · ITPM/OTPM · spend cap vs limit · user profile · denial of wallet · indirect injection · lethal trifecta · map-reduce · Durable Objects.
