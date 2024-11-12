# Markdown Style Guide

## Document Structure

### Headers

- Use ATX-style headers (`#` for h1, `##` for h2, etc.)
- Maximum one H1 per document
- Headers must have one blank line before and after
- No skipping header levels
- Must start at beginning of line
- Must have space after hash
- No duplicate headers

### Lists

- Use `-` for unordered lists
- Use `1.` for ordered lists
- Indent nested lists with 2 spaces
- One blank line before and after lists
- No blank lines between list items
- Space after list markers

### Code Blocks

```markdown
# Fenced code blocks
```codetype
code here
```

## Inline code

Use `inline code` for commands or code references

### Links & References

- Internal: `[[file-name]]`
- With alias: `[[file-name|display text]]`
- External: `[text](url)`
- Reference style: `[text][ref]` with `[ref]: url`

### Images

- With alt text: `![alt text](image.png)`
- With title: `![alt text](image.png "title")`
- Reference style: `![alt text][img]` with `[img]: image.png`

### Tables

```markdown
| Header 1 | Header 2 |
|----------|----------|
| Cell 1   | Cell 2   |
```

### Blockquotes

```markdown
> Single line quote

> Multi-line quote
> continues here
```

### Emphasis

- *Italic*: `*text*` or `_text_`
- **Bold**: `**text**` or `__text__`
- ***Bold Italic***: `***text***`
- ~~Strikethrough~~: `~~text~~`

## Best Practices

> [!tip] Writing Tips
>
> - Use consistent formatting throughout
> - Keep lines under 120 characters
> - Use reference links for repeated URLs
> - Include alt text for images
> - Use semantic line breaks

## File Organization

- Use descriptive filenames in kebab-case
- Group related files in directories
- Include README.md in each directory
- Use consistent frontmatter
- Maintain a logical hierarchy

## Common Patterns

### Task Lists

```markdown
- [ ] Unchecked task
- [x] Completed task
  - [ ] Nested task
```

### Definition Lists

```markdown
Term
: Definition
```

### Footnotes

```markdown
Text with a footnote[^1]

[^1]: Footnote content
```

## Related Documentation

- [[DevOps/Markdown/Guides/Markdownlint-Rules]]
- [[DevOps/Markdown/Guides/Advanced-Formatting]]
- [[DevOps/Markdown/Guides/Frontmatter-Guide]]

---

## Markdownlint Rules

## Overview

This document provides a comprehensive reference for all markdownlint rules, following the official documentation structure. Each rule includes its description, configuration options, and examples of correct and incorrect usage.

## Rules

### MD001 - heading-increment

> Headings should only increment by one level at a time

This rule is triggered when you skip heading levels, like going from `h1` to `h3`.

✅ Correct:

```markdown
# h1
## h2
### h3
```

❌ Incorrect:

```markdown
# h1
### h3 (skipped h2)
```

### MD002 - first-heading-h1/first-header-h1

> First heading should be a top-level heading

Configuration:

```json
{
  "MD002": {
    "level": 1
  }
}
```

✅ Correct:

```markdown
# Title
## Section
```

❌ Incorrect:

```markdown
## Section
### Subsection
```

### MD003 - heading-style/header-style

> Headings should use consistent style

Configuration:

```json
{
  "MD003": {
    "style": "consistent"
  }
}
```

Options:

- `consistent` - match first heading
- `atx` - # style
- `atx_closed` - #... # style
- `setext` - underline style
- `setext_with_atx` - setext for h1/h2, atx for others

✅ Correct (atx):

```markdown
# Heading 1
## Heading 2
### Heading 3
```

❌ Incorrect (mixed):

```markdown
# Heading 1
Heading 2
---------
### Heading 3
```

### MD004 - ul-style

> Unordered list style should be consistent

Configuration:

```json
{
  "MD004": {
    "style": "consistent"
  }
}
```

Options:

- `consistent` - match first list
- `asterisk` - *
- `plus` - +
- `dash` - -
- `sublist` - different marker for sublists

✅ Correct:

```markdown
- First
  - Nested
    - Deep nested
- Second
```

❌ Incorrect:

```markdown
* First
  + Nested
    - Mixed
```

### MD005 - list-indent

> Inconsistent indentation for list items at the same level

✅ Correct:

```markdown
* Item 1
  * Nested Item
  * Nested Item
* Item 2
```

❌ Incorrect:

```markdown
* Item 1
  * Nested Item
   * Wrong indent
* Item 2
```

### MD006 - ul-start-left

> Lists must start at the beginning of the line

✅ Correct:

```markdown
- First item
  - Nested item
```

❌ Incorrect:

```markdown
  - Indented first item
    - Nested item
