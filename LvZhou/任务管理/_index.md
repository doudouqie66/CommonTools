---
title: 任务管理
description: 当前正在做的事情和任务追踪
tags:
  - tasks
  - project-management
created: 2026-07-14
---

# 📋 任务管理

> 当前工作和项目的集中管理入口

---

## 🎯 任务看板

| # | 任务 | 状态 | 创建 |
|:-:|:-----|:----:|:----:|
| 1 | [[任务管理/1. TaskMgr-任务进度管理中心\|TaskMgr 任务进度管理中心]] | ✅ 已完成 | 07-14 |
| 2 | [[任务管理/2. 人物等级经验\|人物等级经验]] | ✅ 已完成 | 07-15 |

### 状态说明

|   状态    |  含义   | frontmatter `status` 值 |
| :-----: | :---: | :--------------------- |
|  📝 待办  | 还没开始做 | `todo`                 |
| 🏗️ 进行中 |  正在做  | `wip`                  |
|  ✅ 已完成  |  做完了  | `done`                 |
|  ⏸️ 暂停  | 暂时搁置  | `paused`               |
|  ❌ 已取消  |  不做了  | `cancelled`            |

> 每个任务笔记的 **frontmatter** 里写 `status: wip` 即可自动归类。

---

## 📂 新建任务模板

```markdown
---
title: 任务名称
description: 简短描述
status: todo    # todo | wip | done | paused | cancelled
tags:
  - task
created: 2026-07-14
---

# 任务名称

## 目标

_要做成什么_

## 待办清单

- [ ] 
- [ ] 

## 备注

```

---

_created: 2026-07-14_
