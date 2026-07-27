---
category: "模式编辑器"
tags:
  - Gameplay
  - 标签
  - 配置
---
### 删除标签

选中要删除的标签，点击右侧三角下拉框，选择 ```Delete``` 按钮即可删除标签。

![image.png](https://cgugc-video-test-1258633575.cos.ap-shanghai.myqcloud.com/wiki_picture/UV8Pjimage.png)

删除标签前需要确保该标签没有被其他系统功能的蓝图配置所引用，否则会提示无法删除。

![image.png](https://cgugc-video-test-1258633575.cos.ap-shanghai.myqcloud.com/wiki_picture/gDfc0image.png)

**注意：**
> 系统预置的标签不可删除

<br>

## 使用GameplayTag

### 引用标签

一些系统功能涉及标签的引用配置，例如 [Buff编辑器](https://developer.gp.qq.com/wikieditor/#/catalog/20087?autoJump=%E7%8A%B6%E6%80%81%E4%BA%92%E6%96%A5) 可以通过 ```Tag``` 过滤施放的对象或根据角色状态决定是否可获得Buff。

![image.png](https://cgugc-video-test-1258633575.cos.ap-shanghai.myqcloud.com/wiki_picture/J2N5eimage.png)

---

### 脚本中访问标签

[[api/class/detail/和平全局接口/工具库/UGCGameplayTagSystem|``UGCGameplayTagSystem``]] 库提供了校验标签相关的API，开发者可以在脚本中调用API以实现特定的玩法逻辑。

<br>

## GameplayTag匹配

GameplayTag系统支持基于层级结构的Tag匹配，目前提供了三种匹配方式：[[api/class/detail/和平全局接口/工具库/UGCGameplayTagSystem|``MatchesTag``]]、[[api/class/detail/和平全局接口/工具库/UGCGameplayTagSystem|``EqualsTag``]] 和 [[api/class/detail/和平全局接口/工具库/UGCGameplayTagSystem|``HasTag``]]。

**MatchesTag**

`MatchesTag` 判断两个标签是否匹配，具体规则如下：
- 精确匹配：两个标签完全相同（如 `A.Test` 与 `A.Test`），则返回True
- 模糊匹配：
	- 左值标签最长前缀匹配：`A.Test` 会匹配 `A`
	- 右值标签最长前缀匹配：`A` 与 `A.Test` 不匹配

| **Source**     | **Function**    | **Target** | **Return Value** |
|----------------|-----------------|---------------------|------------------|
| A              | MatchesTag      | A                   | true             |
| A              | MatchesTag      | A.Test              | false            |
| A.Test         | MatchesTag      | A                   | true             |
| A.Test         | MatchesTag      | A.Test              | true             |
| A.Test         | MatchesTag      | B                   | false            |
| B              | MatchesTag      | A.Test              | false            |
| A.Test         | MatchesTag      | A.Other             | false            |

---

**EqualsTag**

`EqualsTag` 用于比较两个标签是否完全相同，效果等同于 ``MatchesTag``。

| **Source**     | **Function**    | **Target** | **Return Value** |
|----------------|-----------------|---------------------|------------------|
| A              | EqualsTag       | A                   | true             |
| A              | EqualsTag       | A.Test              | false            |
| A.Test         | EqualsTag       | A                   | false            |
| A.Test         | EqualsTag       | A.Test              | true             |
| A.Test         | EqualsTag       | B                   | false            |
| B              | EqualsTag       | A.Test              | false            |

---

**HasTag**

`HasTag` 检查一个标签集中是否包含某个特定标签。

| **Source**     | **Function**    | **Target** | **Return Value** |
|----------------|-----------------|---------------------|------------------|
| {A, A.Test}    | HasTag          | A                   | true             |
| {A, A.Test}    | HasTag          | A.Test              | true             |
| {A, A.Test}    | HasTag          | A.Other             | false            |
| {A}            | HasTag          | A.Test              | false            |
| {A, B}         | HasTag          | A.Test              | false            |
| {A, B}         | HasTag          | B                   | true             |