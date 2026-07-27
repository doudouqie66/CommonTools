---
title: UGCCharAvatarShowcaseActor
language: lua
---

# UGCCharAvatarShowcaseActor

复制玩家角色Avatar的Actor

## Functions

### ClientShowAvatar

显示PlayerUID的Avatar
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerUID | number | 玩家的 PlayerUID |

### ServerShowAvatar

显示PlayerUID的Avatar
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerUID | number | 玩家的 PlayerUID |

### PlayAnim

播放动画
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAnimToPlay | UAnimationAsset | 动画资源 |
| bLooping | boolean | 是否循环播放 |