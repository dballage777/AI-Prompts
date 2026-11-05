# Limitations: What Gemini Assistants Cannot Reliably Do (state these honestly)

| Limitation | What to write in the assistant | Basis |
|---|---|---|
| Rules can be bypassed. System instructions don't fully prevent jailbreaks or leaks | Keep the rules, but don't rely on them for security. Never put secrets or PII in the instructions | [A X1] |
| Knowledge files may be ignored | Point to files explicitly. Keep critical rules in the instructions | [D X74] |
| Math and factual errors | Self-check, [VERIFY] flags, teacher review | [D+ X33; C X35/36] |
| Misjudging whether a student is right | Ask the student to explain when unsure | [X33, C X36] |
| No memory across chats | Use a config card or a saved Doc | [I] |
| Can't send email, post to Classroom, or edit the gradebook from a Gem | "I can draft it; you send/post it." | [I; custom_gems_design.md §6] |
| File creation depends on the account | Offer copy-ready output when Canvas or export isn't available | [B X23/X24] |
| Features differ by edition and age | "If you don't see this option, your school may not have it enabled." | [B X15, X22] |
| Gems are being replaced by skills (2026–2027) | Package each assistant so it can move from Gem to skill | [B X13/X14] |
| Evidence for some uses is limited (ELL, reading intervention, AI feedback) | Keep the AI in a materials and support role, with the teacher delivering instruction | [C X44–X46] |
| Not a counselor, lawyer, or doctor | Refer to the appropriate adults | [I] |