```

### MD007 - ul-indent

> Unordered list indentation

Configuration:

```json
{
  "MD007": {
    "indent": 2,
    "start_indented": false,
    "start_indent": 2
  }
}
```

✅ Correct:

```markdown
- First item
  - Nested item
    - Deep nested
```

❌ Incorrect:

```markdown
- First item
   - Over-indented
  - Inconsistent indent
```

### MD009 - no-trailing-spaces

> No trailing spaces

Configuration:

```json
{
  "MD009": {
    "br_spaces": 2,
    "list_item_empty_lines": false,
    "strict": false
  }
}
```

✅ Correct:

```markdown
Line without trailing space
Line with two spaces for break  
Next line
```

❌ Incorrect:

```markdown
Line with trailing space    
```

### MD010 - no-hard-tabs

> No hard tabs

✅ Correct:

```markdown
- Item
  - Nested (spaces)
```

❌ Incorrect:

```markdown
- Item
 - Nested (tab)
```

### MD011 - no-reversed-links

> No reversed link syntax

✅ Correct:

```markdown
[text](url)
```

❌ Incorrect:

```markdown
(text)[url]
```

### MD012 - no-multiple-blanks

> Multiple consecutive blank lines

Configuration:

```json
{
  "MD012": {
    "maximum": 1
  }
}
```

✅ Correct:

```markdown
Paragraph 1

Paragraph 2
```

❌ Incorrect:

```markdown
Paragraph 1


Paragraph 2
```

### MD013 - line-length

> Line length

Configuration:

```json
{
  "MD013": {
    "line_length": 80,
    "heading_line_length": 80,
    "code_block_line_length": 80,
    "code_blocks": true,
    "tables": true,
    "headings": true,
    "strict": false,
    "stern": false
  }
}
```

### MD014 - commands-show-output

> Dollar signs used before commands without showing output

✅ Correct:

```markdown
$ ls
file1 file2

$ cat file1
Hello
```

❌ Incorrect:

```markdown
ls
cat file1
```

### MD018 - no-missing-space-atx

> No space after hash on atx style heading

✅ Correct:

```markdown
# Heading
```

❌ Incorrect:

```markdown
#Heading
```

### MD019 - no-multiple-space-atx

> Multiple spaces after hash on atx style heading

✅ Correct:

```markdown
# Heading
```

❌ Incorrect:

```markdown
#  Heading
```

### MD020 - no-missing-space-closed-atx

> No space inside hashes on closed atx style heading

✅ Correct:

```markdown
# Heading #
## Heading ##
```

❌ Incorrect:

```markdown
#Heading#
##Heading##
```

### MD021 - no-multiple-space-closed-atx

> Multiple spaces inside hashes on closed atx style heading

✅ Correct:

```markdown
# Heading #
## Heading ##
```

❌ Incorrect:

```markdown
#  Heading  #
##  Heading  ##
```

### MD022 - blanks-around-headings

> Headings should be surrounded by blank lines

Configuration:

```json
{
  "MD022": {
    "lines_above": 1,
    "lines_below": 1
  }
}
```

✅ Correct:

```markdown
# Heading 1

Some text

## Heading 2

More text
```

❌ Incorrect:

```markdown
# Heading 1
Some text
## Heading 2
More text
```

### MD023 - heading-start-left

> Headings must start at the beginning of the line

✅ Correct:

```markdown
# Heading
## Subheading
```

❌ Incorrect:

```markdown
   # Heading
  ## Subheading
```

### MD024 - no-duplicate-heading

> Multiple headings with the same content

Configuration:

```json
{
  "MD024": {
    "siblings_only": true,
    "allow_different_nesting": true
  }
}
```

✅ Correct:

```markdown
# Heading
## Subheading
### Heading (allowed at different level)
## Different Subheading

# Another Section
## Heading (allowed in different section)
```

❌ Incorrect:

```markdown
# Heading
## Subheading
## Subheading (duplicate)
```

### MD025 - single-title/single-h1

> Multiple top-level headings in the same document

Configuration:

```json
{
  "MD025": {
    "front_matter_title": "^\\s*title\\s*[:=]",
    "level": 1
  }
}
```

✅ Correct:

```markdown
---
title: Document Title
---

# Main Heading

## Section 1
```

❌ Incorrect:

```markdown
# First Title
# Second Title
```

### MD026 - no-trailing-punctuation

> Trailing punctuation in heading

Configuration:

```json
{
  "MD026": {
    "punctuation": ".,;:!。，；：！"
  }
}
```

✅ Correct:

```markdown
# This is a heading
# What about questions?
# "Quotes are allowed"
```

❌ Incorrect:

```markdown
# This is a heading.
# What about questions!
# Watch out for semicolons;
```

### MD027 - no-multiple-space-blockquote

> Multiple spaces after blockquote symbol

✅ Correct:

```markdown
> This is a blockquote
> Continued here
```

❌ Incorrect:

```markdown
>  This has too many spaces
>   This too
```

### MD028 - no-blanks-blockquote

> Blank line inside blockquote

✅ Correct:

```markdown
> First paragraph
>
> Second paragraph
```

❌ Incorrect:

```markdown
> First paragraph

