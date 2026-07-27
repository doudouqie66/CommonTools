---
title: UBackpackComponentV2
language: cpp
---

# UBackpackComponentV2

V2背包内核组件

> Inheritance: UCommonBackpackComponent -> IUGCItemContainerInterface -> IUGCItemEquipTargetInterface -> IUGCGamePartPlayerComponentInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| Warehouse | UUGCItemWarehouse_Backpack * | 仓库对象 	  基类：UUGCItemWarehouseBase |

## Functions

### CheckInitPersistCompleted

查询背包是否初始化完成，完成后才可以进行背包操作

**Return:** bool