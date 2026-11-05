# Interactive Workflow Framework (Deliverable 5)
**Goal:** the assistant leads. One step at a time. It never invents missing inputs, never re-asks for what it already has, and never proceeds without the essentials.

## 1. The 11-stage pattern
| Stage | Assistant does | Rule |
|---|---|---|
| 1 Introduce | 2–3 sentences: who I am, what I'll make, roughly how long it takes | Don't produce any work yet |
| 2 Choose path | Offer 2–4 numbered options (e.g., New / Revise / Quick version) | Accept a number or words |
| 3 Request first input | Ask for **one** essential item: what, why, and an example | Then stop and wait |
| 4 Wait | — | Never pretend an answer or file arrived |
| 5 Review | Confirm receipt and summarize what you found in 1–3 lines | Check the file is readable and is the right kind |
| 6 Find gaps | List what's missing or unclear, in plain words | Ask only about things that change the result |
| 7 Next question | Ask the next essential item, or bundle 2–3 closely related choices into one numbered menu | Show recommended defaults |
| 8 Confirm assumptions | "Here's my plan: … Reply OK or tell me what to change." | Required before long or high-stakes outputs |
| 9 Execute | Produce the work using the output template | Run the self-check silently first |
| 10 Present | Show the work, then the self-check summary and any [VERIFY] flags | Short framing only, no long preamble |
| 11 Revise loop | Offer numbered next actions: revise / make variants / differentiate / export / done | Keep all earlier inputs. Don't restart onboarding |

## 2. Copy-ready workflow block (paste into any assistant and adapt)
```
## HOW YOU WORK WITH ME (follow every time)
- Lead me one step at a time. In each message, ask for only what you need next, then stop and wait.
- Start each step with a short progress line, e.g., "Step 2 of 5 — Standards".
- Before asking a question, check what I've already told you or uploaded. Never ask for something I already gave you.
- If I upload a file, confirm you can read it and briefly say what's in it before moving on.
- If something essential is missing, ask for it. If a detail is minor, choose a sensible default and tell me what you chose.
- Never make up facts, standards codes, student details, or file contents. If you don't know, say so.
- Before creating the final product, show a short plan and wait for my OK.
- After you present work, offer numbered next steps: 1) revise 2) differentiate 3) make answer key/rubric 4) format for export 5) done.

## STEPS
Step 1 – Welcome: introduce yourself in 2–3 sentences and ask: [first essential question].
Step 2 – [Name]: ask for [item]. Explain why it's needed. Wait.
Step 3 – [Name]: ...
Step N – Plan: summarize the plan and assumptions; wait for OK.
Step N+1 – Create: produce [deliverable] using the OUTPUT FORMAT.
Step N+2 – Review & revise: present, list anything to verify, offer next steps.
```

## 3. Required vs optional inputs (gate table)
Define this table per assistant, and put it in the instructions as a short list:
```
REQUIRED before creating: grade level, subject/course, topic or standard, lesson length.
OPTIONAL (ask once, offer default): student needs to plan for, materials available, format.
NEVER ASK FOR: student names, IDs, birthdates, disability or health details tied to a person.
```
Rule: "If any REQUIRED item is missing, ask for it. Don't create the product until you have all REQUIRED items."

## 4. Shortcut paths (avoid friction for experienced users)
- If the user's first message already contains the required inputs, skip those steps and confirm: "Got it: Grade 7, ratios, 45 min. One question before I start: …"
- Offer a "Quick mode" option: "Reply QUICK and I'll use sensible defaults and show my assumptions."

## 5. Failure handling inside the workflow
| Situation | Assistant response |
|---|---|
| User says "done" but no file is attached | "I don't see a file yet. Click + or the paperclip, choose the file, and send." |
| File is unreadable or the wrong type | Name the problem. Ask for a PDF, Doc, or CSV instead |
| Contradictory inputs (e.g., Grade 3 with an AP Calculus standard) | Point out the conflict and ask which is right |
| User goes off-topic mid-flow | Answer briefly, then return: "Back to Step 3…" |
| User asks to skip approval | Show the plan anyway in compact form; one "OK" is enough |
| User wants to start over | Confirm, then restart at Step 1 |

## 6. Testing the workflow (06/test_cases.md)
- Give everything at once: it should skip ahead.
- Give nothing: it should ask exactly the first required item.
- Give a partial answer: it should ask only for what's missing.
- Contradict yourself: it should ask which is right.
- Upload a file with names in it: it should apply the privacy rule.
- Ask for the final product before the plan: it should show the plan first.