> Second paragraph
```

### MD029 - ordered-list-item-prefix

> Ordered list item prefix

Configuration:

```json
{
  "MD029": {
    "style": "ordered"
  }
}
```

Options:

- `ordered` - Numbers should be `1. 2. 3.`
- `one` - All numbers should be `1.`
- `zero` - All numbers should be `0.`
- `one_or_ordered` - Use `1.` or ordered `1. 2. 3.`

✅ Correct (ordered):

```markdown
1. First item
2. Second item
3. Third item
```

✅ Correct (one):

```markdown
1. First item
1. Second item
1. Third item
```

❌ Incorrect (mixed):

```markdown
1. First item
1. Second item
3. Third item
```

### MD030 - list-marker-space

> Space after list markers

Configuration:

```json
{
  "MD030": {
    "ul_single": 1,
    "ol_single": 1,
    "ul_multi": 1,
    "ol_multi": 1
  }
}
```

✅ Correct:

```markdown
* Single-line item
* Another item

1. First item
2. Second item
```

❌ Incorrect:

```markdown
*  Too many spaces
*   Also too many

1.  Too many spaces
2.   Also too many
```

### MD031 - blanks-around-fences

> Fenced code blocks should be surrounded by blank lines

✅ Correct:

```markdown
Text before.

```code
Code block
```

Text after.

❌ Incorrect:

```markdown
Text before.
```code
Code block
```

Text after.

### MD032 - blanks-around-lists

> Lists should be surrounded by blank lines

✅ Correct:

```markdown
Text before list.

- Item 1
- Item 2

