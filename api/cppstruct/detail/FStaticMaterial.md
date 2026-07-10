---
title: FStaticMaterial
---

# FStaticMaterial

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaterialInterface | UMaterialInterface * |  |
| MaterialSlotName | FName | This name should be use by the gameplay to avoid error if the skeletal mesh Mate |
| UVChannelData | FMeshUVChannelInfo | Data used for texture streaming relative to each UV channels. |
| MaterialSoftRef | FSoftObjectPath | Soft Reference to MaterialInterface |
| ImportedMaterialSlotName | FName | This name should be use when we re-import a skeletal mesh so we can order the Ma |