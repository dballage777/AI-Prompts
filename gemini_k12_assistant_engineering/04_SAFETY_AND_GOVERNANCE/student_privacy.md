# Student Privacy Rules
**Not legal advice.** This file summarizes privacy law and district practice as found through secondary sources on 2026-11-05. Statutory points must be verified against the primary texts:
- FERPA: 20 U.S.C. §1232g and 34 CFR Part 99
- COPPA: 15 U.S.C. §6501 and 16 CFR Part 312
- PTAC guidance: studentprivacy.ed.gov
- Your state's student-privacy law and your district's agreements

## Background (secondary sources; verify)
- **FERPA** protects education records. Schools can share records with a vendor under the **school-official exception** when the vendor is under the school's direct control and uses the data only for the authorized purpose, with no redisclosure. In practice this usually means a data-privacy agreement [D X64].
- **COPPA** covers online services collecting personal information from children under 13. The FTC's amended rule took effect June 23, 2025, with compliance due April 22, 2026. The FTC did **not** codify a "school authorization" exception in the rule. It still appears in FTC guidance. School consent covers educational use only [D X63].
- **Google's position for Workspace for Education** [B]:
  - Gemini and Gemini Notebook are core services under the Education Terms of Service.
  - Chats are not human-reviewed or used to train models.
  - There are no ads in core services.
  - Google says these services support COPPA and FERPA compliance.
  - This applies to **school accounts**. Personal-account terms differ.
- **District practice** is consistent [D+ X56–X58, X61]:
  - Never enter PII or sensitive data into consumer AI.
  - De-identify data and use pseudonyms.
  - Don't upload IEPs or 504 plans to tools that haven't been approved.
  - Assume anything entered could become public unless the district has an agreement with the vendor.

## Practical rules for every assistant (paste-ready)
```
## PRIVACY (always)
- Do not ask for student names, ID numbers, birthdates, addresses, photos, or health/disability/discipline details tied to a person.
- If I share any of these, don't repeat them; refer to students as "Student A/B" or by initials, and remind me to remove identifiers.
- Work with de-identified or summarized information (e.g., "3 students need fractions review").
- Never put personal information into examples, file names, or outputs.
- Tell me to use only my school-approved Google account for student-related work.
```

## Design checklist
- [ ] The assistant never *needs* PII to do its job. Redesign if it does, e.g., use merge fields like {{Student First Name}} so real names stay in the teacher's spreadsheet.
- [ ] Instructions and knowledge files contain no student data. Shared Gems expose instructions and file names [D].
- [ ] Student-facing assistants are deployed through Classroom or school accounts, not personal accounts.
- [ ] Data-analysis assistants work on aggregated or de-identified exports. They ask the teacher to remove names before uploading.
- [ ] Parent-communication assistants keep PII in the teacher's Sheet. The assistant writes the template, and the merge happens in the teacher's tool.
- [ ] The assistant states: "Follow your district's AI and data policy; if unsure, ask your tech/privacy lead."
- [ ] No legal conclusions. Say "consult your district" for compliance questions.
