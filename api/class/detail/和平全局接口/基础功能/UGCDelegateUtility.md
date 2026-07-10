---
title: UGCDelegateUtility
language: lua
---

# UGCDelegateUtility

UGC 委托工具库

Lua 委托工具
- 使用 New() 创建委托
- 使用 Add(callable, obj) 绑定可调用对象
- 使用 Remove(callable, obj) 解绑可调用对象
- 使用 Broadcast(...) 触发委托

## Functions

### CreateLuaDelegate

创建 Lua 委托（纯 Lua 实现）

**Return:** @Lua 委托

### CopyLuaDelegate

复制 Lua 委托

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | UGCLuaDelegate | 被复制的 Lua 委托 |

**Return:** UGCLuaDelegate 复制出来的新 Lua 委托

### CreateUEDelegate

创建虚幻兼容单播委托

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Outer | UObject | Outer 对象（GC 相关） |

**Return:** ULuaSingleDelegate 虚幻兼容单播委托

### DestroyUEDelegate

销毁虚幻兼容单播委托

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UEDelegate | ULuaSingleDelegate | 虚幻兼容单播委托 |