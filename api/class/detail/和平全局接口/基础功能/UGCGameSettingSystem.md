---
title: UGCGameSettingSystem
language: lua
---

# UGCGameSettingSystem

游戏配置通用接口库

## Functions

### GetDeviceLevel

获取设备水平（0=低端机，1=中端机，2=高端机）
生效范围：客户端

**Return:** number 设备水平级别

### GetRenderQualitySetting

获取渲染水平设置（画面品质）
生效范围：客户端

**Return:** ERenderQuality 渲染水平枚举值

### GetRenderStyleSetting

获取渲染风格设置（画面风格）
生效范围：客户端

**Return:** ERenderStyle 渲染风格枚举值

### AllowSoftwareOcclusion

是否开启软件遮挡剔除（默认开启）。2D 类游戏建议关闭，否则在手机上层次相近（接近重叠）的物体处，可能会出现（黑屏）闪烁
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnabled | boolean | 是否开启 |