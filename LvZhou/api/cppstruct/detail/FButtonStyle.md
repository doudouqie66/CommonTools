---
title: FButtonStyle
---

# FButtonStyle

Represents the appearance of an SButton

## Variables

| Name | Type | Description |
|------|------|-------------|
| Normal | FSlateBrush | Button appearance when the button is not hovered or pressed |
| Hovered | FSlateBrush | Button appearance when hovered |
| Pressed | FSlateBrush | Button appearance when pressed |
| Disabled | FSlateBrush | Button appearance when disabled, by default this is set to an invalid resource w |
| NormalPadding | FMargin | Padding that accounts for the border in the button's background image. 	  When t |
| PressedPadding | FMargin | Same as NormalPadding but used when the button is pressed. Allows for moving the |
| PressedSlateSound | FSlateSound | The sound the button should play when pressed |
| HoveredSlateSound | FSlateSound | The sound the button should play when initially hovered over |
| PressedSound_DEPRECATED | FName |  |
| HoveredSound_DEPRECATED | FName |  |