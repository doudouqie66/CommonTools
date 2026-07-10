---
title: FBuildPromotionImportWorkflowSettings
---

# FBuildPromotionImportWorkflowSettings

Holds settings for the import workflow stage of the build promotion test

## Variables

| Name | Type | Description |
|------|------|-------------|
| Diffuse | FEditorImportWorkflowDefinition | Import settings for the Diffuse texture |
| Normal | FEditorImportWorkflowDefinition | Import settings for the Normalmap texture |
| StaticMesh | FEditorImportWorkflowDefinition | Import settings for the static mesh |
| ReimportStaticMesh | FEditorImportWorkflowDefinition | Import settings for the static mesh to re-import |
| BlendShapeMesh | FEditorImportWorkflowDefinition | Import settings for the blend shape |
| MorphMesh | FEditorImportWorkflowDefinition | Import settings for the morph mesh |
| SkeletalMesh | FEditorImportWorkflowDefinition | Import settings for the skeletal mesh |
| Animation | FEditorImportWorkflowDefinition | Import settings for the animation asset.  (Will automatically use the skeleton o |
| Sound | FEditorImportWorkflowDefinition | Import settings for the sound |
| SurroundSound | FEditorImportWorkflowDefinition | Import settings for the surround sound (Select any of the channels.  It will aut |
| OtherAssetsToImport | TArray < FEditorImportWorkflowDefinition > | Import settings for any other assets you may want to import |