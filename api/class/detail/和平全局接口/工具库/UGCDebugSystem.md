---
title: UGCDebugSystem
language: lua
---

# UGCDebugSystem

调试系统接口库

## Functions

### PrintToScreen

屏幕左上角逐行打印字符串
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | string | 要打印的字符串 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### FlushOnScreenDebugMessages

清除屏幕上持续时间未过的字符串
生效范围：客户端

### DrawDebugLine

绘制直线
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LineStart | FVector | 结构Vector={X=0,Y=0,Z=0} |
| LineEnd | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugPoint

绘制点
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Position | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Size | number | 点的大小 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugArrow

绘制箭头
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LineStart | FVector | 结构Vector={X=0,Y=0,Z=0} |
| LineEnd | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugCircle

绘制圆
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Center | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Radius | number | 圆的半径 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |
| YAxis | FVector | 椭圆半长轴方向向量，模长影响缩放; 缺省为{X=0,Y=1,Z=0}; 结构Vector={X=0,Y=0,Z=0} |
| ZAxis | FVector | 椭圆半短轴方向向量，模长影响缩放; 缺省为{X=0,Y=0,Z=1}; 结构Vector={X=0,Y=0,Z=0} |
| bDrawAxis | boolean | 缺省为0 |

### DrawDebugCoordinateSystem

绘制坐标系
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AxisLoc | FVector | 结构Vector={X=0,Y=0,Z=0} |
| AxisRot | FRotator | 结构Rot={Pitch=0,Yaw=0,Roll=0} |
| Scale | number | 坐标轴长度; 缺省为100 |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugBox

绘制盒子
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Center | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Extent | FVector | 表示盒子中心到各面的距离; 结构Vector={X=0,Y=0,Z=0} |
| Rotation | FRotator | 结构Rot={Pitch=0,Yaw=0,Roll=0} |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugSphere

绘制球体
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Center | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Radius | number | 球的半径 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugCylinder

绘制圆柱体
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Radius | number | 底面半径 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugCapsule

绘制胶囊
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Center | FVector | 结构Vector={X=0,Y=0,Z=0} |
| HalfHeight | number | 胶囊半高 |
| Radius | number | 截面圆半径 |
| Rotation | FRotator | 结构Rot={Pitch=0,Yaw=0,Roll=0}; |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugString

绘制文本
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TextLocation | FVector | 未绑定Actor时为世界坐标，绑定Actor时为相对Actor的坐标; 结构Vector={X=0,Y=0,Z=0} |
| Text | string | 显示的文本 |
| TestBaseActor | AActor | 绑定在哪个Actor上 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### FlushDebugStrings

清空场景中持续时间未过的调试文本（不包括UI）
生效范围：客户端

### FlushDebugLines

清空场景中持续时间未过的调试图形
生效范围：客户端

### DrawDebugActorName

绘制Actor名称
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 目标Actor |
| Offset | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugActorMoveTrack

绘制Actor运动轨迹
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 目标Actor |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，此时运动轨迹将持续保留 |

### DrawDebugDistance

绘制Self到Target的连线和距离数值
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Self | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Target | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugTargetAimedAt

绘制准心瞄准物体名称
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Length | number | 生效距离，缺省为10000 |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugLineTraceSingle

绘制射线与第一处命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugLineTraceMulti

绘制射线与全部命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugSphereTraceSingle

绘制沿射线运动的球体轨迹与第一处命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Radius | number | 球体半径 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugSphereTraceMulti

绘制沿射线运动的球体轨迹与全部命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Radius | number | 球体半径 |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugBoxTraceSingle

绘制沿射线运动的方盒轨迹与第一处命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| HalfSize | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Orientation | FRotator | 结构Rot={Pitch=0,Yaw=0,Roll=0} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugBoxTraceMulti

绘制沿射线运动的方盒轨迹与全部命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| HalfSize | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Orientation | FRotator | 结构Rot={Pitch=0,Yaw=0,Roll=0} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugCapsuleTraceSingle

绘制沿射线运动的胶囊轨迹与第一处命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Radius | number | 胶囊截面圆半径 |
| HalfSize | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugCapsuleTraceMulti

绘制沿射线运动的胶囊轨迹与全部命中标记
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 结构Vector={X=0,Y=0,Z=0} |
| End | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Radius | number | 胶囊截面圆半径 |
| HalfSize | FVector | 结构Vector={X=0,Y=0,Z=0} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugActorCollision

绘制碰撞盒
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 目标Actor |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |

### DrawDebugActorBounds

绘制包围盒
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor | 目标Actor |
| Color | FLinearColor | 缺省为红色; 结构Color={A=1,B=1,G=1,R=1} |
| Duration | number | 缺省为0，即每帧调用一次，保持一帧时间 |