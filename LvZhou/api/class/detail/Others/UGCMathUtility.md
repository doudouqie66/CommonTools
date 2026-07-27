---
title: UGCMathUtility
language: lua
---

# UGCMathUtility

数学工具接口库

## Functions

### Sin

返回A的正弦值(sin)，结果为弧度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number sin(A)

### Asin

返回A的反正弦值(arcsin)，结果为弧度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number arcsin(A)

### Cos

返回A的余弦值(cos)，结果为弧度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number cos(A)

### Acos

返回A的反余弦值(arccos)，结果为弧度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number arccos(A)

### Tan

返回A的正切值(tan)，结果为弧度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number tan(A)

### Atan

返回A的反正切值(arctan)，结果为弧度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number arctan(A)

### DegSin

返回A的正弦值(sin)，结果为角度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number sin(A)

### DegAsin

返回A的反正弦值(arcsin)，结果为角度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number arcsin(A)

### DegCos

返回A的余弦值(cos)，结果为角度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number cos(A)

### DegAcos

返回A的反余弦值(arccos)，结果为角度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number arccos(A)

### DegTan

返回A的正切值(tan)，结果为角度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number tan(A)

### DegAtan

返回A的反正切值(arctan)，结果为角度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |

**Return:** number arctan(A)

### DegAtan2

返回A/B的反正切值(atan2)，结果为角度制

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |
| B | number | B |

**Return:** number arctan(A/B)

### RandomFloat

返回一个介于0和1之间的随机浮点数

**Return:** number 随机浮点数

### RandomFloatInRange

生成一个介于Min和Max之间的随机数

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMin | number | 最小值 |
| InMax | number | 最大值 |

**Return:** number 随机数

### Lerp

根据Alpha在A和B之间线性插值（Alpha=0时返回A，Alpha=1时返回B））

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |
| B | number | B |
| Alpha | number | Alpha |

**Return:** number 线性插值

### FClamp

【废弃】请使用 UGCMathUtility.Clamp
返回限制在A和B之间的值（包含A和B）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | number | 值 |
| InMin | number | 最小值 |
| InMax | number | 最大值 |

**Return:** number 限制后的值

### MapRangeClamped

将数值从一个输入范围映射到另一个输出范围（数值会被限制在输入范围内）。（例如：将0.5从0→1范围映射到0→50范围会得到25）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | number | 值 |
| InMinIn | number | 输入范围最小值 |
| InMaxIn | number | 输入范围最大值 |
| InMinOut | number | 输出范围最小值 |
| InMaxOut | number | 输出范围最大值 |

**Return:** number 映射后的值

### NearlyEqualFloat

返回A是否近似等于B（|A - B| < 误差容限）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |
| B | number | B |
| Tolerance | number | 误差容限 |

**Return:** boolean 是否近似等于

### NotEqualFloat

如果A不等于B则返回true

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | number | A |
| B | number | B |

**Return:** boolean 是否不等于

### Now

返回当前计算机的本地日期和时间

**Return:** FDateTime 当前计算机的本地日期和时间

### Today

返回当前计算机的本地日期

**Return:** FDateTime 当前计算机的本地日期

### UtcNow

返回当前计算机的UTC日期和时间

**Return:** FDateTime 当前计算机的UTC日期和时间

### GetYear

返回A的年分量值

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FDateTime | A |

**Return:** number 年分量值

### GetMonth

返回A的月分量值

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FDateTime | A |

**Return:** number 月分量值

### DaysInMonth

返回给定年份和月份的天数

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Year | number | 年份 |
| Month | number | 月份 |

**Return:** number 天数

### AddVector

向量加法

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FVector | B |

**Return:** FVector 

### AddVector2D

返回二维向量A和二维向量B的和（A + B）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |
| B | FVector2D | B |

**Return:** FVector2D 

### SubtractVector

向量减法

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FVector | B |

**Return:** FVector 

### SubtractVector2D

返回二维向量A和二维向量B的差（A - B）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |
| B | FVector2D | B |

