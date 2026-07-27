---
title: UnrealNetwork
language: lua
---

# UnrealNetwork

虚幻网络库

## Functions

### RepLazyProperty

对声明为复制的Lazy属性执行复制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetObject | AActor | UActorComponent @属性所在的Actor或Component | 属性所在的Actor或Component |
| PropertyName | string | 属性名或路径 |

### CallUnrealRPC

发送可靠单播RPC

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetPlayerController | APlayerController | 目标玩家 |
| TargetObject | AActor | UActorComponent @目标Actor或Component | 目标Actor或Component |
| FunctionName | string | RPC函数名 |

### CallUnrealRPC_Unreliable

发送不可靠单播RPC

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetPlayerController | APlayerController | 目标玩家 |
| TargetObject | AActor | UActorComponent @目标Actor或Component | 目标Actor或Component |
| FunctionName | string | RPC函数名 |

### CallUnrealRPC_Multicast

发送可靠广播RPC

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetObject | AActor | UActorComponent @目标Actor或Component | 目标Actor或Component |
| FunctionName | string | RPC函数名 |

### CallUnrealRPC_Multicast_Unreliable

发送不可靠广播RPC

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetObject | AActor | UActorComponent @目标Actor或Component | 目标Actor或Component |
| FunctionName | string | RPC函数名 |