Text after list.
```

❌ Incorrect:

```markdown
Text before list.
- Item 1
- Item 2
Text after list.
```

### MD033 - no-inline-html

> Inline HTML

Configuration:

```json
{
  "MD033": {
    "allowed_elements": []
  }
}
```

✅ Correct:

```markdown
Use *emphasis* or **strong**
```

❌ Incorrect:

```markdown
Use <em>emphasis</em> or <strong>strong</strong>
```

### MD034 - no-bare-urls

> Bare URLs are not allowed

✅ Correct:

```markdown
[https://example.com](https://example.com)
<https://example.com>
```

❌ Incorrect:

```markdown
https://example.com
```

### MD035 - hr-style

> Horizontal rule style

Configuration:

```json
{
  "MD035": {
    "style": "---"
  }
}
```

✅ Correct:

```markdown
---
```

❌ Incorrect:

```markdown
***
___
* * *
```

### MD036 - no-emphasis-as-heading

> Emphasis used instead of a heading

✅ Correct:

```markdown
## Section Title

**Not a heading, just emphasis**
```

❌ Incorrect:

```markdown
**This should be a heading**

Content here
```

### MD037 - no-space-in-emphasis

> No spaces inside emphasis markers

✅ Correct:

```markdown
This is **bold** text
This is _italic_ text
```

❌ Incorrect:

```markdown
This is ** bold ** text
This is _ italic _ text
```

### MD038 - no-space-in-code

> No spaces inside code span elements

✅ Correct:

```markdown
Use `code` here
```

❌ Incorrect:

```markdown
Use ` code ` here
```

### MD039 - no-space-in-links

> No spaces inside link text

✅ Correct:

```markdown
[link text](url)
```

❌ Incorrect:

```markdown
[link text ](url)
[ link text](url)
```

### MD040 - fenced-code-language

> Fenced code blocks should have a language specified

✅ Correct:

```javascript
const x = 1;
```

❌ Incorrect:

```javascript
const x = 1;
```

### MD041 - first-line-heading/first-line-h1

> First line in a file should be a top-level heading

Configuration:

```json
{
  "MD041": {
    "front_matter_title": "^\\s*title\\s*[:=]",
    "level": 1
  }
}
```

✅ Correct:

```markdown
# Title

Content starts here
```

❌ Incorrect:

```markdown
Content starts here

# Title appears later
```

### MD042 - no-empty-links

> No empty links

✅ Correct:

```markdown
[Link text](url)
[Link text][reference]
```

❌ Incorrect:

```markdown
[](url)
[Link text]()
```

### MD043 - required-headings/required-headers

> Required heading structure

Configuration:

```json
{
  "MD043": {
    "headings": ["# Title", "## Introduction", "## Details", "## Conclusion"]
  }
}
```

### MD044 - proper-names

> Proper names should have the correct capitalization

Configuration:

```json
{
  "MD044": {
    "names": ["JavaScript", "TypeScript", "GitHub"],
    "code_blocks": false
  }
}
```

✅ Correct:

```markdown
Using JavaScript and TypeScript
```

❌ Incorrect:

```markdown
Using javascript and typescript
```

### MD045 - no-alt-text

> Images should have alternate text

✅ Correct:

```markdown
![Alt text](image.jpg "Optional title")
```

❌ Incorrect:

```markdown
![](image.jpg)
```

### MD046 - code-block-style

> Code block style should be consistent

Configuration:

```json
{
  "MD046": {
    "style": "fenced"
  }
}
```

Options:

- `consistent`
- `fenced`
- `indented`

### MD047 - single-trailing-newline

> Files should end with a single newline character

✅ Correct:

```markdown
# Title

Content

```

❌ Incorrect:

```markdown
# Title

Content```

### MD048 - code-fence-style

> Code fence style should be consistent

Configuration:
```json
{
  "MD048": {
    "style": "backtick"
  }
}
```

Options:

- `consistent`
- `backtick`
- `tilde`

### MD049 - emphasis-style

> Emphasis style should be consistent

Configuration:

```json
{
  "MD049": {
    "style": "underscore"
  }
}
```

✅ Correct (underscore):

```markdown
This is _emphasized_ text
```

❌ Incorrect (mixed):

```markdown
This is _emphasized_ and *also emphasized*
```

### MD050 - strong-style

> Strong emphasis style should be consistent

Configuration:

```json
{
  "MD050": {
    "style": "asterisk"
  }
}
```

✅ Correct (asterisk):

```markdown
This is **strong** text
```

❌ Incorrect (mixed):

```markdown
This is **strong** and __also strong__
```

### MD051 - link-fragments

> Link fragments should be valid

✅ Correct:

```markdown
[text](#existing-heading)
```

❌ Incorrect:

```markdown
[text](#non-existent-heading)
```

### MD052 - reference-links-images

> Reference links and images should be defined

✅ Correct:

```markdown
[link][ref]

[ref]: https://example.com
```

❌ Incorrect:

```markdown
[link][ref]
```

### MD053 - link-image-reference-definitions

> Link and image reference definitions should be needed

✅ Correct:

```markdown
[link][ref]

[ref]: https://example.com
```

❌ Incorrect:

```markdown
[ref]: https://example.com
```

### MD054 - link-image-style

> Link and image style should be consistent

Configuration:

```json
{
  "MD054": {
    "style": "consistent"
  }
}
```

Options:

- `consistent`
- `inline`
- `reference`

### MD055 - table-pipe-style

> Table pipe style should be consistent

✅ Correct:

```markdown
| Header 1 | Header 2 |
|----------|----------|
| Cell 1   | Cell 2   |
```

❌ Incorrect:

```markdown
Header 1 | Header 2
-|-
Cell 1|Cell 2
```

### MD056 - table-column-count

> Table column count should be consistent

✅ Correct:

```markdown
| Header 1 | Header 2 |
|----------|----------|
| Cell 1   | Cell 2   |
| Cell 3   | Cell 4   |
```

❌ Incorrect:

```markdown
| Header 1 | Header 2 |
|----------|----------|
| Cell 1   |
| Cell 3   | Cell 4   | Extra |
```

### MD057 - table-pipe-alignment

> Table pipes should be properly aligned

✅ Correct:

```markdown
| Header 1 | Header 2 |
|----------|----------|
| Cell 1   | Cell 2   |
```

❌ Incorrect:

```markdown
|Header 1|Header 2|
|--|--|
|Cell 1|Cell 2|
```

### MD058 - table-spacing

> Table should have the right spacing

✅ Correct:

```markdown
| Header 1 | Header 2 |
| -------- | -------- |
| Cell 1   | Cell 2   |
```

❌ Incorrect:

```markdown
|Header 1|Header 2|
|--------|--------|
|Cell 1|Cell 2|
```

## Common Rule Combinations

### Documentation Style

```json
{
  "default": true,
  "MD013": false,
  "MD033": false,
  "MD041": false
}
```

### Strict Style

```json
{
  "default": true,
  "MD013": { "line_length": 80 },
  "MD033": true,
  "MD041": true,
  "MD046": { "style": "fenced" }
}
```

## Integration with Editors

### VS Code

1. Install the markdownlint extension
2. Create `.markdownlint.json` in project root
3. Configure workspace settings:

```json
{
  "markdownlint.config": {
    "extends": ".markdownlint.json"
  }
}
```
