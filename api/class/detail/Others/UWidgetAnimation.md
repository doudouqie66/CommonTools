---
title: UWidgetAnimation
language: cpp
---

# UWidgetAnimation

> Inheritance: UMovieSceneSequence

## Variables

| Name | Type | Description |
|------|------|-------------|
| MovieScene | UMovieScene * | Pointer to the movie scene that controls this animation. |
| AnimationBindings | TArray < FWidgetAnimationBinding > |  |

## Functions

### GetStartTime

Get the start time of this animation.
	 

**Return:** UMG_API float Start time in seconds.

### GetEndTime

Get the end time of this animation.
	 

**Return:** UMG_API float End time in seconds.

### BindToAnimationStarted

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UUserWidget *  |  |
| Delegate | FWidgetAnimationDynamicEvent |  |

**Return:** void  

### UnbindFromAnimationStarted

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UUserWidget *  |  |
| Delegate | FWidgetAnimationDynamicEvent |  |

**Return:** void  

### UnbindAllFromAnimationStarted

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UUserWidget * |  |

**Return:** void  

### BindToAnimationFinished

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UUserWidget *  |  |
| Delegate | FWidgetAnimationDynamicEvent |  |

**Return:** void  

### UnbindFromAnimationFinished

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UUserWidget *  |  |
| Delegate | FWidgetAnimationDynamicEvent |  |

**Return:** void  

### UnbindAllFromAnimationFinished

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UUserWidget * |  |

**Return:** void