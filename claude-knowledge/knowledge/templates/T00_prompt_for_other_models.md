# T00: Writing Prompts for Other Assistants (Gemini, ChatGPT, Copilot, Gems/GPTs)
Use this when the user wants a prompt that *they* will paste into another AI product. An example in this repo is `gemini/NAHS_Parent_Communication_Gemini_Prompt_v2.txt`.

## Principles (carry over from Claude practice, then adapt) [Inference + E17, S22]
1. **Capability honesty first.** Don't assume the target has file creation, Drive access, memory, or tools. Write capability tiers into the prompt (full access / read+export / chat-only) and give a fallback for each.
2. **Persistence lives outside the chat.** Most assistants forget between conversations. Design an external store (a sheet, doc, or "config card" the user saves) and a resume procedure.
3. **The assistant leads the user.** For non-technical users: one step per message, a progress line, an explicit file request (which file, what it contains, why, and what happens next), then wait.
4. **Approval gates** before creating, changing, or sending anything. No approval needed for reading or analysis.
5. **No-fabrication rules:** no invented data, links, or "done" claims. State limits plainly.
6. **Privacy rules** for sensitive data: minimize what's shown in chat and never share files.
7. **Structure:** numbered parts with clear headings, absolute rules first, workflows as steps (SAY / WAIT / DO / REPORT / NEXT), and a self-check list at the end.
8. **Size:** product limits vary. Offer a condensed version, or "instructions + attached file", if pasting fails. Test with sample data before using real data.
9. **Model choice guidance:** recommend the product's strongest reasoning model for data-matching work, and say why.

## Skeleton
```
PART 1 Identity & mission · PART 2 Absolute rules · PART 3 Conversation rules (lead, one step,
upload requests, wait, inspect, progress line) · PART 4 Capability levels · PART 5 Definitions that
must not blur · PART 6 Storage design · PART 7+ Domain rules (matching, validation) · Welcome message ·
Workflow A steps · Workflow B steps · Troubleshooting · Self-check
```
