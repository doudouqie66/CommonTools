---
title: UGCCircleManagerSystem
language: lua
---

# UGCCircleManagerSystem

信号圈系统接口库

## Functions

### GetBlueCircleCenter

获取当前蓝圈中心
生效范围：服务器&客户端

**Return:** Vector2D 蓝圈中心 {X，Y}

### GetWhiteCircleCenter

获取当前白圈中心
生效范围：服务器&客户端

**Return:** Vector2D 白圈中心 {X，Y}

### GetBlueCircleRadius

获取当前蓝圈半径
生效范围：服务器&客户端

**Return:** number 半径

### GetWhiteCircleRadius

获取当前白圈半径
生效范围：服务器&客户端

**Return:** number 半径

### GetCurrentCircleIndex

获得当前运行到的信号圈序号
生效范围：服务器

**Return:** number 信号圈序号 缩圈结束时，返回最后一个信号圈序号

### GetAllCircleConfig

获得所有信号圈配置
生效范围：服务器

**Return:** FCirCleCfg[] 所有信号圈配置

### GetCurrentConfigCircle

获取当前信号圈配置
生效范围：服务器

**Return:** FCirCleCfg 当前信号圈配置

### GetNextConfigCircle

获取下一信号圈配置
生效范围：服务器

**Return:** FCirCleCfg 下一信号圈配置

### TogglePoisonCircle

开启或者关闭信号圈（关闭状态则开启，开启状态则关闭）
生效范围：服务器

**Return:** boolean 调用后状态为开启或者关闭

### StartCircle

启用信号圈
生效范围：服务器

### StopCircle

关闭信号圈
生效范围：服务器

### PauseCircle

暂停信号圈
生效范围：服务器

### ResumeCircle

恢复暂停信号圈
生效范围：服务器