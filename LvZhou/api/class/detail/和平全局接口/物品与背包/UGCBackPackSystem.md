---
title: UGCBackPackSystem
language: lua
---

# UGCBackPackSystem

背包系统接口库

## Functions

### GetBackpackComponent

获取背包组件(客户端仅能获取到自己的）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** UBackpackComponent 背包组件

### AddItem

添加道具
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ItemID | number | 物品ID |
| Count | number | 数量 |

**Return:** boolean 

### DropItem

掉落道具（入参为ItemID，不关心具体哪个道具）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ItemID | number | 物品ID |
| Count | number | 数量 |
| IsDestroy | boolean | 是否直接销毁，不掉落地面 |

**Return:** boolean 

### UseItem

使用道具（入参为ItemID，不关心具体哪个道具）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ItemID | number | 物品ID |

**Return:** boolean 

### DisuseItem

停止使用物品（入参为ItemID，默认选择同ID第一个，仅对物资编辑器生成的绷带，饮料类物资生效）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ItemID | number | 物品ID |

**Return:** boolean 

### DropItemByInstanceID

根据InstanceID（物品实例ID）掉落道具
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| InstanceID | number | 物品实例ID（唯一） |
| Count | number | 数量 |
| IsDestroy | boolean | 是否直接销毁，不掉落地面 |

**Return:** boolean 

### UseItemByInstanceID

根据InstanceID（物品实例ID）使用道具
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| InstanceID | number | 物品实例ID（唯一） |

**Return:** boolean 

### DisuseItemByInstanceID

根据InstanceID（物品实例ID）停止使用道具（仅对物资编辑器生成的绷带，饮料类物资生效）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| InstanceID | number | 物品实例ID（唯一） |

**Return:** boolean 

### GetItemCount

获取道具数量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ItemID | number | 物品ID |

**Return:** number 背包内物品数量

### GetAllItemData

获取背包里所有道具数据
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** @LuaTable<ItemData>, ItemData结构：ItemID,InstanceID,Count,Type,SubType,IsAvatar

### GetAllItemDataByItemID

获取ItemData列表
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ItemID | number | 物品ID |

**Return:** table LuaTable<FBattleItemData>

### GetItemDataByInstanceID

根据InstanceID（物品实例ID）获取ItemData
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| InstanceID | number | 物品实例ID（唯一） |

**Return:** FBattleItemData 战斗物品数据

### GetCapacity

获取背包剩余容量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 剩余容量

### GetMaxCapacity

获取背包最大剩余容量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 最大剩余容量

### HasItemBySubType

是否拥有某类物品
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ItemSubType | number | 道具字类型 |

**Return:** boolean 

### GetWeaponsInBackpack

获取背包中的武器
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** table FBattleItemData

### GetWeaponAttachmentsInBackpack

获取背包中的武器配件
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** table FBattleItemData

### GetArmorInBackpack

获取当前防弹衣
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** FBattleItemData 物品数据

### GetHelmetInBackpack

获取当前头盔
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** FBattleItemData 物品数据

### GetConsumablesInBackpack

获取背包中的所有消耗品
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** table FBattleItemData

### IsAttachItemType

通过传入物品ID判断是否拥有某类物品，例：可传入AKM的物品ID，判断是否拥有枪械
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |

**Return:** boolean 

### IsGunItemType

传入物品ID判断是否为枪械
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |

**Return:** boolean 

### GetPickupWrapperClassPath

获取PickupWrapperClass路径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | number | 物品ID |

**Return:** string 

### GetAllAttachmentDefineIDInBackpack

获取背包内所有枪械配件DefineID
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** table AttachmentDefineID列表 LuaTable<ItemDefineID>

### GetAllUnEquipedAttachmentDefineIDInBackpack

获取背包内所有未装备的枪械配件DefineID
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** table AttachmentDefineID列表 LuaTable<ItemDefineID>