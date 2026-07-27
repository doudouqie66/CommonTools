---
title: FAnimationEventBinding
---

# FAnimationEventBinding

Used to manage different animation event bindings that users want callbacks on.

## Variables

| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation * | The animation to look for. |
| Delegate | FWidgetAnimationDynamicEvent | The callback. |
| AnimationEvent | EWidgetAnimationEvent | The type of animation event. |
| UserTag | FName | A user tag used to only get callbacks for specific runs of the animation. |