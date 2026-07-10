---
title: UChildActorComponent
language: cpp
---

# UChildActorComponent

A component that spawns an Actor when registered, and destroys it when unregistered.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ChildActorClass | TSubclassOf < AActor > | The class of Actor to spawn |
| ChildActor | AActor * | The actor that we spawned and own |
| bAllowTemplateModification | bool |  |
| ChildActorTemplate | AActor * | Property to point to the template child actor for details panel purposes |
| IsDestoryChildActor | bool |  |
| bKeepChildActorComponet | bool |  |
| bEnableReplication | bool |  |
| bDumpChildActorLocation | bool |  |
| bRedirectComps | uint8 |  |
| bPCOnlyComps | uint8 |  |

## Functions

### SetChildActorClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InClass | TSubclassOf < AActor > |  |

**Return:** void  

### OnRep_ChildActor

**Return:** void 

### CreateChildActor

Create the child actor

**Return:** void 

### DestroyChildActor

Kill any currently present child actor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNeedInstanceData | bool |  |

**Return:** void