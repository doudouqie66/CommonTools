thread_id: 019f5ae7-f690-7f10-adbe-c9d108e5f731
updated_at: 2026-07-13T10:15:25+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\13\rollout-2026-07-13T17-56-21-019f5ae7-f690-7f10-adbe-c9d108e5f731.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\HunHuan

# The user investigated whether Oasis UI has a Unity-ScrollView-like control, then dug into official template list behavior and refresh/jump semantics.

Rollout context: The work happened in `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\HunHuan`. The assistant searched the local Oasis docs/API and then inspected project template Lua under `ExtendResource` to answer UI-list questions from evidence, not guesswork.

## Task 1: Find a Unity-ScrollView-like UI control in Oasis

Outcome: success

Preference signals:

- The user asked in Chinese whether Oasis has something “类似unity中的scrollview那种”, then followed up with “我怎么没有找到” after not seeing it in the editor. This suggests the user wants exact, evidence-backed names/paths rather than generic Unity analogies.
- The user explicitly wanted help finding official docs/templates in the local environment, so future answers should prefer concrete local search terms and paths.

Key steps:

- Searched the local wiki and API for `ScrollBox`, `ScrollBar`, `ListView`, `TileView`, and related terms.
- Confirmed the API contains `UScrollBox`, `UScrollBar`, `UListView`, and `UTileView` classes, with `UScrollBox` described as a scrollable collection of widgets and `UListView` as a large-item dynamic list.
- Found the user’s current project actually contains `ExtendResource/ShopV2` and `ExtendResource/TaskTemplate` template assets/scripts, not the older `Shop_MainUI_UIBP` naming the assistant initially suggested.

Failures and how to do differently:

- Initial searches used the older template name (`Shop_MainUI_UIBP`) and did not match the project’s actual `ShopV2_*` naming. Future searches should pivot quickly to `ShopV2_*` when the project contains `ExtendResource/ShopV2`.
- The UI editor may not expose every API class as a drag-and-drop widget, so “API exists” does not mean “editor palette has it.” Verify both separately.

Reusable knowledge:

- Local API evidence shows `UScrollBox` exists and supports `ScrollToStart`, `ScrollToEnd`, `ScrollWidgetIntoView`, `SetScrollOffset`, and `OnUserScrolled`.
- `UListView` is the better match for large dynamic lists; `UScrollBox` is explicitly described as suitable for roughly 10–100 widgets and “doesn't support virtualization.”
- In this project, the relevant official template assets are under `ExtendResource/ShopV2` and `ExtendResource/TaskTemplate`.

References:

- [1] `D:\LvZhou\LvZhou\api\class\detail\Others\UScrollBox.json` — `UScrollBox` description: “An arbitrary scrollable collection of widgets. Great for presenting 10-100 widgets in a list. Doesn't support virtualization.”
- [2] `D:\LvZhou\LvZhou\api\class\detail\Others\UListView.json` — `UListView` description: “Allows thousands of items to be displayed in a list. Generates widgets dynamically for each item.”
- [3] `rg --files | rg -i "Shop|ShopV2|MainUI|UIBP|Pass|TaskTemplate|Backpack"` in the project found `ExtendResource\ShopV2\OfficialPackage\Script\ShopV2\Arts_UI\UIBP\ShopV2_MainUI_UIBP.lua`, `ShopV2_Goods_UIBP.lua`, and related assets.

## Task 2: Understand how official templates add and populate list items

Outcome: success

Preference signals:

- The user asked by pointing at a visible list UI: “我看到一个滚动框的，然后底下有那些item的，这些item是怎么加上去和赋值的” — they prefer concrete implementation patterns from the official templates, not abstract theory.
- The user later pasted back the assistant’s code snippets and asked “这里哪里用那个复用，我怎么没看见”, indicating they want the exact place where the behavior happens and may not trust inferred explanations without code-level proof.

Key steps:

- Opened `ExtendResource/ShopV2/OfficialPackage/Script/ShopV2/Arts_UI/UIBP/ShopV2_Goods_UIBP.lua` and `ShopV2_CommonItem_UIBP.lua`.
- Also opened `ExtendResource/TaskTemplate/OfficialPackage/Script/Task/Arts_UI/UIBP/UGC_DailyTask_UIBP.lua` and `.../Item/UGC_DailyTask_List_UIBP.lua` as a second official pattern.
- Observed the common pattern: container list registers `OnUpdateItem`, calls `Reload(count)`, and per-item assignment happens inside the item widget’s own `Refresh`/`InitUI` method.

Reusable knowledge:

- The list widget does not populate items by direct `AddChild` in these templates; instead, `Reload(n)` drives item creation/update and `OnUpdateItem(Item, Idx)` supplies the current data.
- The index passed to `OnUpdateItem` is 0-based, so Lua data tables are accessed with `Idx + 1`.
- Example from ShopV2:
  - `self.ShopItemsList.OnUpdateItem:Add(self.OnUpdateItem, self)`
  - `self.ShopItemsList:Reload(Num)`
  - `function ShopV2_Goods_UIBP:OnUpdateItem(Item, Idx) local ProductID = self.ProductIDsInTab[Idx+1]; Item:Refresh(ProductID) end`
