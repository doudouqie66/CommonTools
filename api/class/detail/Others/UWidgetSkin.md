---
title: UWidgetSkin
language: cpp
---

# UWidgetSkin

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| BasicUserWidget | TSubclassOf < UUserWidget > |  |
| bNeedRevertSkin | bool |  |
| ParentMatchingKey | int32 |  |
| LuaModulePath | FString |  |
| bAutoLoadSubDefaultSkin | bool |  |
| bAutoReplayAnim | bool |  |
| ModifiedProperties | FWSPropContext |  |
| SkinMountInfos | TArray < FSkinMountInfo > |  |
| OriginalPropertiesMap | TMap < TWeakObjectPtr < UWidgetTree > , FWSPropContext > |  |
| ModifiedPropertiesEditorOnly | FWSPropContext |  |
| DynamicElemsEditorOnly | FWSDynamicPropContext |  |
| DynamicElementInstanceID_EditorOnly | int32 |  |
| TransientDynamicElemsEditorOnly | FWSDynamicPropContext |  |
| TransientDynamicDynamicElementInstanceID_EditorOnly | int32 |  |