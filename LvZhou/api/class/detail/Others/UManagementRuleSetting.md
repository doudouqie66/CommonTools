---
title: UManagementRuleSetting
language: cpp
---

# UManagementRuleSetting

ManagementRule逻辑规则的.ini文件配置版本，减少结构体和容器嵌套，方便.ini配置和阅读

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |
| SetResult | EAssetSetManagerResult |  |
| CheckTargetDirectoriesSwitch | FManagementRuleSwitch |  |
| CheckTargetDirectories | TArray < FManagementRuleFStringCheck > |  |
| CheckTargetAssetsSwitch | FManagementRuleSwitch |  |
| CheckTargetAssets | TArray < FManagementRuleFNameCheck > |  |
| CheckTargetAssetClassSwitch | FManagementRuleSwitch |  |
| CheckTargetAssetClassTypes | TArray < FManagementRuleFNameCheck > |  |
| CheckSourcePackagesSwitch | FManagementRuleSwitch |  |
| CheckSourcePackages | TArray < FManagementRuleFNameCheck > |  |
| CheckSourcePackageClassSwitch | FManagementRuleSwitch |  |
| CheckSourcePackageClassTypes | TArray < FManagementRuleFNameCheck > |  |
| CheckTargetAssetTagSwitch | FManagementRuleSwitch |  |
| CheckTargetAssetTags | TArray < FManagementRuleFNameCheck > |  |
| bOnlySoftReferences | bool |  |
| CheckOrMask | uint8 | 对应FManagementRule::CheckOrMask，控制6个检查条件之间的或与非逻辑，见EManagementRuleCheckOrMask |