**Return:** FVector2D 

### MultiplyVector

将向量A按B缩放

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | number | B |

**Return:** FVector 

### MultiplyVector2D

将二维向量A按B缩放

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |
| B | number | B |

**Return:** FVector2D 

### VSize

返回向量的长度

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |

**Return:** number 

### VSize2D

返回二维向量的长度

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |

**Return:** number 

### VSizeSquared

返回向量的长度的平方

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |

**Return:** number 

### VSizeSquared2D

返回二维向量的长度的平方

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |

**Return:** number 

### EqualVector

判断向量A是否在允许误差范围内等于向量B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FVector | B |
| Tolerance | number | 允许误差，默认为1.e-4f |

**Return:** boolean 

### NotEqualVector

判断向量A是否在允许误差范围内不等于向量B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FVector | B |
| Tolerance | number | 允许误差，默认为1.e-4f |

**Return:** boolean 

### DotVector

返回两个向量的点积

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FVector | B |

**Return:** number 

### CrossVector

返回两个向量的叉积

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FVector | B |

**Return:** FVector 

### DotVector2D

返回两个二维向量的点积

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |
| B | FVector2D | B |

**Return:** number 

### CrossVector2D

返回两个二维向量的叉积

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |
| B | FVector2D | B |

**Return:** number 

### RotateVector

返回向量A经过 Rotator B 旋转后的结果

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FRotator | B |

**Return:** FVector Vector

### RotateAngleAxis

返回向量A绕Axis轴旋转AngleDeg角度后的结果

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| AngleDeg | number | AngleDeg |
| Axis | FVector | Axis |

**Return:** FVector Vector

### Normal

返回向量A的单位法向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |

**Return:** FVector Vector

### Normal2D

返回二维向量A的单位法向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector2D | A |

**Return:** FVector2D Vector

### VLerp

根据Alpha值在向量A和向量B之间线性插值（Alpha=0时返回100%A，Alpha=1时返回100%B）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FVector | A |
| B | FVector | B |
| Alpha | number | Alpha |

**Return:** FVector Vector

### RandomUnitVector

返回一个长度为1的随机向量

**Return:** FVector Vector

### RandomPointInBoundingBox

返回指定边界框内的随机点

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Origin | FVector | Origin |
| BoxExtent | FVector | BoxExtent |

**Return:** FVector Point

### ProjectVectorOnToVector

将向量V投影到目标向量Target上并返回投影向量，如果Target长度接近零，则返回零向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | V |
| Target | FVector | Target |

**Return:** FVector Vector

### FInterpTo

根据当前值到目标值的插值进行平滑过渡，实现流畅的过度效果

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | number | 当前值 |
| Target | number | 目标值 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** number 新的插值位置

### FInterpConstantTo

以恒定速率向目标值变换

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | number | 当前值 |
| Target | number | 目标值 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** number Location

### VInterpTo

根据向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | FVector | 当前位置 |
| Target | FVector | 目标位置 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** FVector 新的插值位置

### VInterpConstantTo

以恒定速率向向量表示的目标位置移动

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | FVector | 当前位置 |
| Target | FVector | 目标位置 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** FVector Location

### Vector2DInterpTo

根据二维向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | FVector2D | 当前位置 |
| Target | FVector2D | 目标位置 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** FVector2D 新的插值位置

### Vector2DInterpConstantTo

以恒定速率向二维向量表示的目标位置移动

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | FVector2D | 当前位置 |
| Target | FVector2D | 目标位置 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** FVector2D Location

### RInterpTo

根据当前旋转角度平滑过渡到目标旋转角度，实现流畅的旋转效果

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | FRotator | 当前旋转角度 |
| Target | FRotator | 目标旋转角度 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** FRotator 新的插值旋转角度

### RInterpConstantTo

以恒定速率向目标旋转角度旋转

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Current | FRotator | 当前旋转角度 |
| Target | FRotator | 目标旋转角度 |
| DeltaTime | number | 平滑时间 |
| InterpSpeed | number | 插值速度 |

