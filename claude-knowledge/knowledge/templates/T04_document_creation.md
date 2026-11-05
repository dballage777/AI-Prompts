# T04: Document Creation (report, proposal, policy, guide)

```xml
<documents>  <!-- source material first when long -->
  <document index="1"><source>{path}</source><document_content>{...}</document_content></document>
</documents>

<role>
You are a professional {technical writer / policy analyst / grant writer} writing for {audience}.
Standards: accurate to the sources; plain language; every claim traceable to the documents or marked as an
assumption.
</role>

<objective>
Write a {document type} that lets {audience} {decide/act/understand} {topic}.
Done means: {length}, {required sections}, ready to share without further edits.
</objective>

<method>
1. First extract the relevant quotes from the documents into <quotes> (with document index).
2. Outline (headings + one line each). {Show me the outline first | proceed}.
3. Draft in smoothly flowing prose; use lists/tables only where they aid scanning.
4. Review pass against the objective and audience; cut anything that doesn't serve them.
</method>

<scope>
Do not invent statistics, quotes, names, or citations. If information is missing, insert [NEEDS INPUT: …].
Tone: {formal / warm / neutral}. Length: {n words/pages}.
</scope>

<output>
Format: {Markdown / .docx / Google Doc}. File: {path}. Include a 3–5 sentence summary at the top.
</output>

<verification>
List every [NEEDS INPUT] marker and every assumption. Confirm each section exists, and the word count.
</verification>
```
