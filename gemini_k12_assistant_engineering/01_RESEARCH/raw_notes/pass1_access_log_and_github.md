# Pass 1 access log + GitHub reading (2026-11-05)

## Direct-fetch results for the 30 original sources
I tried every URL with a web-fetch agent (one attempt each) and also checked the hosts with curl. **0 of 30 fetched.** Every host returned `getaddrinfo ENOTFOUND`, meaning this session's network policy doesn't allow it.

Blocked hosts:
- support.google.com, edu.google.com, ai.google.dev, docs.cloud.google.com, knowledge.workspace.google.com
- teachai.org, learning.ccsso.org, iste.org, digitalpromise.org, hai.stanford.edu, ai4k12.org
- about.commonsensemedia.org, cosn.org, unesco.org, nature.com, scale.stanford.edu
- studentprivacy.ed.gov, tech.ed.gov

Mirrors I also tried, all blocked:
- ncbi.nlm.nih.gov, files.eric.ed.gov, www2.ed.gov, services.google.com, workspaceupdates.googleblog.com, arxiv.org, blog.google

Partly reachable:
- cloud.google.com: returns 301 redirects to the blocked docs.cloud.google.com.
- github.com and raw.githubusercontent.com: fetchable.
- generativelanguage.googleapis.com: the host responds (404 at the root), but no API key is available, so **no live Gemini tests are possible.** gcloud has no credentials.

Other notes:
- #27 duplicates #9 (same URL).
- #7 URL path: "gemini-enterprise-agent-platform" appears to be the new Cloud docs path for Vertex AI generative AI docs. Search results show the same title at this path, so it isn't treated as a substitution.
- #4 (Classroom answer 18866218) was not confirmed by search. Search returned related Classroom answers 16534159, 16538778, and 15410566 instead.

## GitHub reading (READ directly, tier A)
- **google/generative-ai-docs:** DEPRECATED ("will be archived"). It points to ai.google.dev and the cookbook. The only prompting file found is `prompting_with_media.ipynb`, which is stale (Gemini 1.5).
  - File API: 2GB per file, 20GB per project, files kept 48h.
  - Video is sampled at 1 FPS.
- **google-gemini/cookbook quickstarts:**
  - `System_instructions.ipynb` (full). Verbatim examples:
    - "You are a cat. Your name is Neko."
    - "You are a pirate and are explaining things to 5 years old kids."
    - A coding-expert instruction that says "Do not give an explanation for this code."
  - Quote: "System instructions allow you to steer the behavior of the model." / "Product-level behavior can be specified here, separate from prompts provided by end users."
  - Caveat quote: "system instructions can help guide the model to follow instructions, but they do not fully prevent jailbreaks or leaks… recommended exercising caution around putting any sensitive information in system instructions."
  - Get_started: "system instructions will be set for the whole chain of interaction and not per turn."
  - Default model in the notebooks is `gemini-3.8-flash`. Also listed: gemini-4-argon, gemini-3.1-pro-preview, 3.7/3.6-flash, 3.5-flash-lite, 2.5-pro.
  - Thinking levels: minimal (Gemini 3 Flash), low, medium, high. gemini-4-argon: low, medium (default), high. "Higher thinking levels produce better results for complex tasks but use more tokens and take longer."
  - `JSON_mode.ipynb`:
    - Two ways to get structured output: describe it in the prompt, or supply a schema.
    - `mime_type: application/json` gives "only valid JSON". Without it, output may be wrapped in markdown.
    - Pydantic is "the recommended approach". Structured output combined with tools is available on Gemini 3.
  - No LearnLM or education notebooks in quickstarts. GitHub code search requires sign-in.
- **google-gemini/gemini-cli:** GEMINI.md is a project-context file written as imperative and conditional rules ("Always use the `docs-writer` skill when…", "only if…"). The README says it is not tuned for the Gemini 4 series. The docs/ folder returned 504.
- **GitHub repo search** (`gh api search/repositories`): educational tutor-prompt repos are tiny (0–4★) and not authoritative. Excluded.
