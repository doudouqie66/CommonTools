---
title: UWidgetSkinProxy
language: cpp
---

# UWidgetSkinProxy

The user widget proxy, using this proxy to activate widget skin for an user widget.

> Inheritance: UObject -> IWidgetSkinProxyInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| bHideBeforeLoadSkin | bool |  |
| ActiveSkins | TArray < UUserWidgetSkin * > |  |

## Functions

### ApplySkin

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SkinPathPtr | TSoftClassPtr < UUserWidgetSkin >  |  |
| bAsyncLoad | bool |  |

**Return:** void  

### RevertSkin

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SkinPathPtr | TSoftClassPtr < UUserWidgetSkin > |  |

**Return:** void  

### RevertRevertableSkin

**Return:** bool 

### GetActiveSkins

**Return:** TArray < UUserWidgetSkin * > 

### GetRevertableSkin

**Return:** UUserWidgetSkin * 

### ContainsSkin

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSkin | UUserWidgetSkin * |  |

**Return:** bool  

### GetOwnerUserWidget

**Return:** UUserWidget *