---
title: UAutomationTestSettings
language: cpp
---

# UAutomationTestSettings

Implements the Editor's user settings.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| EngineTestModules | TArray < FString > | Modules to load that have engine tests |
| EditorTestModules | TArray < FString > | Modules to load that have editor tests |
| AutomationTestmap | FSoftObjectPath | The automation test map to be used for several of the automation tests. |
| EditorPerformanceTestMaps | TArray < FEditorMapPerformanceTestDefinition > | The map to be used for the editor performance capture tool. |
| AssetsToOpen | TArray < FSoftObjectPath > | Asset to test for open in automation process |
| BuildPromotionTest | FBuildPromotionTestSettings | Editor build promotion test settings |
| MaterialEditorPromotionTest | FMaterialEditorPromotionSettings | Material editor promotion test settings |
| ParticleEditorPromotionTest | FParticleEditorPromotionSettings | Particle editor promotion test settings |
| BlueprintEditorPromotionTest | FBlueprintEditorPromotionSettings | Blueprint editor promotion test settings |
| TestLevelFolders | TArray < FString > | Folders containing levels to exclude from automated tests |
| ExternalTools | TArray < FExternalToolDefinition > | External executables and scripts to run as part of automation. |
| ImportExportTestDefinitions | TArray < FEditorImportExportTestDefinition > | Asset import  Export test settings |
| LaunchOnSettings | TArray < FLaunchOnTestSettings > | The map and device type to be used for the editor Launch On With Map Iterations  |
| DefaultScreenshotResolution | FIntPoint | The default resolution to take all automation screenshots at. |