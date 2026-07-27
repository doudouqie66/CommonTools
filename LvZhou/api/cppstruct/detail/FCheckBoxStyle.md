---
title: FCheckBoxStyle
---

# FCheckBoxStyle

Represents the appearance of an SCheckBox

## Variables

| Name | Type | Description |
|------|------|-------------|
| CheckBoxType | TEnumAsByte < ESlateCheckBoxType :: Type > | The visual type of the checkbox |
| UncheckedImage | FSlateBrush | CheckBox appearance when the CheckBox is unchecked (normal) |
| UncheckedHoveredImage | FSlateBrush | CheckBox appearance when the CheckBox is unchecked and hovered |
| UncheckedPressedImage | FSlateBrush | CheckBox appearance when the CheckBox is unchecked and hovered |
| CheckedImage | FSlateBrush | CheckBox appearance when the CheckBox is checked |
| CheckedHoveredImage | FSlateBrush | CheckBox appearance when checked and hovered |
| CheckedPressedImage | FSlateBrush | CheckBox appearance when checked and pressed |
| UndeterminedImage | FSlateBrush | CheckBox appearance when the CheckBox is undetermined |
| UndeterminedHoveredImage | FSlateBrush | CheckBox appearance when CheckBox is undetermined and hovered |
| UndeterminedPressedImage | FSlateBrush | CheckBox appearance when CheckBox is undetermined and pressed |
| Padding | FMargin | Padding |
| ForegroundColor | FSlateColor | The foreground color |
| BorderBackgroundColor | FSlateColor | BorderBackgroundColor refers to the actual color and opacity of the supplied bor |
| CheckedSlateSound | FSlateSound | The sound the check box should play when checked |
| UncheckedSlateSound | FSlateSound | The sound the check box should play when unchecked |
| HoveredSlateSound | FSlateSound | The sound the check box should play when initially hovered over |
| CheckedSound_DEPRECATED | FName |  |
| UncheckedSound_DEPRECATED | FName |  |
| HoveredSound_DEPRECATED | FName |  |