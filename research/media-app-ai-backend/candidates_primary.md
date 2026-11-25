# candidates_primary — Anthropic official sources (lead, 2026-11-25)
Format: name | canonical URL | type | why it matters | how found | status | date seen
All opened via curl (HTTP 200, real content); platform.claude.com pages fetched as .md.

Claude API docs: Pricing | https://platform.claude.com/docs/en/about-claude/pricing | official docs | per-model token prices, cache write/read multipliers, batch 50%, Haiku 5.5 long-prompt tier, inference_geo 1.1x — basis for cost per user | llms.txt index | ACCESSIBLE | current (prices for Opus/Sonnet/Haiku 5.5)
Claude API docs: Prompt caching | https://platform.claude.com/docs/en/build-with-claude/prompt-caching | official docs | prefix caching, breakpoints, TTLs, minimum lengths, invalidation | llms.txt | ACCESSIBLE | current
Claude API docs: Rate limits | https://platform.claude.com/docs/en/api/rate-limits | official docs | org tiers, RPM/ITPM/OTPM, token bucket, cached tokens and ITPM, 429 + retry-after, workspace limits | llms.txt | ACCESSIBLE | current
Claude API docs: Streaming Messages | https://platform.claude.com/docs/en/build-with-claude/streaming | official docs | SSE event types, error events, recovery | llms.txt | ACCESSIBLE | current
Claude API docs: Mitigate jailbreaks and prompt injections | https://platform.claude.com/docs/en/test-and-evaluate/strengthen-guardrails/mitigate-jailbreaks | official docs | harmlessness screens, input validation, chained safeguards, user ID tracking | llms.txt | ACCESSIBLE | current
Claude API docs: Reduce prompt leak | https://platform.claude.com/docs/en/test-and-evaluate/strengthen-guardrails/reduce-prompt-leak | official docs | system prompt leakage, post-processing | llms.txt | ACCESSIBLE | current
Claude API docs: Handle streaming refusals | https://platform.claude.com/docs/en/test-and-evaluate/strengthen-guardrails/handle-streaming-refusals | official docs | refusal stop_reason mid-stream, client handling | llms.txt | ACCESSIBLE | current
Claude API docs: Choosing a model | https://platform.claude.com/docs/en/about-claude/models/choosing-a-model | official docs | model tier selection | llms.txt | ACCESSIBLE | current
Claude API docs: Optimizing for cost and intelligence | https://platform.claude.com/docs/en/about-claude/models/optimizing-for-cost-and-intelligence | official docs | cost levers: model, effort, caching, batch | llms.txt | ACCESSIBLE | current
Claude API docs: Haiku 5.5 overview | https://platform.claude.com/docs/en/models/haiku-5-5/overview | official docs | cheapest current tier, specs | llms.txt | ACCESSIBLE | current
Claude API docs: Sonnet 5.5 overview | https://platform.claude.com/docs/en/models/sonnet-5-5/overview | official docs | mid tier specs | llms.txt | ACCESSIBLE | current
Claude API docs: Token counting | https://platform.claude.com/docs/en/build-with-claude/token-counting | official docs | pre-flight cost estimation, free endpoint w/ limits | llms.txt | ACCESSIBLE | current
Claude API docs: Errors | https://platform.claude.com/docs/en/api/errors | official docs | 429/529/overloaded handling, request-id | llms.txt | ACCESSIBLE | current
Claude API docs: Workspaces | https://platform.claude.com/docs/en/manage-claude/workspaces | official docs | per-workspace spend & rate limits, key scoping | llms.txt | ACCESSIBLE | current
Claude API docs: User profiles for end-customer attribution | https://platform.claude.com/docs/en/manage-claude/user-profiles | official docs | per-end-user attribution so enforcement hits one user, not the org | llms.txt | ACCESSIBLE | current
Claude API docs: API and data retention | https://platform.claude.com/docs/en/manage-claude/api-and-data-retention | official docs | retention of prompts/outputs; privacy disclosures | llms.txt | ACCESSIBLE | current
Claude API docs: Tool use overview | https://platform.claude.com/docs/en/agents-and-tools/tool-use/overview | official docs | client tools for title verification; tool token overhead | llms.txt | ACCESSIBLE | current
Claude API docs: Tool use with prompt caching | https://platform.claude.com/docs/en/agents-and-tools/tool-use/tool-use-with-prompt-caching | official docs | caching tool definitions | llms.txt | ACCESSIBLE | current
Claude API docs: Structured outputs | https://platform.claude.com/docs/en/build-with-claude/structured-outputs | official docs | schema-valid JSON for app rendering | llms.txt | ACCESSIBLE | current
Claude API docs: Batch processing | https://platform.claude.com/docs/en/build-with-claude/batch-processing | official docs | 50% off for non-interactive jobs | llms.txt | ACCESSIBLE | current
Claude API docs: Service tiers | https://platform.claude.com/docs/en/api/service-tiers | official docs | standard vs priority; availability | llms.txt | ACCESSIBLE | current
Claude API docs: Usage and Cost Analytics API | https://platform.claude.com/docs/en/manage-claude/usage-cost-analytics-api | official docs | monitoring spend | llms.txt | ACCESSIBLE | current
Claude API docs: Rate Limits API | https://platform.claude.com/docs/en/manage-claude/rate-limits-api | official docs | read org/workspace limits programmatically | llms.txt | ACCESSIBLE | current
Claude API docs: Content moderation guide | https://platform.claude.com/docs/en/about-claude/use-case-guides/content-moderation | official docs | using a cheap model to screen input | llms.txt | ACCESSIBLE | current
Claude API docs: Get your API key | https://platform.claude.com/docs/en/get-api-key | official docs | key creation basics | llms.txt | ACCESSIBLE | current
Claude Help Center: API key best practices | https://support.claude.com/en/articles/9767949-api-key-best-practices-keeping-your-keys-safe-and-secure | official help article | never embed keys client-side, rotation, secret scanning | search | ACCESSIBLE | Oct 19, 2026
Anthropic Usage Policy | https://www.anthropic.com/legal/aup | policy | consumer-facing chatbot & minors guidelines, disclosure | direct | ACCESSIBLE | effective Nov 12, 2026
Anthropic Commercial Terms of Service | https://www.anthropic.com/legal/commercial-terms | policy | terms for building products on the API | direct | ACCESSIBLE | current
Anthropic research: Mitigating the risk of prompt injections in browser use | https://www.anthropic.com/research/prompt-injection-defenses | official research post | Anthropic's prompt-injection defenses, classifiers | direct | ACCESSIBLE | Nov 24, 2025 (updated Oct 6, 2026)
Anthropic engineering: Building effective agents | https://www.anthropic.com/engineering/building-effective-agents | official engineering post | workflows vs agents; keep simple | direct (redirected from /research/) | ACCESSIBLE | Dec 2024
Claude resources: Prompt caching article | https://claude.com/resources/articles/prompt-caching | official article | cost/latency claims for caching | redirect from anthropic.com/news/prompt-caching | ACCESSIBLE | n/a

EXCLUDED
Spend Limits API | https://platform.claude.com/docs/en/manage-claude/spend-limits-api | — | Claude Enterprise only, not Console orgs → off-topic for this app | llms.txt | ACCESSIBLE but off-scope
