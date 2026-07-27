---
title: FPESkillAttributeItem
---

# FPESkillAttributeItem

属性修改信息数组

## Variables

| Name | Type | Description |
|------|------|-------------|
| Method | FPESkillAttributeModifyMethod | 修改方式 |
| GameAttribute | FGameAttributeContainer | 要修改的属性名 |
| ModifierOp | EAttrOperator | 属性修改操作类型 |
| ModifierOp_DoChange | EAttrOperator_DoChange | 属性修改操作类型 |
| ModifierValueWrapper | FGameMagnitudeWrapper | 操作数值 |
| bModifyForever | bool | 是否为永久修改（属性修改结束时不还原属性） deprecated from GC033 ！！！ |