---
title: FItemOperationInfoV2
---

# FItemOperationInfoV2

V2背包操作事件信息

## Variables

| Name | Type | Description |
|------|------|-------------|
| DefineID | FItemDefineID | 触发操作的物品 DefineID |
| ItemOperationType | EItemOperationTypeV2 | 触发的操作类型 	   	  (SwapEquip 类型的操作将触发2次事件，分别对应两个物品) |
| CommonReason | uint8 | 触发操作时物品携带的通用 Reason |
| Count | int32 | 被操作的物品数量 	  添加、丢弃、移除时表示对应的数量 	  其它操作 Count 数量为 1 |
| TargetDefineID | FItemDefineID | Attach: 附加的物品 DefineID 	  Detach: 解除附加的物品 DefineID 	  SwapEquip: 与此物品交换的物品 Defin |
| TargetSlot | FName | Equip: 装备的目标槽位 	  UnEquip: 从哪个槽位卸下 	  Attach: 附加物品的槽位 	  Detach: 解除附加物品的槽位 	  Sw |