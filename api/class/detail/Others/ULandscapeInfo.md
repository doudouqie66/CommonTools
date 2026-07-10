---
title: ULandscapeInfo
language: cpp
---

# ULandscapeInfo

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| LandscapeActor | TLazyObjectPtr < ALandscape > |  |
| LandscapeGuid | FGuid |  |
| ComponentSizeQuads | int32 |  |
| SubsectionSizeQuads | int32 |  |
| ComponentNumSubsections | int32 |  |
| DrawScale | FVector |  |
| Proxies | TSet < ALandscapeStreamingProxy * > |  |
| Layers | TArray < FLandscapeInfoLayerSettings > |  |
| RChannelLayer | TWeakObjectPtr < ULandscapeLayerInfoObject > |  |
| GChannelLayer | TWeakObjectPtr < ULandscapeLayerInfoObject > |  |
| BChannelLayer | TWeakObjectPtr < ULandscapeLayerInfoObject > |  |
| AChannelLayer | TWeakObjectPtr < ULandscapeLayerInfoObject > |  |