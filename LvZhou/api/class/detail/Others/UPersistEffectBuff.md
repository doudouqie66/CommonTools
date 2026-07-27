---
title: UPersistEffectBuff
language: cpp
---

# UPersistEffectBuff

Buff系统归属与和平精英的技能系统，用于帮助开发者更方便快捷地实现Buff效果
  通过与Tag、Attribute等系统的配合能够通过配置就实现大部分所需的效果
  对于更细致的Buff效果也可以通过重写BP结尾的函数来实现定制化效果。

> Inheritance: UPersistEffectBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| BuffInfo | FPEBuffInfo | 生效范围：服务器&客户端       Buff蓝图的配置信息 |

## Functions

### AddStackNum

生效范围：服务器
	  修改堆叠层数，修改后的层数大于等于0且小于等于最大堆叠层数(MaxStackNum)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Num | int32 | 新增的层数 |

**Return:** void  

### GetStackNum

生效范围：服务器&客户端
	 获取当前层数

**Return:** int32 当前层数

### GetCauser

生效范围：服务器&客户端
      获取Buff的施加者

**Return:** AActor * 施加者

### SetCauser

生效范围：服务器
	 设置Buff的施加者

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Causer | AActor * | 施加者 |

**Return:** void  

### TriggerAllLayer

生效范围：服务器
      触发当前所有层的Buff的效果

**Return:** void 

### TriggerSingleLayer

生效范围：服务器
	  触发单层的Buff的效果

**Return:** void 

### RefreshBuff

生效范围：服务器
	  重置Buff持续时间

**Return:** void 

### SetBuffEnable

生效范围：服务器
	  设置Buff是否生效

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsEnable | bool | 是否生效 |

**Return:** void  

### IsBuffEnable

生效范围：服务器&客户端
	  获取Buff当前是否生效

**Return:** bool 是否生效

### Pause

生效范围：服务器
	  暂停Buff持续减少剩余时间

**Return:** void 

### Resume

生效范围：服务器
	  恢复Buff持续减少剩余时间

**Return:** void 

### OverwriteBuffUIInfo

生效范围：服务器&客户端
	  更改UI信息，但双端不同步

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BuffName | FName &  | Buff名字 |
| BuffDetail | FString &  | Buff描述 |
| BuffIconPath | FString & | Buff图标路径 |

**Return:** void  

### GetBuffName

生效范围：服务器&客户端
	  获取Buff名字

**Return:** FName Buff名字

### GetBuffDetail

生效范围：服务器&客户端
	  获取Buff描述

**Return:** FString Buff描述

### GetBuffIconPath

生效范围：服务器&客户端
	  获取Buff图标路径

**Return:** FString Buff图标路径