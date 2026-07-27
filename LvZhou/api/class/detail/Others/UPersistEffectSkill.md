---
title: UPersistEffectSkill
language: cpp
---

# UPersistEffectSkill

技能实体

> Inheritance: UPersistEffectWithState -> ISkillObjectInterface -> IPESkillTaskTrackConditionFilterInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| PESkillSlot | FGameplayTag | 技能槽位Tag |
| ApplyTagGroup | FGameplayTagGroups | Tag的配置组，包含该技能与各个Tag的互斥关系 |
| CustomActivateConditions | FPESkillConditionContainer | 技能激活自定义条件 |
| ConsumeTime | EPESkillConsumeTimeType | CD能量和消耗扣除时机 |
| SkillCD | FPESkillCDWapper | 技能CD |
| CostConsume | FPESkillConsume | 技能消耗 |
| UIInfo | FPESkillUIInfo | 技能外显信息 |
| SkillGroup | FGameplayTag | 技能组，同组互斥，不能同时激活同组的技能，如果填空的话则没有任何互斥关系 |
| bDefaultEnable | bool | 默认是否可用，如果配置了false，则需要调用enable才能激活技能 |

## Functions

### EnableSkill

生效范围：S
	  使技能可用

**Return:** void 

### DisableSkill

生效范围：S
	  使技能不可用

**Return:** void 

### IsSkillEnable

生效范围：SC

**Return:** bool 技能是否可用

### DeActivateSkill

生效范围：SC
	  取消技能释放

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Reason | EPESkillDeActivateReason |  |

**Return:** void  

### CanActivateSkill

生效范围：SC

**Return:** bool 技能是否可用

### ActivateSkill

生效范围：SC
	  释放技能

**Return:** void 

### IsActivating

生效范围：SC

**Return:** bool 技能是否正在激活

### CheckCDReady

生效范围：服务器&客户端

**Return:** bool 技能CD是否已准备好

### CheckCostReady

生效范围：服务器

**Return:** bool 技能需要的消耗是否已准备好

### ConsumeCD

生效范围：服务器
	  消耗CD

**Return:** bool 是否成功消耗

### ConsumeCost

生效范围：服务器
	  消耗道具

**Return:** bool 是否成功消耗

### GetRemainingCDTime

生效范围：服务器&客户端
	  获取CD剩余时间

**Return:** float 剩余时间

### GetCDRecoveryTime

生效范围：服务器&客户端
	  获取CD恢复时间

**Return:** float 剩余时间

### SetCDRecoveryTime

生效范围：服务器
	  设置CD恢复时间

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CDRecoveryTime | float |  |

**Return:** void  

### GetCDRecoverRate

生效范围：服务器&客户端
	  获取CD恢复速率

**Return:** float CD恢复速率

### SetCDRecoverRate

生效范围：服务器
	  设置CD恢复速率

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rate | float | CD恢复速率 |

**Return:** void  

### ChargeCDEnergy

生效范围：服务器
	  恢复CD比例，1代表完全恢复一层CD，大于1代表恢复多层，不超过层数上限

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ChargeRate | float | 恢复的层数 |

**Return:** void  

### ChargeCDTime

生效范围：服务器
	  恢复CD固定时间，不超过层数上限

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ChargeTime | float | 恢复的时间，单位秒 |

**Return:** void  

### RefreshCD

生效范围：服务器
	  刷新技能CD

**Return:** void 

### SetCDMaxLayer

生效范围：服务器
	  设置CD最大层数

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMaxLayer | int |  |

**Return:** void  

### OverwriteSkillUIInfo

生效范围：服务器&客户端
	  更改UI信息，但双端不同步

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SkillName | FName  | 技能名字 |
| SkillDetail | FString  | 技能描述 |
| SkillIconPath | FString | 技能图标路径 |

**Return:** void  

### GetSkillName

生效范围：服务器&客户端
	  获取技能名字

**Return:** FName 技能名字

### GetSkillDetail

生效范围：服务器&客户端
	  获取技能描述

**Return:** FString 技能描述

### GetSkillIconPath

生效范围：服务器&客户端
	  获取技能图标路径

**Return:** FString 技能图标路径

### SetShowTipsEnable

生效范围：服务器
	  设置是否开启技能激活检查失败显示Tips

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool | 是否开启提示 |

**Return:** void  

### SetPlayActivateFailedSoundEnable

生效范围：服务器
	  设置是否开启技能激活检查失败播放提示音

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool | 是否开启提示 |

**Return:** void  

### GetSelectTargetActor

获取技能目标角色

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SelectType | EPESkillSelectTarget | 选择类型 |

**Return:** TArray < AActor * >  技能目标角色

### SetSelectTargetActor

设置技能目标角色

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actors | TArray < AActor * > & | Actor数组 |

**Return:** void  

### SetSelectTargetOneActor

设置技能目标角色

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| pActor | AActor * |  |

**Return:** void  

### SetSelectDirection

设置技能方向

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Direction | FVector & | 方向 |

**Return:** void  

### GetSelectDirection

获取技能方向

**Return:** FVector 技能方向

### GetSelectTransform

获取技能目标位置

**Return:** const FTransform & 技能目标位置

### SetSelectTransform

设置技能目标位置

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Transform | FTransform & | 技能目标位置 |

**Return:** void  

### SetSelectTransforms

设置技能多目标位置

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Transforms | TArray < FTransform > & |  |

**Return:** void  

### GetSelectTransforms

获取技能多目标位置

**Return:** const TArray < FTransform > & 

### ClearSelectTransforms

清除技能目标位置

**Return:** void