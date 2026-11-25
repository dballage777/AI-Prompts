# SOURCES — media-app-ai-backend
All read 2026-11-25. Per-source notes: sources/S#.md.

| S# | Name | URL | Access | Date read | Best for |
|---|---|---|---|---|---|
| S1 | Claude API docs: Prompt caching | https://platform.claude.com/docs/en/build-with-claude/prompt-caching | OPENED | 2026-11-25 | caching mechanics, TTLs, invalidators |
| S2 | Claude API docs: Pricing | https://platform.claude.com/docs/en/about-claude/pricing | OPENED (cost-optimization subpage PARTIAL) | 2026-11-25 | token prices, model tiers, cost levers |
| S3 | Claude API docs: Rate limits | https://platform.claude.com/docs/en/api/rate-limits | OPENED | 2026-11-25 | tier caps, rate limits, error codes |
| S4 | Expo docs: Environment variables in Expo | https://docs.expo.dev/guides/environment-variables/ | OPENED | 2026-11-25 | Expo env var exposure, EAS visibility |
| S5 | Claude API docs: Streaming Messages | https://platform.claude.com/docs/en/build-with-claude/streaming | OPENED | 2026-11-25 | SSE events, mid-stream errors, refusals |
| S6 | Claude Help Center: API key best practices | https://support.claude.com/en/articles/9767949-api-key-best-practices-keeping-your-keys-safe-and-secure | OPENED | 2026-11-25 | key hygiene rules |
| S7 | Claude API docs: Mitigate jailbreaks and prompt injections | https://platform.claude.com/docs/en/test-and-evaluate/strengthen-guardrails/mitigate-jailbreaks | OPENED | 2026-11-25 | Anthropic injection/jailbreak mitigations, Haiku screens |
| S8 | Claude API docs: Workspaces (spend and rate limits) | https://platform.claude.com/docs/en/manage-claude/workspaces | OPENED | 2026-11-25 | workspace spend and rate limits |
| S9 | Expo Router docs: API Routes | https://docs.expo.dev/router/web/api-routes/ | OPENED | 2026-11-25 | Expo API routes, Hosting limits and prices |
| S10 | OWASP Top 10 for LLM Applications 2026: LLM06 Unbounded Consumption | https://raw.githubusercontent.com/GenAI-Security-Project/GenAI-LLM-Top10/main/2026/final/LLM06_UnboundedConsumption.md | OPENED | 2026-11-25 | cost-abuse threat model and caps (OWASP 2026) |
| S11 | Anthropic TypeScript SDK README | https://raw.githubusercontent.com/anthropics/anthropic-sdk-typescript/main/README.md | OPENED | 2026-11-25 | server SDK runtimes, retries, streaming helpers |
| S12 | OWASP Top 10 for LLM Applications 2026: LLM01 Prompt Injection | https://raw.githubusercontent.com/GenAI-Security-Project/GenAI-LLM-Top10/main/2026/final/LLM01_PromptInjection.md | OPENED | 2026-11-25 | prompt-injection threat model and mitigations; hidden context |
| S13 | Claude API docs: User profiles for end-customer attribution | https://platform.claude.com/docs/en/manage-claude/user-profiles | OPENED | 2026-11-25 | per-user attribution header |
| S14 | Anthropic Usage Policy | https://www.anthropic.com/legal/aup | OPENED | 2026-11-25 | AI disclosure, minors, prohibited uses |
| S15 | Mind your key: LLM API Credential Leakage in iOS Apps (Gao et al.) | https://arxiv.org/abs/2606.12212 | OPENED | 2026-11-25 | empirical evidence on mobile LLM key leaks |
| S16 | Expo SDK reference: expo/fetch | https://docs.expo.dev/versions/latest/sdk/expo/ | OPENED | 2026-11-25 | client-side streaming in Expo |
| S17 | Expo docs: AppIntegrity | https://docs.expo.dev/versions/latest/sdk/app-integrity/ | OPENED | 2026-11-25 | app attestation flow |
| S18 | Cloudflare AI Gateway: Anthropic provider | https://developers.cloudflare.com/ai-gateway/usage/providers/anthropic/ | OPENED | 2026-11-25 | gateway option (rate limits, logs, stored keys) |
| S19 | Cloudflare Workers: Rate Limiting binding | https://developers.cloudflare.com/workers/runtime-apis/bindings/rate-limit/ | OPENED | 2026-11-25 | burst rate limiting; Durable Objects |
| S20 | OWASP MASWE-0004: Sensitive Data Hardcoded in the App Package | https://mas.owasp.org/MASWE/MASVS-STORAGE/MASWE-0004/ | OPENED | 2026-11-25 | hardcoded-secret weakness (OWASP MAS) |
| S21 | UK NCSC: Prompt injection is not SQL injection | https://www.ncsc.gov.uk/blog-post/prompt-injection-is-not-sql-injection | OPENED | 2026-11-25 | framing prompt injection; logging |
| S22 | Supabase docs: Securing Edge Functions | https://supabase.com/docs/guides/functions/auth | OPENED (rate-limit example PARTIAL: code on github.com) | 2026-11-25 | Supabase function auth pitfalls and limits |
| S23 | Design Patterns for Securing LLM Agents against Prompt Injections | https://arxiv.org/abs/2506.08837 | OPENED | 2026-11-25 | secure agent design patterns; recommender case |
| S24 | React Native docs: Security | https://reactnative.dev/docs/security | OPENED | 2026-11-25 | RN security basics, no CORS |
| S25 | Upstash Ratelimit: Algorithms | https://upstash.com/docs/redis/sdks/ratelimit-ts/algorithms | OPENED | 2026-11-25 | exact quota algorithms and costs |
| S26 | Simon Willison: The lethal trifecta for AI agents | https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/ | OPENED | 2026-11-25 | lethal trifecta framing |
| S27 | InjecAgent: Indirect Prompt Injections in Tool-Integrated LLM Agents | https://arxiv.org/abs/2403.02691 | OPENED | 2026-11-25 | tool-response injection data |
| S28 | METR: Update on Security at METR | https://metr.org/blog/2026-08-31-security-update/ | OPENED | 2026-11-25 | real incident: stolen key cost |
| S29 | Codeminer42: Why Your AI-Powered React Native App Needs a Backend | https://blog.codeminer42.com/thinking-about-adding-ai-to-your-expo-react-native-app-read-this-first/ | OPENED | 2026-11-25 | worked RN proxy architecture |
| S30 | Hacker News: €54k spike in 13h from unrestricted Firebase browser key | https://news.ycombinator.com/item?id=47791871 | OPENED | 2026-11-25 | community lessons on alerts vs caps (anecdotal) |