- Example from TaskTemplate:
  - `self.DailyTaskList.OnUpdateItem:Add(self.InitPercentTaskItem, self)`
  - `self.DailyTaskList:Reload(#self.TaskList)`
  - `Item:InitUI(TaskID, Idx, self.TaskLineName)`

Failures and how to do differently:

- The “reuse” mechanism is not visible as an explicit variable in business Lua because it is encapsulated inside the `UGC_ReuseList2` control. Future explanations should say the reuse is internal to the control, and the Lua only hooks the update callback.
- Avoid implying a custom cache/pool exists in the visible Lua unless the code actually shows it.

References:

- [4] `ExtendResource\ShopV2\OfficialPackage\Script\ShopV2\Arts_UI\UIBP\ShopV2_Goods_UIBP.lua`
  - `self.ShopItemsList.OnUpdateItem:Add(self.OnUpdateItem, self)`
  - `self.ShopItemsList:Reload(Num)`
  - `OnUpdateItem(Item, Idx)` uses `ProductID = self.ProductIDsInTab[Idx+1]` then `Item:Refresh(ProductID)`
- [5] `ExtendResource\ShopV2\OfficialPackage\Script\ShopV2\Arts_UI\UIBP\Item\ShopV2_CommonItem_UIBP.lua`
  - `Refresh(ProductID)` sets `self.ProductID`, loads config data, and assigns UI fields like `SetText` and `SetBrushFromTexture`.
- [6] `ExtendResource\TaskTemplate\OfficialPackage\Script\Task\Arts_UI\UIBP\UGC_DailyTask_UIBP.lua`
  - `self.DailyTaskList.OnUpdateItem:Add(self.InitPercentTaskItem, self)`
  - `self.DailyTaskList:Reload(#self.TaskList)`
- [7] `ExtendResource\TaskTemplate\OfficialPackage\Script\Task\Arts_UI\UIBP\Item\UGC_DailyTask_List_UIBP.lua`
  - `InitUI(TaskID, Index, TaskLineName)` sets text fields and item state.

## Task 3: Determine whether official list widgets have performance-optimization / reuse behavior and whether refresh causes UI jumping

Outcome: success

Preference signals:

- The user explicitly asked about “官方的有没有那种性能优化那种效果” after seeing the `UGC_ReuseList2` pattern, which means they care about performance characteristics, not just functionality.
- The user then asked “那如果要减少两个，他会重新刷吗，就是ui会不会跳一下那种”, showing they care about visual stability during list shrink/refresh operations.
- The pasted code question “这里哪里用那个复用，我怎么没看见” indicates the user wants the assistant to separate visible business logic from framework-level behavior.

Key steps:

- Searched the local API/wiki for `UGC_ReuseList2`, `Reload`, `OnUpdateItem`, `OnAfterNewItem`, and related list enum/search tokens.
- Confirmed that `UGC_ReuseList2` is the pattern used by many official templates in the project, including ShopV2, TaskTemplate, RankingList, SignInEvent, GiftPack, and Lottery.
- Explained that the “reuse” behavior is inferred from the `Reload + OnUpdateItem` model and is implemented inside the list control, not in the business Lua.
- Answered the refresh/jump question by distinguishing `Reload()` from `ScrollToStart()`: `Reload()` refreshes data, but visible jumping is typically caused by explicit scroll repositioning.

Reusable knowledge:

- Official templates in this project heavily rely on `UGC_ReuseList2` for long lists and repeated item widgets; examples exist across ShopV2, TaskTemplate, RankingList, SignInEvent, GiftPack, and Lottery.
- `Reload(count)` tells the list how many entries to display; `OnUpdateItem` provides per-item data binding.
- `ScrollToStart()` is the obvious cause of jumping to top; `Reload()` by itself is primarily a data refresh.
- If you want to reduce item count without obvious jump, keep scroll position unchanged and avoid `ScrollToStart()`; if the list’s contents shift, the visible items may still change because indices now map to different data.
- Keeping selection stable by ID is a better UX pattern than relying on raw list index; the ShopV2 template uses `SelectedProductID` and `LastSelectedProductID` for this purpose.

Failures and how to do differently:

- The assistant should not overstate “no jump” guarantees. The actual behavior depends on whether the code also resets scroll, and on whether removed items were above the current viewport.
- When a list shrinks, the safest explanation is: the control will refresh, the viewport may stay put if you do not call `ScrollToStart()`, but visible content can still shift because indices/data mapping changed.

References:

- [8] `ExtendResource\ShopV2\OfficialPackage\Script\ShopV2\Arts_UI\UIBP\ShopV2_Goods_UIBP.lua`
  - `if not bRefreshCurrent then self.ShopItemsList:ScrollToStart() end`
  - `self.ShopItemsList:Reload(Num)`
- [9] `ExtendResource\TaskTemplate\OfficialPackage\Script\Task\Arts_UI\UIBP\UGC_DailyTask_UIBP.lua`
  - `self.DailyTaskList:Reload(#self.TaskList)` and `self.Task_Item:Reload(PercentAwardNum)`
- [10] `ExtendResource\RankingList\OfficialPackage\Script\RankingList\Arts_UI\UIBP\UGC_RankingList_Main_UIBP.lua` and similar template scripts show the same `UGC_ReuseList2` pattern across official templates.
- [11] API search results include many `EReuseList*` enums and `UScrollBox` methods, supporting the idea that the platform has reusable list infrastructure beyond plain container panels.
