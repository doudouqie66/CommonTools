---
title: UPawnAction
language: cpp
---

# UPawnAction

Things to remember:
 	 Actions are created paused

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| ChildAction | UPawnAction * | Current child node executing on top of this Action |
| ParentAction | UPawnAction * |  |
| OwnerComponent | UPawnActionsComponent * | Extra reference to the component this action is being governed by |
| Instigator | UObject * | indicates an object that caused this action. Used for mass removal of actions  	 |
| BrainComp | UBrainComponent * | @Note: THIS IS HERE _ONLY_ BECAUSE OF THE WAY AI MESSAGING IS CURRENTLY IMPLEMEN |
| bAllowNewSameClassInstance | uint32 | if this is FALSE and we're trying to push a new instance of a given class, 	 	bu |
| bReplaceActiveSameClassInstance | uint32 | if this is TRUE, when we try to push a new instance of an action who has the 	 	 |
| bShouldPauseMovement | uint32 | this is a temporary solution to allow having movement action running in backgrou |
| bAlwaysNotifyOnFinished | uint32 | if set, action will call OnFinished notify even when ending as FailedToStart |

## Functions

### GetActionPriority

**Return:** TEnumAsByte < EAIRequestPriority :: Type > 

### CreateActionInstance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ActionClass | TSubclassOf < UPawnAction > |  |

**Return:** UPawnAction *  

### Finish

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WithResult | TEnumAsByte < EPawnActionResult :: Type > |  |

**Return:** void