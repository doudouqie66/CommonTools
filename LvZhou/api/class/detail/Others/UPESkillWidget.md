---
title: UPESkillWidget
language: cpp
---

# UPESkillWidget

技能UI基类

> Inheritance: UUAEUserWidget -> ILuaInterface

## Functions

### BindToSlot

将技能绑定到指定PE组件的指定Slot上
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Comp | UPersistBaseComponent *  | 绑定的组件 |
| SlotName | FGameplayTag | 绑定的槽位 |

**Return:** void  

### GetCurrentSkill

获取当前绑定的技能
	  生效范围C

**Return:** UPersistEffectSkill * 当前绑定的技能

### BindImageAndTextForSkillNameAndIcon

绑定用于显示技能图标、名字、描述的控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IconImage | UImage *  | 图标控件 |
| NameText | UTextBlock *  | 名字控件 |
| DescribeText | UTextBlock * | 描述控件 |

**Return:** void  

### RefreshSkillUI

刷新当前UI绑定的控件的内容
	  生效范围C

**Return:** void 

### GetSkillName

获取技能名字
	  生效范围C

**Return:** FName 技能名字

### GetSkillDetail

获取技能描述
	  生效范围C

**Return:** FString 技能描述

### GetSkillIcon

获取技能图标
	  生效范围C

**Return:** FSoftObjectPath 技能图标

### InitButton

绑定技能按钮控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IconImage | UImage *  | 图标控件 |
| NameText | UTextBlock *  | 名字控件 |
| ClickButton | UButton * | 按钮控件 |

**Return:** void  

### InitLayer

绑定技能使用层数控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LayerText | UTextBlock *  | 技能层数 |
| LayerPanel | UPanelWidget * | 技能层数的Panel控件，控制层数的显隐 |

**Return:** void  

### InitCDProgress

绑定技能CD控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CDText | UTextBlock *  | 技能CD时间 |
| CDProgressImage | UImage *  | @技能CD进度条 |
| CDProgressPanel | UPanelWidget * | 整个CD的Panel控件，控制CD的显隐 |

**Return:** void  

### InitEnergyProgress

绑定技能能量控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EnergyProgressImage | UImage *  | 技能能量进度条 |
| EnergyCanvasPanel | UPanelWidget * | 技能能量Panel控件，控制能量进度条的显隐 |

**Return:** void  

### InitTagDisableState

绑定技能显示TagDisable状态的控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagDisableCanvasPanel | UPanelWidget * | 技能TagDisable状态的Panel控件，控制TagDisable状态的显隐 |

**Return:** void  

### InitEnableState

绑定技能显示Enable状态的控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EnableCanvasPanel | UPanelWidget * | 技能Enable状态的Panel控件，控制Enable状态的显隐 |

**Return:** void  

### InitVirtualJoystick

绑定技能摇杆输入控件
	  生效范围C

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| VirtualJoystickPanel | UPanelWidget *  |  |
| VirtualJoystick | UPESkillVirtualJoystick * | 技能技能摇杆控件，控制摇杆的生效和失效 |

**Return:** void