# Knowledge Base: Creating and Selling a Coloring Book
Built 2026-11-09 from 30 user-supplied sources (S1–S30), using prompts/claude/Topic_Learning_Master_Prompt_v2.txt.
- **Coverage:** 26 opened. 4 were partial: S5 (cover calculator, an interactive tool), S6 (one trim table didn't load), S21 (USPTO search tool needs JavaScript; its help pages were read), S26 (NYPL landing page only). None were blocked.
- **Cross-check:** 12 key facts were re-fetched from the live pages and matched.
- **Files:** per-source notes are in sources/S#.md; the claim table is CLAIMS.csv.
- **Evidence labels:** Documented = an official platform or government page about its own rules · Research · Reported = secondary sources, blogs, or vendor advice outside the vendor's own specs · Inferred = my synthesis or arithmetic.
- **Prices, fees, and policies are as read on 2026-11-09.** Platforms change them. Re-check before relying on any number.

---

## 1. Topic overview
There are two ways to sell a coloring book:
1. **Printed, print-on-demand:**
   - Amazon KDP [S2–S9, S13];
   - Lulu [S14, S20, S24, S30];
   - IngramSpark [S27].
   No inventory is needed. The printing cost comes out of each sale [S7].
2. **Digital printables:** Etsy instant downloads [S11, S12, S25].

Success depends on six things:
- legal art: your own, properly cleared public domain, or AI used within the platforms' rules;
- print-ready files;
- paper and layout choices that suit coloring;
- correct metadata;
- pricing that clears the royalty thresholds;
- marketing [S17].

## 2. Core concepts and glossary
- **Trim size:** the final page size. 8.5 × 11 in is the most common coloring size. 8.5 × 8.5 in is used for square books [S17]. On KDP, 8.5 × 11 counts as a **large trim**, which has higher print costs [S2, S7].
- **Bleed:** art that runs past the trim line so it reaches the page edge. It adds 0.125 in (3.2 mm) on the top, bottom, and outside edges [S2, S4]. Lulu adds it on all sides [S20]. Every KDP cover needs bleed; for interiors it's optional [S2].
- **Margins and gutter:** the safe space around the page edges; the gutter is the inside margin by the binding. KDP's outside margin is 0.25 in without bleed or 0.375 in with bleed. KDP's gutter is 0.375 in for 24–150 pages [S2]. Lulu's safety margin is 0.5 in [S20, S24].
- **PPI/DPI:** image resolution. Use 300 minimum and 600 maximum [S4, S20]. Krita recommends 600 PPI for line art [S23].
- **Low-content book:** a book with repetitive pages, such as a journal. **Coloring books are "Not Generally Low-Content"** on KDP [S3, S28], so they need an ISBN; KDP offers a free one [S3, S13].
- **AI-generated vs. AI-assisted (KDP):**
  - AI-generated means an AI tool created the content, "even if you applied substantial edits." **It must be disclosed.**
  - AI-assisted means you made it and AI only helped edit or brainstorm. **It doesn't need to be disclosed** [S1].
- **Expressive input (US Copyright Office):** your own drawing, fed into an AI tool, that stays visible in the output. That part can be protected [S16].
- **Selection, coordination, and arrangement:** how you choose and order the pages. This can be protected even when the individual AI images can't be [S10, S15, S16].
- **Two layers of public-domain rights:** the original artwork and the digital scan can carry different rights labels [S18].
- **Likelihood of confusion:** the main reason a trademark is refused. Marks don't need to be identical to conflict [S21].

## 3. Key principles
**P1. Every page needs a clear rights basis.**
- KDP: you're responsible for copyright, trademark, and other rights, and KDP won't accept freely available web content unless it comes from the owner [S1].
- Etsy: items must be "made, designed, handpicked or sourced by you" [S11].
- **Strength: Strong.**

**P2. Pages made only by an AI prompt can't be copyrighted, and they must be disclosed.**
- USCO: "prompts do not alone provide sufficient control." Re-rolling prompts and picking the best output doesn't count as authorship [S15, S16].
- Protection comes from:
  - your own drawing, if it remains visible in the output;
  - substantial human modification;
  - creative selection and arrangement, as in the Zarya of the Dawn decision, where the AI images themselves were excluded [S10, S16].
- **Disclosure applies in three separate places:**
  - **KDP:** AI-generated interior and cover art must be declared [S1].
  - **Etsy:** say so in the listing description, and add your own creative input [S11].
  - **Copyright registration:** exclude the AI material [S15].
- **Strength: Strong.**

**P3. Public domain needs proof, not assumptions.**
- In the US, works published before January 1, 1931 are public domain [S22]. LOC's rule of thumb: published year + 100 − 4 [S19].
- "No known restrictions" doesn't mean public domain [S19]. A download button isn't a clearance [S19].
- Check both rights labels (the original artwork and the scan), and check the country [S18].
- KDP rejects plain public-domain copies when free versions exist. An "(Illustrated)" edition needs 10 or more original illustrations [S1].
- **Strength: Strong.**

**P4. Design for coloring, not for the screen.**
- **Lines:** at least 0.75 pt [S4]. Keep line weights consistent and leave open space [S14, S27].
- **Audience:**
  - young kids: thick outlines and simple shapes;
  - adults: intricate patterns [S14, S17].
- **Bleed-through:** single-sided pages are the only sure way to prevent it, but they double the page count [S14, S30].
- **Strength: Moderate–Strong.**

**P5. Get the print files exactly right.**
- Interior: one PDF of single pages (no spreads), 300 DPI, flattened, fonts embedded, no crop marks [S4, S20, S24].
- Cover: one PDF containing back, spine, and front [S9, S20].
- Size the cover after the page count and paper are final [S5, S9].
- **Strength: Strong.**

**P6. Price for the royalty threshold.**
- KDP pays 60% at list prices of $9.99 and up, 50% at $9.98 and below, and 40% through Expanded Distribution, minus printing [S8].
- Printing an 8.5×11 black-ink book with 24–110 pages costs $2.84 [S7].
- **Strength: Strong (Documented).**

**P7. Metadata must be honest and clean.**
- Title plus subtitle must be under 200 characters, with no keyword stuffing or trademarks [S13].
- No URLs or reviews in the description. Choose up to 3 categories. Covers must not copy another book's look [S13].
- **Strength: Strong.**

**P8. Proof before selling.** Order a proof copy and actually color it [S6, S14, S20, S27]. **Strength: Strong (consensus).**

**P9. Niche plus quality beats volume.**
- Mass-produced low-content books now fail [S28].
- Research demand first [S17]. The market is saturated [S29].
- **Strength: Moderate (Reported).**

## 4. Step-by-step method
1. **Choose a niche and audience.**
   - Kids or adults; pick one clear theme [S14].
   - Research demand: Amazon autosuggest and competitors' sales ranks [S17].
   - Plan 16–50 illustrations; 50 is common [S17, S27].
2. **Decide how you'll make the art,** and record its rights basis for each page:
   - **Draw it yourself:** sketch, ink, scan, then clean up [S14, S27]. In Krita, work at 600 PPI with slightly aliased brushes [S23].
   - **Hire an illustrator.** Get a written rights agreement (general practice, not from the sources).
   - **Public domain:** trace or redraw from cleared items. Keep each item's URL, its rights labels, and a credit line [S18, S19, S26].
   - **AI:** disclose it on every platform [S1, S11]. Human redrawing or creative arrangement is needed for any copyright [S16]. Never imitate a living artist's style or a copyrighted work [S29].
3. **Check names.** Search the USPTO for your title, series, and character names, including similar wording on related goods [S21]. Don't use trademarked characters [S13].
4. **Set up the interior** (8.5×11 example on KDP):
   - PDF page size is 8.625 × 11.25 in if art bleeds; otherwise 8.5 × 11 in [S2].
   - Keep line art at least 0.375 in from the outside edges and the gutter [S2].
   - One illustration per right-hand page, with the back of each page left blank [S24, S30]. Watch KDP's "excessive blank pages" rejection reason [S4].
   - Include a title page and copyright page; public-domain credits go on the copyright page [S19].
5. **Make the cover.**
   - Use the KDP calculator template [S5, S9]. Use one strong image, not reused interior art, and a big readable title [S17].
   - Example: a 100-page book on white paper has a 0.2252 in spine. The full cover is 17.4752 × 11.25 in [S4, S9].
   - Add spine text only if the book has 80 or more pages [S9].
6. **Choose paper, ink, and binding.**
   - **KDP:** black ink on white paper is cheapest for line art; groundwood is about 5% cheaper [S6]. Ink type can't be changed after publishing [S6].
   - **Lulu:** offers coil binding (lies flat) and paper choices [S30].
7. **Upload and fill in the metadata.**
   - Title and subtitle [S13]; an honest description; 7 keywords of 2–3 words each; 3 categories; a reading age for kids' books [S13].
   - Answer the AI question truthfully [S1].
   - Don't tick "low-content" [S3].
8. **Price it.**
   - Example at $9.99: 0.60 × 9.99 − 2.84 = **$3.15 per sale**.
   - At $7.99: **$1.16**.
   - Through Expanded Distribution at $9.99: **$1.16** [S7, S8] (Inferred arithmetic).
9. **Proof and color-test it,** then publish [S14, S27].
10. **Optional: sell a digital version on Etsy.**
    - PDF or PNG files, up to 5 per listing at 20 MB each. File names can't be changed after upload [S12].
    - Put the AI disclosure in the description. Disclose any print partner [S11].
    - Decide whether to opt out of Etsy's "buyer prints" program [S25].
11. **Market it:** Pinterest, Instagram, or TikTok; a free sample page in exchange for email sign-ups; Amazon Ads; local library events [S17]. Instagram ads beat Google ads in one case study [S27].

## 5. Examples and models worth copying
- **IngramSpark case study:** 50 designs, single-sided pages, print-test several papers, mark up proofs with a red pen, and digitally color every design to reveal flaws. The colored versions also sold as art prints [S27].
- **KDP 100-page 8.5×11 math example:** spine 0.2252 in; cover 17.4752 × 11.25 in; print cost $2.84 [S4, S7, S9].
- **USCO-style claim wording for mixed books:** "Selection, coordination, and arrangement of [human-authored content] created by the author and [AI content] generated by artificial intelligence" [S15].
- **Credit line format:** "[collection], Prints & Photographs Division, Library of Congress, [reproduction number]" [S19].
- **Lulu photo-to-line-art:** converted line art always needs cleanup [S14].

## 6. Common mistakes and how to avoid them
1. Ticking "low-content" for a coloring book. Coloring books aren't low-content [S3].
2. Not disclosing AI art, even after editing it by hand [S1, S11]. Risks include listing removal and cancelled copyright registration [S10, S15].
3. Assuming "free to use" means cleared, or using items that are public domain in the US only for worldwide sales [S18, S19].
4. Trademarked characters or brand words in the title or keywords [S13, S21].
5. Lines that are too thin or anti-aliased (fuzzy) lines. Use at least 0.75 pt and slightly aliased brushes [S4, S23].
6. Images under 300 DPI, layers left unflattened, crop marks, or spreads instead of single pages [S4, S9, S24].
7. Spine text on books under 79–80 pages [S9, S20].
8. Pricing at $9.98 or below on KDP, which drops the rate to 50% [S8].
9. Skipping the proof copy [S6, S14, S20].
10. Double-sided pages with markers, which causes bleed-through [S14, S30].
11. Copying PDIA's titles or tags into listings. That metadata is CC BY-NC [S18].
12. Selling AI prompt bundles or AI-written instructions on Etsy. Both are banned [S11].

## 7. Which source is best for what
| Need | Source |
|---|---|
| KDP rules, AI disclosure, public domain | S1, S3, S13 |
| KDP specs (trim, bleed, margins, files) | S2, S4, S6, S9, S5 |
| KDP cost and royalty | S7, S8 |
| Lulu specs and options | S20, S24, S30, S14 |
| Copyright and AI | S15, S16, S10 |
| Copyright duration and public domain dates | S22, S19 |
| Public-domain art sources | S18, S19, S26 |
| Etsy rules and digital listings | S11, S12, S25 |
| Trademark checks | S21 |
| Drawing tool | S23 (Krita; no PDF export, so use Scribus) |
| How-to, niches, marketing | S17, S27, S28, S14 |
| AI ethics | S29 |

## 8. Evidence strength (main conclusions)
| Conclusion | Strength | Sources |
|---|---|---|
| Coloring books aren't low-content on KDP | Strong | S3, S28 |
| AI-generated art must be disclosed on KDP and Etsy | Strong | S1, S11 |
| Prompt-only AI pages aren't copyrightable | Strong | S15, S16, S10, S29 |
| Human drawings, edits, and arrangement can be protected | Strong | S15, S16, S10 |
| US works published before 1931 are public domain | Strong | S22, S19 |
| "Free to use" labels aren't clearance | Strong | S18, S19, S26 |
| 300–600 DPI, single-page PDF, 0.125 in bleed | Strong | S4, S20, S24, S2 |
| Single-sided pages prevent bleed-through | Moderate | S14, S27, S30 |
| Royalty 60% at $9.99+, 50% below, 40% Expanded Distribution | Strong | S8 |
| Uncoated vs. coated paper is best | Contested | S14 vs. S30, S20 |
| Minimum page count (KDP 24 vs. Lulu 32) | Platform-specific | S2, S4, S20, S17 |

## 9. Where sources disagree
- **Paper:** Lulu's blog says uncoated paper is "a necessity" [S14]. Lulu's product page also recommends 80# coated [S30], and its guide pairs coated paper with premium black-and-white ink for grayscale [S20].
- **Minimum pages:** KDP's minimum is 24 [S2, S4]. Lulu paperback's is 32 (24 for hardcover) [S20]. Kindlepreneur says 24 in general [S17].
- **Spine text:** KDP says both "at least 79" and "more than 79" pages; Cover Creator needs 80 [S9]. Lulu allows spine text only above 80 pages [S20].
- **Cover safety margin (Lulu):** 0.5 in [S20] vs. 0.25 in [S24].
- **Does trim size affect cost? (KDP):** the royalty page says no [S8], but the cost tables charge more for large trims [S7]. The tables win.
- **Expanded Distribution:** Kindlepreneur says 40% [S28]. That rate is real [S8], but low-content books can't use Expanded Distribution [S3]. Coloring books can, because they aren't low-content.
- **AI disclosure:** ALLi says authors aren't legally required to disclose [S29]. Platforms require it anyway [S1, S11].

## 10. Gaps
- Exact cover dimensions require running the interactive KDP calculator [S5].
- Etsy's full Creativity Standards and IP policy pages were blocked. Only the help summary was read [S11].
- Trademark classes for coloring books weren't covered (the USPTO ID Manual wasn't read) [S21].
- No source defines "excessive blank pages" for single-sided books [S4].
- KDP's weekly title limits aren't stated on the pages read [S4].
- IngramSpark's own specs and fees weren't in the set; only a case study [S27].
- Non-US public domain and sales tax/VAT were barely covered [S18, S19].
- No source covers hiring illustrators or work-for-hire contracts.
- Market-size data is second-hand [S14].

