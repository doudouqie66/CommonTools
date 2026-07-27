---
title: FManagementRule
---

# FManagementRule

ManagementRule逻辑规则的运行时版本

## Variables

| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |
| SetResult | EAssetSetManagerResult |  |
| CheckTargetDirectories | FManagementRuleFStringArrayCheck |  |
| CheckTargetAssets | FManagementRuleFNameArrayCheck |  |
| CheckTargetAssetClassTypes | FManagementRuleFNameArrayCheck |  |
| CheckTargetAssetTags | FManagementRuleFNameArrayCheck |  |
| CheckSourcePackages | FManagementRuleFNameArrayCheck |  |
| CheckSourcePackageClassTypes | FManagementRuleFNameArrayCheck |  |
| bOnlySoftReferences | bool |  |
| CheckOrMask | uint8 | 控制7个检查条件之间的或与非逻辑，每一位对应一个检查条件（见EManagementRuleCheckOrMask）。 	  置1的位参与||组合（OrGroup |