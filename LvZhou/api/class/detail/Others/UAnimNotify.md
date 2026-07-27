---
title: UAnimNotify
language: cpp
---

# UAnimNotify

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bCheckAnimIsolation | bool |  |
| bCheckAnimIsolation_OnlyNewFPP | bool |  |
| bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode | bool |  |

## Functions

### GetNotifyName

Implementable event to get a custom name for the notify

**Return:** FString 

### Received_Notify

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MeshComp | USkeletalMeshComponent *  |  |
| Animation | UAnimSequenceBase *  |  |
| InvokeAnimInstance | UAnimInstance * |  |

**Return:** bool