## 11. How to apply this when writing prompts on this topic
Any prompt that helps create, format, list, or sell a coloring book should build in these rules:
1. **Ask first.** Ask about the audience (kids or adults), theme, platform (KDP, Lulu, IngramSpark, or Etsy), trim size, art source (self-drawn, hired, public domain, or AI), and page count.
2. **Run a rights check for every page.** Record its source (own, public domain with item URL and both labels, AI, or hired). Refuse trademarked characters and living artists' styles. Check titles against the USPTO [S1, S18, S21, S29].
3. **Build in AI disclosure.** If any art is AI-generated, remind the user to answer KDP's AI question "yes" [S1] and to state AI use in Etsy listing descriptions [S11]. Explain that prompt-only pages aren't copyrightable and how human redrawing changes that [S15, S16].
4. **Spec block.** Include the exact platform specs: trim, bleed, margins and gutter, 300–600 DPI, lines at least 0.75 pt, single-page PDF, flattened, fonts embedded, no crop marks, cover as one PDF sized from the final page count [S2, S4, S9, S20, S24].
5. **Line-art rules for AI image prompts.** Specify black-and-white line art only, no shading or gray fills, closed shapes, consistent line weight, and open space matched to the audience. Generate at or upscale to 300–600 PPI at final size, then clean up by hand [S4, S14, S23].
6. **Layout choice.** Ask single-sided or double-sided, and explain the trade-off: bleed-through vs. page count and cost [S14, S30].
7. **Metadata rules.** No keyword-stuffed titles; under 200 characters; no trademarks, "bestselling," or "free"; no URLs or reviews in descriptions; up to 3 categories; reading age for kids' books; don't tick low-content [S3, S13].
8. **Pricing math.** Show the royalty at the chosen price with the platform formula, and flag the $9.99 threshold [S7, S8].
9. **Proof step.** Always end with "order a proof copy and color-test it" [S14, S20].
10. **Date and verify.** Say "specs and prices as of <month year>; verify on the platform's help pages." Specs differ by platform (KDP vs. Lulu), so never mix them.
11. **Label evidence and name disagreements** (paper type, page minimums).
