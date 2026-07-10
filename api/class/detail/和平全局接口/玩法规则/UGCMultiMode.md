---
title: UGCMultiMode
language: lua
---

# UGCMultiMode

多模式匹配通用接口库

## Variables

| Name | Type | Description |
|------|------|-------------|
| UGCMultiMode.NotifyMatchResponseDelegate |  | 通知“开始匹配”的结果。通常会立即通知，然后进入“匹配中”的状态 生效范围：客户端 @param bSuccess boolean @是否匹配成功。通常来说 t |
| UGCMultiMode.NotifyMatchSucceededDelegate |  | 通知在“匹配中”的玩家，匹配成功，即将进入新的对局游戏 生效范围：客户端 |
| UGCMultiMode.NotifyStatusOfReadyMatchChangedDelegate |  | 通知准备匹配的状态变化 生效范围：客户端 @param UID number @玩家 UID @param NewStatus EStatusOfReadyMa |

## Functions

### SetModeChooseUIVisible

设置模式选择 UI 的显示/隐藏
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Visible | boolean | 设置为显示/隐藏 |

### SetModeState

设置模式选择 UI 的子模式可选择状态
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ModeID | number | 模式 ID |
| ModeAvailability | boolean | 设置为可用/不可用 |

**Return:** boolean 操作是否成功

### GetModeID

获取当前模式 ID
生效范围：服务器&客户端

**Return:** number 当前模式 ID，若不存在则返回 0

### SetModeChooseButtonVisible

设置模式选择打开按钮的显示/隐藏
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Visible | boolean | 设置为显示/隐藏 |

**Return:** boolean 操作是否成功

### SetPlayerFill

开启/关闭补人
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bPlayerFill | boolean | 目标状态 |

### RequestMatch

开始匹配
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SubModeID | number | 子模式 ID |
| ResCallBack | function | 一个接受 bool 入参的回调函数，发起匹配的结果返回后会调用该函数 |
| Obj | UObject | 回调函数所属的对象 |
| IsTeamUnfill | boolean | 是否允许不匹配队友开始匹配 |

**Return:** boolean 是否请求匹配成功

### RequestCancelMatch

请求取消匹配
生效范围：客户端

**Return:** boolean 请求是否发送成功

### RequestReadyMatch

请求进入准备匹配状态
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bReady | boolean | 是否准备匹配 |

### QueryStatusOfReadyMatch

查询准备匹配的状态
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 玩家 UID，可选，如果传入 nil 或者不传入，那么获取自己的准备匹配状态 |

**Return:** EStatusOfReadyMatch 准备匹配的状态

### GetModeSetting

获取指定ModeID的配置
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ModeID | number | ModeID |

**Return:** ModeSetting ModeID对应的设置