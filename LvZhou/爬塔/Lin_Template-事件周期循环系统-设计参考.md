# 事件周期循环系统 — 设计参考

> Lin_Template 项目 · 仅供代码参考，不直接写入项目

---

## 核心原则

- **EventScheduler 跑在 GameMode（服务端）**，所有玩家共享同一条时间轴
- 后加入的玩家通过 `GetCurrentElapsed()` 获取当前进度，同步活跃事件状态

---

## 整体架构

```
┌─────────────────┐      ┌──────────────────┐      ┌──────────────────┐
│  EventConfig    │──────│  EventScheduler  │──────│  效果接口(你的)  │
│  (配置表)       │ 读取 │  (调度器)        │ 调用 │  OnStart/OnEnd   │
└─────────────────┘      └──────────────────┘      └──────────────────┘
```

## 文件 1 — `Script/Common/EventConfig.lua`

配置层，所有时间轴数据放这里，改时间只动这一个文件。

```lua
EventConfig = EventConfig or {}

EventConfig.CycleEvents = {
    {
        name          = "移动减速",
        warnStartTime = 60,     -- 60s 弹出倒计时提醒
        warnDuration  = 10,     -- 倒计时持续 10 秒
        eventDuration = 10,     -- 事件生效持续 10 秒
    },
    {
        name          = "黑夜",
        warnStartTime = 120,
        warnDuration  = 10,
        eventDuration = 10,
    },
    {
        name          = "移动加速",
        warnStartTime = 300,
        warnDuration  = 10,
        eventDuration = 15,
    },
    {
        name          = "移动反方向",
        warnStartTime = 450,
        warnDuration  = 10,
        eventDuration = 10,
    },
    {
        name          = "黑夜",
        warnStartTime = 600,
        warnDuration  = 5,
        eventDuration = 5,
    },
}

-- 一轮总时长 = 最后事件结束时间 = 600 + 5 + 5 = 610 秒
EventConfig.CycleDuration = 610
```

## 文件 2 — `Script/L_Com/EventScheduler.lua`

调度层，负责按时间轴推进事件，调用效果接口。

```lua
EventScheduler = EventScheduler or {}

-- 启动事件循环
function EventScheduler.Start()
    EventScheduler.Elapsed = 0
    UGCTimerUtility.CreateLuaTimer(1.0, function()
        EventScheduler.Elapsed = EventScheduler.Elapsed + 1
        EventScheduler:_CheckEvents(EventScheduler.Elapsed)
    end, true, "EventSchedulerTick")
end

-- 获取当前游戏已进行秒数（供后加入玩家同步）
function EventScheduler.GetCurrentElapsed()
    return EventScheduler.Elapsed or 0
end

-- 获取当前是否有活跃事件（供后加入玩家同步状态）
function EventScheduler.GetActiveEvent()
    local cycleTime = (EventScheduler.Elapsed - 1) % EventConfig.CycleDuration + 1
    for _, event in ipairs(EventConfig.CycleEvents) do
        local eventStart = event.warnStartTime + event.warnDuration
        local eventEnd = eventStart + event.eventDuration
        if cycleTime >= eventStart and cycleTime < eventEnd then
            return event
        end
    end
    return nil
end

-- 每秒检查，判断当前时间点对应哪个阶段
function EventScheduler:_CheckEvents(elapsed)
    -- 按周期取模，一轮结束后自动从头开始
    local cycleTime = (elapsed - 1) % EventConfig.CycleDuration + 1

    for _, event in ipairs(EventConfig.CycleEvents) do
        local eventStart = event.warnStartTime + event.warnDuration

        if cycleTime == event.warnStartTime then
            EventScheduler:_OnWarn(event)                              -- 提醒开始
        elseif cycleTime == eventStart then
            EventScheduler:_OnStart(event)                             -- 事件生效
        elseif cycleTime == eventStart + event.eventDuration then
            EventScheduler:_OnEnd(event)                               -- 事件结束
        end
    end
end

-- ============ 倒计时提醒 ============

function EventScheduler:_OnWarn(event)
    print("⚠ " .. event.name .. " 即将到来！倒计时 " .. event.warnDuration .. " 秒")
    -- 可替换为：L_TipsTool.ShowTips_01(...) 或其他 UI 提示
end

-- ============ 事件生效（接口，由你实现具体效果）============

function EventScheduler:_OnStart(event)
    if event.name == "移动减速" then
        -- TODO: 实现减速效果
    elseif event.name == "黑夜" then
        -- TODO: 实现黑夜效果
    elseif event.name == "移动加速" then
        -- TODO: 实现加速效果
    elseif event.name == "移动反方向" then
        -- TODO: 实现反向控制效果
    end
end

-- ============ 事件结束（接口，由你解除效果）============

function EventScheduler:_OnEnd(event)
    if event.name == "移动减速" then
        -- TODO: 解除减速
    elseif event.name == "黑夜" then
        -- TODO: 恢复亮度
    elseif event.name == "移动加速" then
        -- TODO: 解除加速
    elseif event.name == "移动反方向" then
        -- TODO: 解除反向
    end
end

return EventScheduler
```

## 文件 3 — 启动入口（GameMode）

在 `UGCGameMode.lua` 中启动调度器。注意只需**启动一次**，而不是每个玩家登录都启动。

```lua
-- UGCGameMode.lua

-- 游戏开始时启动事件循环
function UGCGameMode:ReceiveBeginPlay()
    EventScheduler.Start()
end

-- 后加入的玩家：同步当前事件状态
function UGCGameMode:UGC_PlayerLoginEvent(PlayerController)
    local activeEvent = EventScheduler.GetActiveEvent()
    if activeEvent then
        -- 给该玩家施加当前正在生效的事件效果
        EventScheduler:_OnStart(activeEvent)
    end
end
```

## 时间轴示意

```
 0s          60s    70s    80s     120s   130s   140s
 |─────...───┬──────┬──────┬──...──┬──────┬──────┬──...──→  610s 重置
             提醒    生效   结束    提醒    生效   结束
           减速倒计时 减速           黑夜倒计时 黑夜
```

## 关键设计点总结

| 设计 | 说明 |
|------|------|
| 绝对时间 | `warnStartTime` 是从游戏开始算的绝对秒数 |
| 循环 | `%610` 取模，一轮结束自动从头开始 |
| 精度 | 每秒一次 tick 检查，精度 1 秒 |
| 效果接口 | `_OnStart` / `_OnEnd` 留空等你填充 |
| 表驱动 | 新增事件只改配置表，不碰调度逻辑 |
| 前置提醒 | 在 `_OnWarn` 中统一处理提示文字和倒计时显示 |
| 后入同步 | `GetCurrentElapsed()` 获取进度，`GetActiveEvent()` 获取当前活跃事件 |
