---
title: UGCGenericMessageSystem
language: lua
---

# UGCGenericMessageSystem

广播信息接口库

## Variables

| Name | Type | Description |
|------|------|-------------|
| UGCGenericMessageSystem.Messages |  |  |
| UGCGenericMessageSystem.GlobalMessageListeners |  |  |
| UGCGenericMessageSystem.ObjectMessageListeners |  |  |
| UGCGenericMessageSystem.Messages.UGC.Player |  | 玩家相关消息 |
| UGCGenericMessageSystem.Messages.UGC.Player.PlayerEnter |  | 玩家进入游戏 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey |
| UGCGenericMessageSystem.Messages.UGC.Player.PlayerExit |  | 玩家退出游戏 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey |
| UGCGenericMessageSystem.Messages.UGC.Player.PlayerLost |  | 玩家掉线 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey |
| UGCGenericMessageSystem.Messages.UGC.Player.PlayerReconnect |  | 玩家重连进入游戏 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn |  | 玩家角色相关的消息 |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnSpawn |  | 玩家角色首次出生 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PreTakeDamage |  | 玩家角色受到伤害前（最终伤害计算前) 生效范围：服务器 ListenedObject：指定被伤害角色，不指定则接收所有角色消息 @param VictimPla |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PostTakeDamage |  | 玩家角色受到伤害后（最终伤害计算后) 生效范围：服务器 ListenedObject：指定被伤害角色，不指定则接收所有角色消息 @param VictimPla |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PreRecoverHealth |  | 玩家角色受到治疗前（最终治疗计算前) 生效范围：服务器 ListenedObject：指定被伤害角色 @param RecoverValue float @预治 |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PostRecoverHealth |  | 玩家角色受到治疗后（最终治疗计算后) 生效范围：服务器 ListenedObject：指定被伤害角色 @param RecoverValue float @实际 |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnDefeat |  | 玩家角色被击败 生效范围：服务器 ListenedObject：无，全局事件 @param VictimPlayerKey number @被击败玩家的 Pla |
| UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnRespawn |  | 玩家角色重生 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey |
| UGCGenericMessageSystem.Messages.UGC.MobPawn |  |  |
| UGCGenericMessageSystem.Messages.UGC.MobPawn.Spawn |  | 怪物角色首次出生 生效范围：服务器&客户端 ListenedObject：指定生成的怪物，不指定则接收所有怪物角色消息 @param MobPawn AUGCM |
| UGCGenericMessageSystem.Messages.UGC.MobPawn.PreTakeDamage |  | 怪物角色受到伤害前（最终伤害计算前) 生效范围：服务器 ListenedObject：指定被伤害怪物角色，不指定则接收所有怪物角色消息 @param MobPa |
| UGCGenericMessageSystem.Messages.UGC.MobPawn.PostTakeDamage |  | 怪物角色受到伤害后（最终伤害计算后) 生效范围：服务器 ListenedObject：指定被伤害怪物角色，不指定则接收所有怪物角色消息 @param MobPa |
| UGCGenericMessageSystem.Messages.UGC.MobPawn.PreRecoverHealth |  | 怪物角色受到治疗前（最终治疗计算前) 生效范围：服务器 ListenedObject：指定被伤害怪物角色 @param RecoverValue float @ |
| UGCGenericMessageSystem.Messages.UGC.MobPawn.PostRecoverHealth |  | 怪物角色受到治疗后（最终治疗计算后) 生效范围：服务器 ListenedObject：指定被伤害怪物角色 @param RecoverValue float @ |
| UGCGenericMessageSystem.Messages.UGC.MobPawn.PostBeKilled |  | 怪物角色被击杀 生效范围：服务器&客户端 ListenedObject：指定被击杀怪物角色，不指定则接收所有怪物角色消息 @param MobPawn AUGC |
| UGCGenericMessageSystem.Messages.UGC.MobPawn.StateChange |  | 怪物角色状态变化 生效范围：服务器&客户端 ListenedObject：指定改变状态的怪物角色，不指定则接收所有怪物角色消息 @param MobPawn A |
| UGCGenericMessageSystem.Messages.UGC.MobSpawner |  | 刷怪器相关的消息 |
| UGCGenericMessageSystem.Messages.UGC.MobSpawner.WaveStart |  | 刷怪管理器波次开始 生效范围：服务器 ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息 @param MobSpawnerMa |
| UGCGenericMessageSystem.Messages.UGC.MobSpawner.WaveEnd |  | 刷怪管理器波次结束 生效范围：服务器 ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息 @param MobSpawnerMa |
| UGCGenericMessageSystem.Messages.UGC.MobSpawner.AllWaveEnd |  | 刷怪管理器所有波次结束 生效范围：服务器 ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息 @param MobPawn AU |
| UGCGenericMessageSystem.Messages.UGC.MobSpawner.AllMobDie |  | 刷怪管理器所有波次的怪物死亡 生效范围：服务器 ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息 @param MobPawn |
| UGCGenericMessageSystem.Messages.UGC.Client |  |  |
| UGCGenericMessageSystem.Messages.UGC.Client.MainUI |  |  |
| UGCGenericMessageSystem.Messages.UGC.Client.MainUI.InitMainUI |  | 初始化和平 MainUI 生效范围：客户端 ListenedObject：无，全局事件 @param PC Controller @初始化 MainUI 的玩家 |
| UGCGenericMessageSystem.Messages.UGC.Game |  |  |
| UGCGenericMessageSystem.Messages.UGC.Game.GameEnd |  | 游戏结束 生效范围：服务器 ListenedObject：无，全局事件 |
| UGCGenericMessageSystem.Messages.UGC.Game.GameStart |  | 游戏开始 生效范围：服务器 ListenedObject：无，全局事件 |
| UGCGenericMessageSystem.Messages.UGC.GamePart |  |  |
| UGCGenericMessageSystem.Messages.UGC.GamePart.GamePartLoaded |  | GamePart 加载完成。在此消息回调中执行 GetGamePartGlobalActor 以确保 GamePart 对象可用。 生效范围：服务器&客户端 L |
| UGCGenericMessageSystem.Messages.UGC.GamePart.GamePartLoadedForPlayer |  | GamePart 加载完成。在此消息回调中执行 GetGamePartGlobalActor 以确保 GamePart 对象可用。 ForPlayer 可区分不 |
| UGCGenericMessageSystem.Messages.UGC.Weapon |  | 枪械相关的消息 |
| UGCGenericMessageSystem.Messages.UGC.Weapon.BulletHit |  | 枪械的子弹命中 生效范围：服务器 ListenedObject：无，全局事件 @param Gun ASTExtraShootWeapon @监听的枪械 @pa |
| UGCGenericMessageSystem.Messages.UGC.Weapon.Fire |  | 枪械开火 生效范围：服务器 ListenedObject：无，全局事件 @param Gun ASTExtraShootWeapon @监听的枪械 |
| UGCGenericMessageSystem.Messages.UGC.Weapon.StopFire |  | 枪械停火 生效范围：服务器 ListenedObject：无，全局事件 @param Gun ASTExtraShootWeapon @监听的枪械 |
| UGCGenericMessageSystem.Messages.UGC.Weapon.PostEquipWeapon |  | 枪械装备 生效范围：服务器 ListenedObject：无，全局事件 @param bIsEquip boolean @是否装备 @param Player  |
| UGCGenericMessageSystem.Messages.UGC.Weapon.Reload |  | 枪械换弹 生效范围：服务器 ListenedObject：无，全局事件 @param Gun ASTExtraShootWeapon @监听的枪械 |
| UGCGenericMessageSystem.Messages.UGC.Weapon.ScopeIn |  | 枪械开镜 生效范围：服务器 ListenedObject：无，全局事件 @param Gun ASTExtraShootWeapon @监听的枪械 |
| UGCGenericMessageSystem.Messages.UGC.Weapon.ScopeOut |  | 枪械关镜 生效范围：服务器 ListenedObject：无，全局事件 @param Gun ASTExtraShootWeapon @监听的枪械 |
| UGCGenericMessageSystem.Messages.UGC.Weapon.SwitchWeapon |  | 枪械切换 生效范围：服务器 ListenedObject：无，全局事件 @param NewGun ASTExtraShootWeapon @新武器 @para |
| UGCGenericMessageSystem.Messages.UGC.Attribute |  |  |
| UGCGenericMessageSystem.Messages.UGC.Attribute.GlobalAttrChanged |  | 全局属性改变 生效范围：服务器 ListenedObject：监听的属性，不指定监听的属性则接收所有属性消息 @param OwnerActor AActor  |
| UGCGenericMessageSystem.Messages.UGC.LevelFlow |  |  |
| UGCGenericMessageSystem.Messages.UGC.LevelFlow.LevelBegin |  | 关卡开始 生效范围：服务器 ListenedObject：无，全局事件 @param int CurrentStage @当前关卡数 |
| UGCGenericMessageSystem.Messages.UGC.LevelFlow.GameBegin |  | 游戏开始 生效范围：服务器 ListenedObject：无，全局事件 |
| UGCGenericMessageSystem.Messages.UGC.Task |  |  |
| UGCGenericMessageSystem.Messages.UGC.Task.TaskCreated |  | 任务模板中所有任务初始化完毕 生效范围：服务器&客户端 ListenedObject：指定任务监听器，不指定则接受所有任务监听器消息 |
| UGCGenericMessageSystem.Messages.UGC.PersistEffect |  |  |
| UGCGenericMessageSystem.Messages.UGC.PersistEffect.ApplyPersistEffect |  | PersistEffect挂载到UPersistBaseComponent 生效范围：服务器&客户端 ListenedObject：指定UPersistBase |
| UGCGenericMessageSystem.Messages.UGC.PersistEffect.UnApplyPersistEffect |  | PersistEffect从UPersistBaseComponent上卸载 生效范围：服务器&客户端 ListenedObject：指定UPersistBas |
| UGCGenericMessageSystem.Messages.UGC.PersistEffect.ChangeState |  | PersistEffectSkill的状态改变 生效范围：服务器&客户端 ListenedObject：指定UPersistEffectSkill，不指定则接收 |
| UGCGenericMessageSystem.Messages.UGC.Team |  | 队伍相关 |
| UGCGenericMessageSystem.Messages.UGC.Team.TeammateLogin |  | 有队员加入队伍 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @加入队伍玩家的PlayerKey |
| UGCGenericMessageSystem.Messages.UGC.AirDrop |  |  |
| UGCGenericMessageSystem.Messages.UGC.AirDrop.SuccessfullyGeneratedAirDrop |  | 成功生成AirDrop 生效范围：服务器 ListenedObject：无，全局事件 @param InsID number @空投箱实例ID @param A |
| UGCGenericMessageSystem.Messages.UGC.AirDrop.SuccessfullyDestroyedAirDrop |  | 成功销毁AirDrop 生效范围：服务器 ListenedObject：无，全局事件 @param InsID number @空投箱实例ID |
| UGCGenericMessageSystem.Messages.UGC.AirDrop.SuccessfullyPickedUpAirDrop |  | 成功拾取AirDrop 生效范围：服务器 ListenedObject：无，全局事件 @param InsID number @空投箱实例ID |
| UGCGenericMessageSystem.Messages.UGC.TowerWave |  | 塔防波次相关消息 |
| UGCGenericMessageSystem.Messages.UGC.TowerWave.WaveChanged |  | 波次变化（客户端本地通知） 生效范围：客户端 ListenedObject：无，全局事件 @param CurrentWaveIndex number @当前波 |
| UGCGenericMessageSystem.Messages.UGC.TowerWave.StateChanged |  | 波次状态变化（客户端本地通知） 生效范围：客户端 ListenedObject：无，全局事件 @param CurrentWaveIndex number @当 |
| UGCGenericMessageSystem.Messages.UGC.TowerWave.CountdownChanged |  | 倒计时变化（客户端本地通知） 生效范围：客户端 ListenedObject：无，全局事件 @param Countdown number @剩余倒计时（秒） |
| UGCGenericMessageSystem.Messages.UGC.TowerWave.AllComplete |  | 所有波次完成 生效范围：服务器&客户端 ListenedObject：无，全局事件 @param TotalWaveCount number @总波次数 |
| UGCGenericMessageSystem.Messages.UGC.TowerWave.RequestRoundEnd |  | 请求回合结束（所有波次完成后触发） 生效范围：服务器 ListenedObject：无，全局事件 |
| UGCGenericMessageSystem.UserDefinedMessages.UGC.UGCDSShutDownManager.DSCloseNotify |  | DS关闭前通知 生效范围：服务器 ListenedObject：无，全局事件 @param DSRemainingTime table @DS剩余时间，唯一ke |

