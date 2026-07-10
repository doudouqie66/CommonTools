---
title: UGCAirAttachSystem
language: lua
---

# UGCAirAttachSystem

轰炸区接口库

## Functions

### GenerateBombingArea

生成轰炸区
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ConfigID | number | 轰炸配置 ID |
| Location | FVector | 轰炸中心坐标（系统会自动通过射线检测将炸弹位置修正到地面高度） |

**Return:** number 是否成功生成轰炸区, 实例ID

### StopBombingArea

停止轰炸区
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 轰炸实例 ID |

**Return:** bool 是否成功停止轰炸区

### ModifyBombingAreaConfig

修改轰炸区参数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ConfigID | number | 轰炸配置 ID |
| ParameterType | string | 参数类型（如："AttackAreaRadius", "EscapeTime", "AttackLastingTime"等） |
| NewValue | number | 新的参数值 |

**Return:** bool 是否成功修改轰炸配置

### GetAllConfigBombingArea

查看当前全部轰炸区
生效范围：服务器

**Return:** UGCAirAttackConfig> 所有轰炸实例ID和对应的轰炸参数

### GetSpecifyBombingAreaList

查看指定轰炸区参数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 轰炸实例 ID |

**Return:** UGCAirAttackConfig 指定实例的轰炸参数

### GetAirAttackManager

获取轰炸区管理器
生效范围：服务器&客户端

**Return:** UGCAirAttackManager 轰炸区管理器实例，失败时返回nil