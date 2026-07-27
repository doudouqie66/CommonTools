---
title: UGameMapsSettings
language: cpp
---

# UGameMapsSettings

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| EditorStartupMap | FSoftObjectPath | If set, this map will be loaded when the Editor starts up. |
| LocalMapOptions | FString | The default options that will be appended to a map being loaded. |
| TransitionMap | FSoftObjectPath | The map loaded when transition from one map to another. |
| bUseSplitscreen | bool | Whether the screen should be split or not when multiple local players are presen |
| TwoPlayerSplitscreenLayout | TEnumAsByte < ETwoPlayerSplitScreenType :: Type > | The viewport layout to use if the screen should be split and there are two local |
| ThreePlayerSplitscreenLayout | TEnumAsByte < EThreePlayerSplitScreenType :: Type > | The viewport layout to use if the screen should be split and there are three loc |
| bOffsetPlayerGamepadIds | bool | If enabled, this will make so that gamepads start being assigned to the second c |
| GameInstanceClass | FSoftClassPath | The class to use when instantiating the transient GameInstance class |
| GameDefaultMap | FSoftObjectPath | The map that will be loaded by default when no other map is loaded. |
| HSCDefaultMap | FSoftObjectPath |  |
| UGCMDefaultMap | FSoftObjectPath |  |
| ServerDefaultMap | FSoftObjectPath | The map that will be loaded by default when no other map is loaded (DEDICATED SE |
| GlobalDefaultGameMode | FSoftClassPath | GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode |
| GlobalDefaultServerGameMode | FSoftClassPath | GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode |
| GameModeMapPrefixes | TArray < FGameModeName > | Overrides the GameMode to use when loading a map that starts with a specific pre |
| GameModeClassAliases | TArray < FGameModeName > | List of GameModes to load when game= is specified in the URL (e.g. "DM" could be |