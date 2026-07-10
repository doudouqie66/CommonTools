---
title: VirtualItemManager
language: lua
---

# VirtualItemManager

UGC虚拟物品全局管理器

## Variables

| Name | Type | Description |
|------|------|-------------|
| VirtualItemManager.OnVirtualItemNumUpdatedDelegate |  | 生效范围：客户端 虚拟物品数量发生变化时触发 |
| VirtualItemManager.OnItemNumUpdatedDelegate |  | 生效范围：客户端 物品数量（包括背包物品）发生变化时触发 |
| VirtualItemManager.AddItemResultDelegate |  | 添加物品后触发 生效范围：客户端&&服务器 @param Result VirtualItemAddItemResult @添加结果 |
| VirtualItemManager.RemoveItemResultDelegate |  | 移除物品后触发 生效范围：客户端&&服务器 @param Result VirtualItemRemoveItemResult @移除结果 |
| VirtualItemManager.TransferToBackpackResultDelegate |  | 转移虚拟物品到背包时触发 生效范围：客户端&&服务器 @param Result VirtualItemTransferResult @转移结果 |
| VirtualItemManager.TableDataReadyDelegate |  | 表格配置数据加载好时触发 生效范围：客户端&&服务器 |

## Functions

### AddVirtualItems

添加多种虚拟物品
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | UUGCPlayerController | 玩家控制器 |
| ItemList | table | 物品列表，key为物品ID，value为数量 |
| RequestMark | string | 发起请求标记。会传回AddItemResultDelegate的Result中，可以省略 |

**Return:** boolean 是否添加成功

### AddVirtualItem

添加虚拟物品 
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | UUGCPlayerController | 玩家控制器 |
| ItemID | number | 虚拟物品ID |
| Num | number | 添加的物品数量 |
| RequestMark | string | 发起请求标记。会传回AddItemResultDelegate的Result中，可以省略 |

**Return:** boolean 是否添加成功

### RemoveVirtualItem

移除虚拟物品 
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | UUGCPlayerController | 玩家控制器 |
| ItemID | number | 虚拟物品ID |
| Num | number | 移除的物品数量 |
| Callback | Delegate | 回调，可不传参 |

### RemoveItem

移除虚拟物品，如果物品配置了到背包的映射，则只以背包中的数量为准
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | UUGCPlayerController | 玩家控制器 |
| ItemID | number | 虚拟物品ID |
| Num | number | 移除的物品数量 |
| Callback | Delegate|function | 回调，可不传参 |

### GetVirtualItemNum

获取虚拟物品数量（不包含已转移背包的数量）
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** number 

### GetItemNum

获取虚拟物品数量（包括已转移到背包的物品）
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** number 

### GetFreeItemNum

获取非绿洲币购买的物品数量
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** number 

### GetOasisItemNum

获取绿洲币购买的物品数量
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** number 

### GetMappedItemNum

获取已映射到背包的物品数量
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** number 

### TransferToBackpack

将虚拟物品转移到背包（需配置映射表UGCObjectMapping）
 生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| ItemID | number | 物品ID |
| ItemNum | number | 数量, 不传则默认全部转移 |
| bPartial | boolean | 是否在背包空间不足时部分转移, 默认false |

### GetItemDatas

获取所有虚拟物品ID的信息
 生效范围：客户端&&服务器

**Return:** table 

### GetItemData

获取虚拟物品ID的信息
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number |  |

**Return:** table 如果没有对应的值则返回nil

### GetClassicItemID

【废弃】请使用 GetMappedItemID
 获取经典物品ID
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 虚拟物品ID |

**Return:** number 如果没有对应的值则返回nil

### GetMappedItemID

获取虚拟物品ID对应的背包物品ID
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 虚拟物品ID |

**Return:** number 背包物品ID，如果没有配置虚拟物品ID到UGCObjectMapping表中，则返回nil

### GetReverseMappingDatas

获取所有经典物品ID到虚拟物品ID映射数据
 生效范围：客户端&&服务器

**Return:** table 

### GetIsEnableMappingItem

获取是否已启用虚拟物品到背包物品的映射
 生效范围：客户端&&服务器

**Return:** boolean 

### GetVirtualItemID

获取虚拟物品ID
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClassicItemID | number | 经典物品ID |

**Return:** number 如果没有对应的值则返回nil

### GetOwnedVirtualItems

获取所有已持有的虚拟物品
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** table 

### GetOwnedItems

获取所有已持有的物品（包括已映射到背包的经典物品）
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** table 

### GetUntransferredItems

获取未转移到背包的物品
 生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | UUGCPlayerController | 玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |

**Return:** table 

### SetAutoTransferActive

设置是否开启自动转移背包
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bActive | boolean | 是否开启自动转移 |

### SetGetItemUIActive

设置是否显示获得物品弹窗
如果在已显示弹窗后设置为不显示，则在当前所有弹窗显示结束后再生效

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bShow | bool | 是否显示 |