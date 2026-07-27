---
title: UViewport
language: cpp
---

# UViewport

> Inheritance: UContentWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| BackgroundColor | FLinearColor |  |

## Functions

### GetViewportWorld

**Return:** UWorld * 

### GetViewLocation

**Return:** FVector 

### SetViewLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Location | FVector |  |

**Return:** void  

### GetViewRotation

**Return:** FRotator 

### SetViewRotation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rotation | FRotator |  |

**Return:** void  

### Spawn

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActorClass | TSubclassOf < AActor > |  |

**Return:** AActor *