---
title: UGCEntityTypeSystem
language: lua
---

# UGCEntityTypeSystem

实体类型查询系统接口库

## Functions

### IsActorOfEntityType

判断Actor是否属于指定的实体类型
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |
| EntityTypeName | string | 实体类型名称 |

**Return:** boolean 是否属于指定类型

### GetActorEntityType

获取Actor的实体类型（返回第一个匹配的）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |

**Return:** string 实体类型名称，如果没有匹配则返回空字符串

### GetActorEntityTypes

获取Actor的所有匹配的实体类型
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |

**Return:** string[] 实体类型名称数组

### GetAllEntityTypeNames

获取所有已配置的实体类型名称
生效范围：服务器&客户端

**Return:** string[] 所有实体类型名称数组

### OverlapBoxByEntityType

使用Box形状检测指定EntityType的Actor
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeName | string | 实体类型名称 |
| Location | FVector | 检测位置 |
| HalfExtent | FVector | Box的半尺寸（默认值：{X=50, Y=50, Z=50}） |
| Rotation | FRotator | 旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}） |

**Return:** AActor[] 找到的Actor数组

### OverlapSphereByEntityType

使用Sphere形状检测指定EntityType的Actor
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeName | string | 实体类型名称 |
| Location | FVector | 检测位置 |
| Radius | number | 球体半径（默认值：100） |

**Return:** AActor[] 找到的Actor数组

### OverlapCapsuleByEntityType

使用Capsule形状检测指定EntityType的Actor
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeName | string | 实体类型名称 |
| Location | FVector | 检测位置 |
| Radius | number | 胶囊体半径（默认值：100） |
| HalfHeight | number | 胶囊体半高（默认值：100） |
| Rotation | FRotator | 旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}） |

**Return:** AActor[] 找到的Actor数组

### IsActorOfClassType

检查Actor是否为指定的类类型
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |
| ActorClassPath | string | Actor类的路径 |

**Return:** boolean 是否为指定类型

### IsActorOfAnyClassTypes

检查Actor是否为指定类类型数组中的任意一种
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |
| ActorClassPaths | string[] | Actor类路径数组 |

**Return:** boolean 是否为指定类型之一

### IsActorOfEntityTypeByTag

判断Actor是否属于指定的实体类型（使用GameplayTag）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |
| EntityTypeTag | FGameplayTag | 实体类型GameplayTag |

**Return:** boolean 是否属于指定类型

### IsActorOfEntityTypeByTags

判断Actor是否属于指定的实体类型（使用GameplayTagContainer）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |
| EntityTypeTags | FGameplayTagContainer | 实体类型GameplayTag容器 |

**Return:** boolean 是否属于指定类型之一

### GetActorEntityTypeAsGameplayTag

获取Actor的实体类型（返回GameplayTag）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |

**Return:** FGameplayTag 实体类型GameplayTag

### GetActorEntityTypesAsGameplayTagContainer

获取Actor的所有匹配的实体类型（返回GameplayTagContainer）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 要检查的Actor |

**Return:** FGameplayTagContainer 实体类型GameplayTag容器

### OverlapBoxByEntityTypeTag

使用Box形状检测指定EntityType的Actor（使用GameplayTag）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeTag | FGameplayTag | 实体类型GameplayTag |
| Location | FVector | 检测位置 |
| HalfExtent | FVector | Box的半尺寸（默认值：{X=50, Y=50, Z=50}） |
| Rotation | FRotator | 旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}） |

**Return:** AActor[] 找到的Actor数组

### OverlapBoxByEntityTypeTags

使用Box形状检测指定EntityType的Actor（使用GameplayTagContainer）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeTags | FGameplayTagContainer | 实体类型GameplayTag容器 |
| Location | FVector | 检测位置 |
| HalfExtent | FVector | Box的半尺寸（默认值：{X=50, Y=50, Z=50}） |
| Rotation | FRotator | 旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}） |

**Return:** AActor[] 找到的Actor数组

### OverlapSphereByEntityTypeTag

使用Sphere形状检测指定EntityType的Actor（使用GameplayTag）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeTag | FGameplayTag | 实体类型GameplayTag |
| Location | FVector | 检测位置 |
| Radius | number | 球体半径（默认值：100） |

**Return:** AActor[] 找到的Actor数组

### OverlapSphereByEntityTypeTags

使用Sphere形状检测指定EntityType的Actor（使用GameplayTagContainer）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeTags | FGameplayTagContainer | 实体类型GameplayTag容器 |
| Location | FVector | 检测位置 |
| Radius | number | 球体半径（默认值：100） |

**Return:** AActor[] 找到的Actor数组

### OverlapCapsuleByEntityTypeTag

使用Capsule形状检测指定EntityType的Actor（使用GameplayTag）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeTag | FGameplayTag | 实体类型GameplayTag |
| Location | FVector | 检测位置 |
| Radius | number | 胶囊体半径（默认值：100） |
| HalfHeight | number | 胶囊体半高（默认值：100） |
| Rotation | FRotator | 旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}） |

**Return:** AActor[] 找到的Actor数组

### OverlapCapsuleByEntityTypeTags

使用Capsule形状检测指定EntityType的Actor（使用GameplayTagContainer）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 世界上下文对象 |
| EntityTypeTags | FGameplayTagContainer | 实体类型GameplayTag容器 |
| Location | FVector | 检测位置 |
| Radius | number | 胶囊体半径（默认值：100） |
| HalfHeight | number | 胶囊体半高（默认值：100） |
| Rotation | FRotator | 旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}） |

**Return:** AActor[] 找到的Actor数组

### GetAllEntityTypesAsGameplayTagContainer

获取所有已配置的实体类型（返回GameplayTagContainer）
生效范围：服务器&客户端

**Return:** FGameplayTagContainer 所有实体类型GameplayTag容器

### ConvertEntityTypeNameToGameplayTag

将实体类型名称转换为GameplayTag
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EntityTypeName | string | 实体类型名称 |

**Return:** FGameplayTag 对应的GameplayTag

### ConvertGameplayTagToEntityTypeName

将GameplayTag转换为实体类型名称
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EntityTypeTag | FGameplayTag | 实体类型GameplayTag |

**Return:** string 对应的实体类型名称

### SetConfigDataAssetPath

设置自定义配置DataAsset路径
如果不调用此函数，将使用默认路径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ConfigDataAssetPath | string | 配置DataAsset的路径 |

### ForceReloadConfig

强制重新加载配置
配合SetConfigDataAssetPath使用，建议设置完路径后调用一次
生效范围：服务器&客户端