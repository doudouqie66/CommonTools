---
title: UGCCameraManagerSystem
language: lua
---

# UGCCameraManagerSystem

相机管理器系统接口库

## Functions

### GetInVehicleFPPViewPitchLimitMin

获得第一人称视角下在载具内的 Pitch 视角限制（最小值）
生效范围：客户端

**Return:** @Pitch 视角限制（最小值）

### SetInVehicleFPPViewPitchLimitMin

设置第一人称视角下在载具内的 Pitch 视角限制（最小值）
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PitchLimit | number | Pitch 视角限制（最小值） |

### GetInVehicleFPPViewYawLimit

获得第一人称视角下在载具内的 Yaw 视角限制
生效范围：客户端

**Return:** @Yaw 视角限制

### SetInVehicleFPPViewYawLimit

设置第一人称视角下在载具内的 Yaw 视角限制
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| YawLimit | number | Yaw 视角限制 |

### GetInVehicleNarrowSeatGrenadesYawLimit

获得在载具内的狭窄座位手雷投掷 Yaw 视角限制
生效范围：客户端

**Return:** @Yaw 视角限制

### SetInVehicleNarrowSeatGrenadesYawLimit

设置在载具内的狭窄座位手雷投掷 Yaw 视角限制
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| YawLimit | number | Yaw 视角限制 |