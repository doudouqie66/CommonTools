---
title: UGCMapMarkManagerSystem
language: lua
---

# UGCMapMarkManagerSystem

地图标记管理器系统接口库

## Functions

### AddCustomMark

添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget）
必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WidgetClassPath | string | 控件类路径，Widget 需继承自 MapUIMarkBaseWidget |
| RangeType | EMarkDispatchRange | 标记同步范围 |
| RangeRad | number | 标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） |
| OwnerPlayerState | PlayerState | 同步相关性 PlayerState，主要用于仅同步自身或者队友同步，非必传 |

**Return:** number 标记 ID

### AddLocalCustomMark

添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget）
必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理）
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WidgetClassPath | string | 控件类路径，Widget 需继承自 MapUIMarkBaseWidget |
| RangeRad | number | 标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） |

**Return:** number 标记 ID

### AddPlayerMark

添加一个玩家 Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WidgetClassPath | string | 控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget |
| RangeType | EMarkDispatchRange | 标记同步范围 |
| RangeRad | number | 标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） |
| OwnerPlayerState | PlayerState | 标记目标 PlayerState |

**Return:** number 标记 ID

### AddLocalPlayerMark

添加一个玩家Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget）
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WidgetClassPath | string | 控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget |
| OwnerPlayerState | PlayerState | 标记目标 PlayerState |
| RangeRad | number | 标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） |

**Return:** number 标记 ID

### RemoveMark

移除一个标记，此接口的调用者同传入的 InstanceID 匹配。
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 标记 ID |

### UpdateMarkLocation

更新标记位置，此接口的调用者同传入的 InstanceID 匹配。
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 标记 ID |
| MarkLocation | Vector | 新 Location |
| bNeedPrintLog | boolean | 是否输出日志 |

### UpdateMarkRotation

更新标记旋转，此接口的调用者同传入的 InstanceID 匹配。
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 标记 ID |
| NewRotation | Rotator | 新 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建，结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw} |

### GetMarkLocation

获取标记位置，此接口的调用者同传入的 InstanceID 匹配。
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 标记 ID |

**Return:** Vector 标记点 Location

### GetMarkRotation

获取标记旋转，此接口的调用者同传入的 InstanceID 匹配。
调用此接口来更新通过 UGCMapMarkManagerSystem.Add[Local]CustomMark 创建的小地图标记控件时，须确保该控件的 Rotate Widget to Angle 选项已勾选。
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 标记 ID |

**Return:** Rotator 标记点 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}

### GetMarkOwner

获取标记 Owner，此接口的调用者同传入的 InstanceID 匹配。
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 标记 ID |

**Return:** PlayerState 标记点对应的 PlayerState

### MakeMapMarkGraph

在地图上画图
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldCorners | FVector[] | 世界坐标点，按顺序绘制，1个点画圆，2个点画直线，3个点或以上画多边形 |
| MarkColor | FColor | 图像颜色 |
| RadiusOrLineWidth | number | 半径或直线宽度 |
| bRecolorOrBlending | boolean | 覆盖颜色或Alpha混合 |
| AddMarkFlag | EAddMarkFlag | 生效地图类型 |

### ClearMapMarkGraph

清除地图上的图案
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClearMarkFlag | EAddMarkFlag | 生效地图类型 |

### SetVoiceVisualization

开关小地图上的指定类型音效图标
生效范围：服务端&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFlag | EVoiceVisualizationFlag | 指定音效类型 |
| bIsEnable | boolean | 开关控制 |

### IsVoiceVisualizationFlagEnable

获取小地图上指定类型音效图标的开关状态
生效范围：服务端&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFlag | EVoiceVisualizationFlag | 指定音效类型 |

**Return:** boolean 是否开启

### GetMapMarkLocation

获取和平原生小地图标点位置
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerState | ASTExtraPlayerState | 玩家状态 |

**Return:** Vector 标记点位置

### ChangeMapByMapID

根据地图ID修改右上角地图
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MapID | number | 地图ID |

### DrawGuidePathToTarget

请求绘制引导线
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Params | FGuidePathDrawParams | 绘制参数 |
| OnResult | FOnGuidePathResult | 结果回调 |

**Return:** number 请求ID