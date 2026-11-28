# Selling Your AI Assistants and Building Them for Businesses

Drafted 2026-11-27.

**Labels:**
- **Documented:** an official page I opened.
- **Summary-only:** seen only in search results.
- **Inferred:** my own reasoning.

---

## 1. The short answer

You mostly **can't sell "access" to a GPT, Gem or Claude Project** the way you'd sell an app. Here's why.
- **Gemini Gems:**
  - Anyone you share a Gem with can see its full instructions and uploaded files: "Any Gem instructions and files that you have uploaded to the Gem can be viewed by any user with access to the Gem" [S1]. *Documented.*
  - Google is replacing Gems with **"skills."** Gems stop working **no sooner than March 1, 2027** for business accounts and **no sooner than June 1, 2027** for education accounts. That includes Google Classroom. Google says you can recreate Gems as skills by hand, and it plans to convert Gems automatically into draft skills [S2]. *Documented.*
- **ChatGPT GPTs:**
  - OpenAI announced a builder revenue program for US builders in January 2024, paid by "user engagement" [S3].
  - I found no confirmation that the program launched or what it pays [S3, S4]. *Summary-only.*
  - The newer "apps in ChatGPT" (built with the Apps SDK, which needs coding) only allowed linking out to sell physical goods as of early 2026 [S5]. *Summary-only; may be out of date.*
- **Claude Projects:**
  - Sharing works only on **Team and Enterprise** plans, and only with members of the same organization [S6]. *Documented.*
  - You can't share a Project with a paying customer outside your organization.
- **Your Claude Code assistants** (the media recommender and resume helper) run inside a code repository with saved files. A typical buyer couldn't run them. *Inferred.*

**So the format changes** depending on the buyer (*Inferred*):
- **Teachers:** sell the **instructions plus a setup guide**, and they install it in their own account.
- **Businesses:** sell **your time building it inside their account**, and they own the result.

---

## 2. Four formats

| Format | Who buys | What you deliver | How you get paid | Fit for you (Inferred) |
|---|---|---|---|---|
| **A. Assistant template kit** | Teachers, individuals | The instruction text, knowledge-file templates, a setup guide for each platform (GPT, Gem or skill, Claude Project), test prompts and troubleshooting | Per download: TPT, Payhip, Gumroad (as a guide, not "AI access" [S7]) | **Best for school assistants.** Same rules as the guide's Part 2: TPT's AI policy, district clearance, no student data. |
| **B. Free shared assistant** | Anyone | A public GPT or a Gem link | No direct pay; it's a portfolio piece that brings in clients | **Good for the media recommender**, as a showcase. Remember Gem instructions are visible to anyone you share with [S1]. |
| **C. Done-for-you business build** | Small businesses, nonprofits, schools, churches | An assistant built **in the client's account** with their documents, tested on their real examples, plus a user guide and handoff training | Setup fee + optional monthly upkeep | **Best for business work.** Claude Project sharing needs the client's own Team or Enterprise plan [S6], so build inside their account. |
| **D. Real software app** | Businesses, the public | A website or app that calls an AI API | Subscription or license | **Not yet.** It needs coding, hosting, paying for AI usage, privacy terms and support. Revisit once A and C are working. |

### Make every product portable (Inferred)
- Google's skills use the open **SKILL.md** format, so skills from other platforms can be copied in [S2].
- Write each assistant's instructions as one plain-text or Markdown file that works as a GPT, a Gem or skill, or a Claude Project.
- A product that isn't tied to one platform won't break when Gems are retired.

---

## 3. Your assistants, one by one (Inferred)

| Assistant | Sell? | Format | Notes |
|---|---|---|---|
| **Differentiation, Reteaching & Co-Teaching Assistant** | Yes | **A**: template kit | Your strongest school product. Built for your job, so get district clearance first (policy 3231). Convert the Gem version to a portable instruction file before June 2027. |
| **Gradebook "Who's Behind" Lists** | Yes | **A**: template kit, bundled with the differentiation kit | Use made-up CSV samples only. |
| **Co-Teaching PD slides prompt** | Better as PD | Part of your PD offer (file 03) | Works better as a live session than as a download. |
| **AI Research Pipeline** | Yes, as a service | **C**: "research assistant setup" for nonprofits and businesses | Shows careful sourcing, which businesses worry about. |
| **Personal Media Recommender** | Showcase, not for sale | **B**: free public version | Before selling anything built on its data sources (AniList, TVmaze, Wikidata), check each one's terms for commercial use. You already found that TMDB bans AI use. Keep users' names private. |
| **Resume Helper & Job Finder** | Maybe, to organizations | **C**: for career centers, workforce programs or church job ministries | Keep its honesty and scam-safety rules. Avoid promising job outcomes. Check the organization's privacy needs, since resumes contain personal data. |

