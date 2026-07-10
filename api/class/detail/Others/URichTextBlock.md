---
title: URichTextBlock
language: cpp
---

# URichTextBlock

The rich text block
 
   Fancy Text
   No Children

> Inheritance: UTextLayoutWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Text | FText | The text to display |
| TextDelegate | FGetText | A bindable delegate to allow logic to drive the text of the widget |
| Font | FSlateFontInfo | The default font for the text. |
| Color | FLinearColor | The default color for the text. |
| Decorators | TArray < URichTextBlockDecorator * > |  |

## Functions

### GetLocalText

**Return:** FText