## Functions

### ListenObjectMessage

监听对象的广播信息，作用包含ListenUserDefinedObjectMessage，正常仅调用本接口即可
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ListenedObject | UObject | 被监听对象 |
| Message | string | 广播信息的索引，后续的广播和监听都通过索引进行操作 |
| Listener | UObject | 监听对象 |
| Callback | function | 监听对象监听到广播后调用的回调函数 |

**Return:** number 返回监听ID

### BroadcastUserDefinedObjectMessage

广播自定义的对象消息
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ListenedObject | UObject | 被监听对象 |
| Message | string | 广播信息的索引，后续的广播和监听都通过索引进行操作 |
| ... | any | 自定义事件参数 |

### ListenGlobalMessage

监听全局的广播信息，作用包含ListenUserDefinedGlobalMessage，正常仅调用本接口即可
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| Message | string | 广播信息的索引，后续的广播和监听都通过索引进行操作 |
| Listener | UObject | 监听对象 |
| Callback | function | 监听对象监听到广播后调用的回调函数 |

**Return:** number 返回监听ID

### ListenUserDefinedGlobalMessage

监听自定义的全局广播信息
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| Message | string | 广播信息的索引，后续的广播和监听都通过索引进行操作 |
| Listener | UObject | 监听对象 |
| Callback | function | 监听对象监听到广播后调用的回调函数 |

**Return:** number 返回监听ID

### BroadcastUserDefinedGlobalMessage

广播自定义的全局消息
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Message | string | 广播信息的索引，后续的广播和监听都通过索引进行操作 |
| ... | any | 自定义事件参数 |

### UnListenMessage

解除监听对象以及全局的广播信息
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Listener | UObject|number | 监听对象/监听ID |
| Message | string | 广播信息的索引，后续的广播和监听都通过索引进行操作 |

### RegisterUserDefinedMessage

注册自定义消息
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Message | string | 广播信息的索引，后续的广播和监听都通过索引进行操作 |

**Return:** string 返回注册后的Message，与输入的Message相同