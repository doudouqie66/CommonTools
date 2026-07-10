---
title: UGCGenericCharacterSystem
language: lua
---

# UGCGenericCharacterSystem

怪物系统接口库

## Functions

### KillGenericCharacter

强制杀死怪物
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

### IsAlive

小怪是否存活
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** boolean 小怪是否存活

### IsGenericCharacter

目标是否为小怪
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Target | AActor | 目标 |

**Return:** boolean 是否为小怪

### GetHealth

获取小怪血量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** number 血量

### GetHealthMax

获取小怪血量上限
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** number 血量上限

### SetHealth

设置小怪血量
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| Health | number | 血量 |

### SetHealthMax

设置小怪血量上限
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| HealthMax | number | 血量上限 |

### EnableMovement

启动移动能力
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

### DisableMovement

关闭移动能力
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

### SetAvoidanceGroup

设置避障组
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| AvoidanceGroup | EGenericAvoidanceGroup | 避障组 |

### MoveTo

移动到目标位置(注意不要和行为树移动冲突)
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| InDestination | FVector | 目的地 |
| InStopRadius | number | 停止距离 |

### StopMove

停止移动(注意不要和行为树移动冲突)
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

### GetCurrentVelocity

获取当前怪物动量
生效范围：服务器/客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** FVector 当前动量

### SetMaxSpeed

设置最大移动速度
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| InSpeed | number | 速度 |
| Reason | number | 原因 |

### GetMaxSpeed

获取最大移动速度
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** number 最大移动速度

### GetDefaultMaxSpeed

获取默认最大移动速度
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** number 默认最大移动速度

### GetTargetEnemy

获取当前仇恨目标
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** AActor 当前仇恨对象

### RunBehavior

运行指定行为树
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| BehaviorTreePath | string | 行为树路径 |

### StopBehavior

停止当前行为树
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| Reason | string | 原因 |

### OverrideBehaviorTreeSetting

覆盖行为树设置并重新启动行为树
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| InBehaviorTreeSetting | FBehaviorTreeReflectSetting | 新的行为树设置 |

### GetBehaviorTreeSetting

获取当前行为树设置
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |

**Return:** FBehaviorTreeReflectSetting 

### PauseBehavior

暂停当前行为树
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| Reason | string | 原因 |

### ResumeBehavior

继续当前行为树
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| Reason | string | 原因 |

### PlayAnimMontage

播放蒙太奇动画
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| AnimMontage | UAnimMontage | 蒙太奇动画 |
| InPlayRate | number | 播放速率 |

### PlayAnimMontageByTag

通过Tag播放蒙太奇动画
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| AnimGameplayTag | FGameplayTag | 蒙太奇动画Tag |
| InPlayRate | number | 播放速率 |

### AddOverrideAnimAsset

覆盖指定Tag的动画资源
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| Data | FGenericCharacterAnimOverrideData | 覆写数据 |
| BlendTime | number | 混合时间 |

### RemoveOverrideAnimAsset

移除覆盖指定Tag的动画资源
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| Data | FGenericCharacterAnimOverrideData | 覆写数据 |
| BlendTime | number | 混合时间 |

### IsEnableLogicPart

是否启用LogicPart
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GenericCharacter | AUGCGenericCharacter | 怪物 |
| InLogicPartTag | FGameplayTag | LogicPart Tag |

**Return:** boolean 是否启用

### SpawnGenericCharacter

在目标位置刷一个怪
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| GenericCharacterClass | UClass | 怪物的类 |
| Location | FVector | 刷怪的位置 |
| Rotation | FRotator | 刷出怪物的朝向 |

**Return:** AActor 刷出的怪物

### SpawnGenericCharacterByGroup

在目标位置根据怪物组表中的ID刷一个怪
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| GroupID | number | 怪物组表中的ID |
| Location | FVector | 刷怪的位置 |
| Rotation | FRotator | 刷出怪物的朝向 |

**Return:** AActor 刷出的怪物

### RangeSpawnGenericCharacters

在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| GenericCharacterClass | UClass | 怪物的类 |
| Location | FVector | 刷怪范围的中心位置 |
| Rotation | FRotator | 刷出怪物的朝向 |
| Range | number | 刷怪圆形范围的半径 |
| HeightRange | number | 怪物刷出位置与中心位置的最大高度差 |
| Count | number | 刷出怪物的数量 |

**Return:** table 刷出怪物的列表

### RangeSpawnGenericCharactersByGroup

在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪，怪物类型由怪物组表ID指定
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| GroupID | number | 怪物组表中的ID |
| Location | FVector | 刷怪范围的中心位置 |
| Rotation | FRotator | 刷出怪物的朝向 |
| Range | number | 刷怪圆形范围的半径 |
| HeightRange | number | 怪物刷出位置与中心位置的最大高度差 |
| Count | number | 刷出怪物的数量 |

**Return:** table 刷出怪物的列表

### RangeSpawnGenericCharactersOnTime

在指定位置的圆形范围中每隔一定时间寻找合适的地面刷出一定数量的怪
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| GenericCharacterClass | UClass | 怪物类 |
| Location | FVector | 刷怪范围的中心位置 |
| Rotation | FRotator | 刷出怪物的朝向 |
| Range | number | 刷怪圆形范围的半径 |
| HeightRange | number | 怪物刷出位置与中心位置的最大高度差 |
| MinSpawnCountPerLoop | number | 每次刷怪的最小数量 |
| MaxSpawnCountPerLoop | number | 每次刷怪的最大数量 |
| LoopTimes | number | 总的刷怪轮数 |
| IntervalMinTime | number | 刷怪轮次间的最小时间间隔 |
| IntervalMaxTime | number | 刷怪轮次间的最大时间间隔 |
| FirstDelayTime | number | 从接口调用到首次刷怪的延迟时间 |
| Callback | function | 回调函数 |
| CallbackSelf | table | 回调函数的调用主体，静态函数时留空 |

### RangeSpawnGenericCharactersByGroupOnTime

在指定位置的圆形范围中每个一定时间寻找合适的地面刷出一定数量的怪
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| GroupID | number | 怪物组表中的ID |
| Location | FVector | 刷怪范围的中心位置 |
| Rotation | FRotator | 刷出怪物的朝向 |
| Range | number | 刷怪圆形范围的半径 |
| HeightRange | number | 怪物刷出位置与中心位置的最大高度差 |
| MinSpawnCountPerLoop | number | 每次刷怪的最小数量 |
| MaxSpawnCountPerLoop | number | 每次刷怪的最大数量 |
| LoopTimes | number | 总的刷怪轮数 |
| IntervalMinTime | number | 刷怪轮次间的最小时间间隔 |
| IntervalMaxTime | number | 刷怪轮次间的最大时间间隔 |
| FirstDelayTime | number | 从接口调用到首次刷怪的延迟时间 |
| Callback | function | 回调函数 |
| CallbackSelf | table | 回调函数的调用主体，静态函数时留空 |

### GetPartTypeSockets

获取角色骨骼里所有的PartTypeSocket
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Character | ACharacter | 角色 |

**Return:** UPartTypeSocket[] PartTypeSocket列表

### GetBlackboard

获取Actor的BlackboardComponent
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | Actor |

**Return:** UBlackboardComponent BlackboardComponent