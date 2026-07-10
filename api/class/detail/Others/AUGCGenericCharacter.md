---
title: AUGCGenericCharacter
language: cpp
---

# AUGCGenericCharacter

怪物角色类

> Inheritance: AGenericCharacter

## Variables

| Name | Type | Description |
|------|------|-------------|
| HealthBarWidgetClass | TSoftClassPtr < UUGCGenericCharacterPositionWidget > | 血条控件蓝图路径 |
| bHealthBarShowWhenOcclusionHide | bool | 被遮挡后血条是否仍显示 |
| HealthBarMaxShowDistance | float | 血条实时显示最大距离，单位厘米 |
| HealthBarLocOffset | FVector | 血条位置偏移 |
| bHealthBarUseSocket | bool | 血条是否附着到特定部位 |
| HealthBarSocketName | FName | 血条附着的部位名 |
| bHealthBarShowWhenTakeDamage | bool | 怪物受伤时显示血条 |
| bHealthBarShowWhenLockPlayer | bool | 当怪物将玩家作为当前目标时显示血条 |
| bHealthBarShowWhenBeAimAt | bool | 当玩家瞄准怪物时显示血条 |
| HealthBarConditionShowDistance | float | 能触发瞄准显示的最大距离 |
| HealthBarShowDuration | float | 血条显示条件触发后显示时间 |
| HealthBarCampFilter | int32 | 阵营过滤 |
| HealthBarDamageFilter | EShowHPBarDamageType | 伤害来源过滤 |

## Functions

### GetBlackBoardComponent

获取黑板组件
	  生效范围：服务器

**Return:** UBlackboardComponent * 

### SetForceHatredTarget

设置当前强制仇恨目标
	  生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTarget | AActor * | 仇恨目标 |

**Return:** void  

### RemoveForceHatredTarget

清除强制仇恨目标
	  生效范围：服务器

**Return:** void 

### AddTargetHatredValue

增加目标仇恨值
	  生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Target | AActor *  | 目标 |
| HatredValue | float |  |

**Return:** void