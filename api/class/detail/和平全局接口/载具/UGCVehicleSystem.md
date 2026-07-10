---
title: UGCVehicleSystem
language: lua
---

# UGCVehicleSystem

载具系统接口库

## Functions

### SpawnVehicle

【废弃】请使用 UGCVehicleSystem.SpawnVehicleNew
生成载具
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| VehicleID | number | 载具表ID |
| Location | Vector | 生成位置 |
| Rotation | Rotator | 旋转 |
| IsForce | boolean | 是否无视碰撞强行生成 |

**Return:** ASTExtraVehicleBase 载具

### EnterVehicle

进入载具
仅限普通玩家控制的角色（Character）可以用
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Pawn | ASTExtraBaseCharacter | 普通玩家 |
| Vehicle | ASTExtraVehicleBase | 载具 |
| SeatType | ESTExtraVehicleSeatType | 座位类型 |
| IsForce | boolean | 是否无视距离和阻挡 |

### ExitVehicle

离开载具
仅限普通玩家控制的角色可以用
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Pawn | ASTExtraBaseCharacter | 普通玩家 |

### GetVehicleSeatCount

获取载具的座位数量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 载具的座位数量

### GetVehicleSeatOccupiers

获取载具座位上的乘客列表（包括司机）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 对应的载具 |

**Return:** ASTExtraBaseCharacter[] 载具上的乘客们（包括司机）

### GetVehicleSeatType

获取载具对应 SeatIndex 编号的座位类型
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| SeatIndex | number | 座位编号(从1开始) |

**Return:** ESTExtraVehicleSeatType 载具座位类型

### GetOccupierBySeatIndex

获取 SeatIndex 编号获取对应座位上的乘客 Pawn
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| SeatIndex | number | 座位编号（从 1 开始） |

**Return:** ASTExtraBaseCharacter 对应乘客，如果没有则返回 nil

### SpawnVehicleNew

使用蓝图路径生成载具
不要在 Spawn 之后立马修改载具位置，等载具落地停稳后再修改，不然位置修改会失败（如果有类似需求，建议直接创建在对应点）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| VehicleBlueprintPath | string | 载具蓝图路径，格式类似 /Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C |
| Location | Vector | 生成位置 |
| Rotation | Rotator | 旋转 |
| SnapFloor | boolean | 是否贴地 |
| IsForce | boolean | 是否无视碰撞强行生成 |

**Return:** ASTExtraVehicleBase 载具

### CharacterEnterVehicle

乘客进入载具
仅限普通玩家控制的角色可以用
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Character | ASTExtraBaseCharacter | 乘客 |
| Vehicle | ASTExtraVehicleBase | 载具 |
| SeatType | ESTExtraVehicleSeatType | 座位类型 |
| IsForce | boolean | 是否无视距离和阻挡 |

**Return:** boolean 是否成功

### CharacterLeaveVehicle

乘客离开当前所在载具
仅限普通玩家控制的角色可以用
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Character | ASTExtraBaseCharacter | 乘客 |

### TeleportVehicleTo

传送载具
不要在 Spawn 之后立马传送载具，等载具落地停稳后再传送，不然传送会失败（如果有类似需求，建议直接创建在对应点）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| Location | Vector | 位置 |
| Rotator | Rotator | 旋转 |

### GetForwardSpeed

获得载具当前速度(单位是cm/s)
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 载具当前速度

### IsStoped

载具是否静止
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** boolean 载具是否静止

### IsEngineStarted

载具引擎是否启动
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** boolean 载具引擎是否启动

### GetVehicleHealthState

获得当前载具健康状态
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** ESTExtraVehicleHealthState 载具当前健康状态

### DestroySelf

摧毁载具
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### Respawn

重生载具
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### GetSeatState

指定座位上是否有人
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| SeatIndex | number | 座位 ID |

**Return:** boolean 指定座位上是否有人

### GetSeatNum

获得载具座位个数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 载具座位个数

### GetWheelNum

获得轮胎数量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 载具轮子数量

### IsWheelDamageable

获得轮胎是否可以被摧毁
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| WheelIndex | number | 轮胎 ID（从 1 开始） |

**Return:** boolean 轮胎是否可以被摧毁

### SetWheelDamageable

设置轮胎是否可以被摧毁
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| WheelIndex | number | 轮胎ID（从1开始） |
| Damageable | boolean | 是否可以被摧毁 |

### StopFireVehicleWeapon

车载武器停止攻击
仅限驾驶位车载武器生效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| VehicleWeapon | AVehicleShootWeapon | 车载武器 |

### StartFireVehicleWeapon

车载武器开始攻击
仅限驾驶位车载武器生效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| VehicleWeapon | AVehicleShootWeapon | 车载武器 |
| Character | ASTExtraBaseCharacter | 攻击者(传入 nil 视为 Driver) |

### GetVehicleWeapon

获得指定座位上指定 ID 的武器实例
武器 ID 指载具蓝图中，座位上配置的武器序号
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| SeatIndex | number | 座位ID（从 1 开始） |
| WeaponID | number | 武器ID（从 1 开始） |

**Return:** AVehicleShootWeapon 武器实例

### GetAllVehicleWeaponList

获得所有车载武器的列表
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** AVehicleShootWeapon[] 武器列表

### StopMusic

暂停播放车载音乐
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### GetVehicleType

获得载具类型
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** ESTExtraVehicleType 载具类型

### StartBrake

载具拉起手刹
仅在主控端（驾驶员端）调用有效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### StopBrake

载具放下手刹
仅在主控端（驾驶员端）调用有效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### CanDriverBoosting

获得载具是否能够加速
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** boolean 载具是否能够加速

### StartBoosting

载具加速
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### StopBoosting

载具取消加速
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### CanDriverUsingHorn

是否能按喇叭
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** boolean 是否能按喇叭

### StartHorn

载具长按喇叭（按下）
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### StopHorn

载具长按喇叭（抬起）
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

### MoveForward

载具前进/后退
需要在驾驶员所在客户端每帧调用
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| Throttle | number | 取值范围[-1,1]，负值代表后退，正值代表前进 |

### CanDrive

驾驶员是否可以操控载具
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** boolean 是否可以操控载具

### PlayMusic

播放车载音乐
注意，武装载具不支持车载音乐功能
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| MusicIndex | number | 曲目ID（取值范围[1,8]） |

### GetVehicleBaseType

获取载具的基础类型
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** ESTExtraVehicleBaseType 载具基础类型

### ModifyWheeledVehicleDragCoefficientScale

修改空气阻力的倍率
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| Scale | number | 空气阻力的修改倍率 |

### ModifyWheeledVehicleMaxRPMScale

修改引擎最大转速的倍率
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| Scale | number | 引擎最大转速的修改倍率 |

### ModifyWheeledVehicleTorqueScale

修改引擎扭矩的倍率
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| Scale | number | 引擎扭矩的修改倍率 |

### BrakeInCustomizeScale

用自定义倍率刹车
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| Scale | number | 自定义刹车倍率 |

### GetVehicleByPlayerController

通过 PlayerController 获取 Vehicle
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController | 对应的玩家控制器 |

**Return:** ASTExtraVehicleBase 对应的载具