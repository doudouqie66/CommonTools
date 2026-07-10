---
title: ASTExtraBaseCharacter
language: cpp
---

# ASTExtraBaseCharacter

主角类（PlayerPawn）

> Inheritance: ASTExtraCharacter -> ISTExtraInputInterface -> IPickupProxyFactory -> ISTExtraBaseCharacter_UGCEventInterface -> IGISPlayerInterface -> IGenericAbilityCarrierInterface -> IItemSkillV2RecevierInterface -> IInteractorInterface -> IDamageNumberInterface -> IMeleeAttackOwnerInterface

## Functions

### DSTeleportToLocationOrRotation

生效范围：服务器
	  传送主角，只有服务器上调用生效，客户端调用无效

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| location | FVector  | 位置 |
| rotation | FRotator  | 旋转 |
| setLoc | bool  | 是否修改位置 |
| setRot | bool  | 是否修改旋转 |
| ResetVelocity | bool  | 是否重置速度 |
| bRecordTeleportInfo | bool | 是否记录传送时间用于射击校验，如无特殊需求保持默认配置 |

**Return:** void