**Return:** FRotator Location

### FindClosestPointOnSegment

查找线段上距离给定点最近的点

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Point | FVector | 需要计算最近点的目标点 |
| SegmentStart | FVector | 线段起点 |
| SegmentEnd | FVector | 线段终点 |

**Return:** FVector 线段上距离给定点最近的点

### FindClosestPointOnLine

找到无限长直线上距离给定点最近的点

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Point | FVector | 需要计算最近点的目标点 |
| LineOrigin | FVector | 直线上的参考点 |
| LineDirection | FVector | 直线上的方向向量(无需归一化) |

**Return:** FVector Point

### GetPointDistanceToSegment

计算点到线段的最短距离

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Point | FVector | 需要计算最近点的目标点 |
| SegmentStart | FVector | 线段起点 |
| SegmentEnd | FVector | 线段终点 |

**Return:** number 点到线段的最短距离

### GetPointDistanceToLine

计算点到无限长直线的最短距离

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Point | FVector | 需要计算距离的目标 |
| LineOrigin | FVector | 直线上的参考点 |
| LineDirection | FVector | 直线上的方向向量(无需归一化) |

**Return:** number 点到直线上的最短距离

### ProjectVectorOnToPlane

将向量投影到由法向量定义的平面上

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | 需要投影的向量 |
| PlaneNormal | FVector | 法向量 |

**Return:** FVector 投影后的向量

### NegateVector

向量取反

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | 需要取反的向量 |

**Return:** FVector 取反后的向量

### ClampVectorSize

将向量长度限制在最小值和最大值之间

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | 需要限制长度的向量 |
| Min | number | 最小长度 |
| Max | number | 最大长度 |

**Return:** FVector 限制长度后的向量

### GetMinElement

找出向量中(X, Y或Z)的最小分量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | 需要计算最小分量的向量 |

**Return:** number 最小分量

### GetMaxElement

找出向量中(X, Y或Z)的最大分量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | 需要计算最大分量的向量 |

**Return:** number 最大分量

### GetDirectionUnitVector

计算从一个位置指向另一个位置的单位方向向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| From | FVector | 起点 |
| To | FVector | 终点 |

**Return:** FVector 单位方向向量

### EqualName