---

## 4. What changes when you build for a business (Inferred)

The core skill is the same: role, rules, step-by-step workflow and tests. Business projects add these:

1. **Discovery:** collect 5–10 real examples of the task, plus what "good output" looks like for them.
2. **Their knowledge:** load their documents (FAQs, policies, product sheets). Have them confirm they own the documents and are allowed to upload them.
3. **Their account:** build in their ChatGPT, Gemini or Claude workspace so they own and control it. Don't host their assistant in your personal account.
4. **Privacy and data rules:** write down what must never go in (customer personal data, health information, passwords). Check their plan's data settings with them.
5. **Brand voice and limits:** cover their tone, what the assistant must refuse, and when to hand off to a person.
6. **Testing:** run their examples before and after, and record the results. This becomes your case study.
7. **Handoff:** a 2-page user guide, a 30-minute training session, and an "if it breaks" page.
8. **Upkeep (optional):** a monthly check after AI model updates, and refreshes when their documents change.
9. **Contract:** spell out scope, rounds of revision, who owns the instructions (usually the client, but you keep the right to reuse your general methods), confidentiality and payment. The free Freelancers Union contract tool helps.

**Starting prices** (*Inferred*, from the guide's sourced ranges):
- **Setup:** $300–$1,000 per assistant. Fiverr custom GPT gigs start around $90–$350 (summary-only); blog rate cards and one builder's report put builds at $500–$2,000+ (summary-only or anecdotal).
- **Upkeep:** $50–$200/month. One blog rate card listed $200–$500/month (summary-only).
- Start low for your first 2–3 clients in exchange for a testimonial. Raise prices once you have results to show.

---

## 5. Next steps
- [ ] Turn the differentiation assistant into one portable instruction file plus setup pages for a GPT, a Gem or skill, and a Claude Project.
- [ ] Publish a free public version of the media recommender as a showcase, after checking the data sources' terms.
- [ ] Find one practice business client (a friend's business, a church or a nonprofit). Build for them for free or at a low price in exchange for a written testimonial and permission to describe the project.
- [ ] Add a "Custom AI assistant for your team" service to Contra and LinkedIn (file 01).

---

## Sources
- [S1] Google Help, "Share a Gem from Gemini Apps": https://support.google.com/gemini/answer/16504957 (opened 2026-11-27; no page date). Documented.
- [S2] Google Workspace Updates, skills in the Gemini app and Workspace: https://workspaceupdates.googleblog.com/2026/09/skills-gemini-app-workspace.html (2026-09-30, updated 2026-10-13 and 2026-11-09). Documented.
- [S3] VentureBeat, GPT Store launch and revenue sharing: https://venturebeat.com/ai/openai-launches-gpt-store-but-revenue-sharing-is-still-to-come (2024-01). Summary-only.
- [S4] OpenAI Community, "Guidance for GPT Store builders outside the US": https://community.openai.com/t/guidance-for-gpt-store-builders-outside-the-us/1357911. Summary-only.
- [S5] OpenAI, "Developers can now submit apps to ChatGPT": https://openai.com/index/developers-can-now-submit-apps-to-chatgpt/; OpenAI Community, "ChatGPT App Monetization (Apps SDK)": https://community.openai.com/t/chatgpt-app-monetization-apps-sdk/1372343 (2026-01). Summary-only.
- [S6] Claude Help Center, "What are projects?": https://support.claude.com/en/articles/9517075-what-are-projects (opened 2026-11-27). Documented.
- [S7] Gumroad, prohibited products ("AI services"): https://gumroad.com/prohibited (opened 2026-11-26). Documented.

This is research, not legal, tax, or financial advice. Check your district's policies before selling materials made for your job.