如果A和B相等则返回true (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | string | A |
| B | string | B |

**Return:** boolean true or false

### NotEqualName

如果A和B不相等则返回true (A ~= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | string | A |
| B | string | B |

**Return:** boolean true or false

### MakeBox

通过最小点和最大点创建一个FBox，并将IsValid设为true

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Min | FVector | 最小点 |
| Max | FVector | 最大点 |

**Return:** FBox FBox

### MakeBox2D

通过最小点和最大点创建一个FBox2D，并将IsValid设为true

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Min | FVector2D | 最小点 |
| Max | FVector2D | 最大点 |

**Return:** FBox2D FBox2D

### MakeVector

创建一个向量 {X, Y, Z}

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| X | number | X |
| Y | number | Y |
| Z | number | Z |

**Return:** FVector 向量

### BreakVector

将向量分解为X、Y和Z分量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | 向量 |

**Return:** number,number,number X,Y,Z

### MakeVector2D

创建一个二维向量 {X, Y}

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| X | number | X |
| Y | number | Y |

**Return:** FVector2D 向量

### BreakVector2D

将二维向量分解为X和Y分量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector2D | 向量 |

**Return:** number,number X,Y

### GetForwardVector

按给定旋转角度旋转世界前向向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InRot | FRotator | 旋转角度 |

**Return:** FVector 矩阵

### GetRightVector

按给定旋转角度旋转世界右向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InRot | FRotator | 旋转角度 |

**Return:** FVector 矩阵

### GetUpVector

按给定旋转角度旋转世界上向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InRot | FRotator | 旋转角度 |

**Return:** FVector 矩阵

### GetYawPitchFromVector

将向量分解为Yaw(偏航角)和Pitch(俯仰角)旋转值(角度制，不限制范围)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | FVector | 向量 |

**Return:** number,number Yaw,Pitch

### MakeRotator

使用以度数为单位提供的旋转值创建旋转器{Roll, Pitch, Yaw}

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Roll | number | Roll |
| Pitch | number | Pitch |
| Yaw | number | Yaw |

**Return:** FRotator 矩阵

### FindLookAtRotation

查找一个物体在起始位置指向目标位置所需的旋转角度

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Start | FVector | 起始位置 |
| Target | FVector | 目标位置 |

**Return:** FRotator 矩阵

### MakeRotFromX

仅使用X轴构建Rotator。Y和Z轴未指定但将保持正交归一。X轴无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| XAxis | FVector | X轴 |

**Return:** FRotator 矩阵

### MakeRotFromY

仅使用Y轴构建Rotator。X和Z轴未指定但将保持正交归一。Y轴无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| YAxis | FVector | Y轴 |

**Return:** FRotator 矩阵

### MakeRotFromZ

仅使用Z轴构建Rotator。X和Y轴未指定但将保持正交归一。Z轴无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ZAxis | FVector | Z轴 |

**Return:** FRotator 矩阵

### MakeRotFromXY

使用给定的X和Y轴构建矩阵。X轴保持不变，Y轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| XAxis | FVector | X轴 |
| YAxis | FVector | Y轴 |

**Return:** FRotator 矩阵

### MakeRotFromXZ

使用给定的X和Z轴构建矩阵。X轴保持不变，Z轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| XAxis | FVector | X轴 |
| ZAxis | FVector | Z轴 |

**Return:** FRotator 矩阵

### MakeRotFromYX

使用给定的Y和X轴构建矩阵。Y轴保持不变，X轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| YAxis | FVector | Y轴 |
| XAxis | FVector | X轴 |

**Return:** FRotator 矩阵

### MakeRotFromYZ

使用给定的Y和Z轴构建矩阵。Y轴保持不变，Z轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| YAxis | FVector | Y轴 |
| ZAxis | FVector | Z轴 |

**Return:** FRotator 矩阵

### MakeRotFromZX

使用给定的Z和X轴构建矩阵。Z轴保持不变，X轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ZAxis | FVector | Z轴 |
| XAxis | FVector | X轴 |

**Return:** FRotator 矩阵

### MakeRotFromZY

使用给定的Z和Y轴构建矩阵。Z轴保持不变，Y轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ZAxis | FVector | Z轴 |
| YAxis | FVector | Y轴 |

**Return:** FRotator 矩阵

### BreakRotator

将Rotator分解为{Roll, Pitch, Yaw}角度值(单位:度)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rotator | FRotator | Rotator |

**Return:** number,number,number Roll,Pitch,Yaw

### MakeTransform

根据位置、旋转和缩放创建Transform

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Location | FVector | 位置 |
| Rotation | FRotator | 旋转 |
| Scale | FVector | 缩放 |

**Return:** FTransform transformFVecto

### BreakTransform

将transform分解为{Location, Rotation, Scale}值

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Transform | FTransform | Transform |

**Return:** FVector,FRotator,FVector Location,Rotation,Scale

### Conv_VectorToLinearColor

将向量转换为LinearColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vector | FVector | 向量 |

**Return:** FLinearColor LinearColor

### Conv_ColorToLinearColor

将Color转换为LinearColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Color | FColor | Color |

**Return:** FLinearColor LinearColor

### Conv_LinearColorToColor

将LinearColor转换为Color

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LinearColor | FLinearColor | LinearColor |

**Return:** FColor Color

### Conv_VectorToVector2D

将向量转换为二维向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vector | FVector | 向量 |

**Return:** FVector2D 二维向量

### Conv_Vector2DToVector

将二维向量转换为向量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vector2D | FVector2D | 二维向量 |

**Return:** FVector 向量

### HSVToRGB

根据HSV分量创建颜色

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| H | number | 色相 |
| S | number | 饱和度 |
| V | number | 明度 |
| A | number | 透明度 |

**Return:** FLinearColor Color