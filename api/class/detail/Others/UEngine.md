---
title: UEngine
language: cpp
---

# UEngine

Abstract base class of all Engine classes, responsible for management of systems critical to editor or game systems.
  Also defines default classes for certain engine systems.

> Inheritance: UObject -> FExec

## Variables

| Name | Type | Description |
|------|------|-------------|
| TinyFont | UFont * |  |
| TinyFontName | FSoftObjectPath | @todo document |
| SmallFont | UFont * | @todo document |
| SmallFontName | FSoftObjectPath | @todo document |
| MediumFont | UFont * | @todo document |
| MediumFontName | FSoftObjectPath | @todo document |
| LargeFont | UFont * | @todo document |
| LargeFontName | FSoftObjectPath | @todo document |
| SubtitleFont | UFont * | @todo document |
| SubtitleFontName | FSoftObjectPath | @todo document |
| AdditionalFonts | TArray < UFont * > | Any additional fonts that script may use without hard-referencing the font. |
| AdditionalFontNames | TArray < FString > | @todo document |
| ConsoleClass | TSubclassOf < UConsole > | The class to use for the game console. |
| ConsoleClassName | FSoftClassPath | @todo document |
| GameViewportClientClass | TSubclassOf < UGameViewportClient > | The class to use for the game viewport client. |
| GameViewportClientClassName | FSoftClassPath | @todo document |
| LocalPlayerClass | TSubclassOf < ULocalPlayer > | The class to use for local players. |
| LocalPlayerClassName | FSoftClassPath | @todo document |
| WorldSettingsClass | TSubclassOf < AWorldSettings > | The class for WorldSettings |
| WorldSettingsClassName | FSoftClassPath | @todo document |
| NavigationSystemClassName | FSoftClassPath | @todo document |
| NavigationSystemClass | TSubclassOf < UNavigationSystem > | The class for NavigationSystem |
| AvoidanceManagerClassName | FSoftClassPath | Name of behavior tree manager class |
| AvoidanceManagerClass | TSubclassOf < UAvoidanceManager > | The class for behavior tree manager |
| PhysicsCollisionHandlerClass | TSubclassOf < UPhysicsCollisionHandler > | PhysicsCollisionHandler class we should use by default |
| PhysicsCollisionHandlerClassName | FSoftClassPath | Name of PhysicsCollisionHandler class we should use by default. |
| GameUserSettingsClassName | FSoftClassPath |  |
| GameUserSettingsClass | TSubclassOf < UGameUserSettings > |  |
| AIControllerClassName | FSoftClassPath | name of Controller class to be used as default AIController class for pawns |
| GameUserSettings | UGameUserSettings * | Global instance of the user game settings |
| LevelScriptActorClass | TSubclassOf < ALevelScriptActor > | @todo document |
| LevelScriptActorClassName | FSoftClassPath | @todo document |
| DefaultBlueprintBaseClassName | FSoftClassPath | Name of the base class to use for new blueprints, configurable on a per-game bas |
| GameSingletonClassName | FSoftClassPath | Name of a singleton class to create at startup time, configurable per game |
| GameSingleton | UObject * | A UObject spawned at initialization time to handle game-specific data |
| AssetManagerClassName | FSoftClassPath | Name of a singleton class to spawn as the AssetManager, configurable per game. I |
| AssetManager | UAssetManager * | A UObject spawned at initialization time to handle game-specific data |
| DefaultTexture | UTexture2D * | A global default texture. |
| DefaultTextureName | FSoftObjectPath | @todo document |
| DefaultDiffuseTexture | UTexture * | A global default diffuse texture. |
| DefaultDiffuseTextureName | FSoftObjectPath | @todo document |
| DefaultBSPVertexTexture | UTexture2D * | @todo document |
| DefaultBSPVertexTextureName | FSoftObjectPath | @todo document |
| HighFrequencyNoiseTexture | UTexture2D * | Texture used to get random image grain values for post processing |
| HighFrequencyNoiseTextureName | FSoftObjectPath | @todo document |
| DefaultBokehTexture | UTexture2D * | Texture used to blur out of focus content, mimics the Bokeh shape of actual came |
| DefaultBokehTextureName | FSoftObjectPath | @todo document |
| DefaultBloomKernelTexture | UTexture2D * | Texture used to bloom when using FFT, mimics characteristic bloom produced in a  |
| DefaultBloomKernelTextureName | FSoftObjectPath | @todo document |
| WireframeMaterial | UMaterial * | The material used to render wireframe meshes. |
| WireframeMaterialName | FString | @todo document |
| DebugMeshMaterial | UMaterial * | A material used to render debug meshes. |
| DebugMeshMaterialName | FSoftObjectPath | @todo document |
| LevelColorationLitMaterial | UMaterial * | Material used for visualizing level membership in lit view port modes. |
| LevelColorationLitMaterialName | FString | @todo document |
| LevelColorationUnlitMaterial | UMaterial * | Material used for visualizing level membership in unlit view port modes. |
| LevelColorationUnlitMaterialName | FString | @todo document |
| LightingTexelDensityMaterial | UMaterial * | Material used for visualizing lighting only w lightmap texel density. |
| LightingTexelDensityName | FString | @todo document |
| ShadedLevelColorationLitMaterial | UMaterial * | Material used for visualizing level membership in lit view port modes. Uses shad |
| ShadedLevelColorationLitMaterialName | FString | @todo document |
| ShadedLevelColorationUnlitMaterial | UMaterial * | Material used for visualizing level membership in unlit view port modes.  Uses s |
| ShadedLevelColorationUnlitMaterialName | FString | @todo document |
| NewShadedLevelColorationUnlitMaterial | UMaterial * | Material used for visualizing level membership in unlit view port modes.  Uses s |
| NewShadedLevelColorationUnlitMaterialName | FString | @todo document |
| RemoveSurfaceMaterial | UMaterial * | Material used to indicate that the associated BSP surface should be removed. |
| RemoveSurfaceMaterialName | FSoftObjectPath | @todo document |
| VertexColorMaterial | UMaterial * | Material that renders vertex color as emmissive. |
| VertexColorMaterialName | FString | @todo document |
| VertexColorViewModeMaterial_ColorOnly | UMaterial * | Material for visualizing vertex colors on meshes in the scene (color only, no al |
| VertexColorViewModeMaterialName_ColorOnly | FString | @todo document |
| VertexColorViewModeMaterial_AlphaAsColor | UMaterial * | Material for visualizing vertex colors on meshes in the scene (alpha channel as  |
| VertexColorViewModeMaterialName_AlphaAsColor | FString | @todo document |
| VertexColorViewModeMaterial_RedOnly | UMaterial * | Material for visualizing vertex colors on meshes in the scene (red only) |
| VertexColorViewModeMaterialName_RedOnly | FString | @todo document |
| VertexColorViewModeMaterial_GreenOnly | UMaterial * | Material for visualizing vertex colors on meshes in the scene (green only) |
| VertexColorViewModeMaterialName_GreenOnly | FString | @todo document |
| VertexColorViewModeMaterial_BlueOnly | UMaterial * | Material for visualizing vertex colors on meshes in the scene (blue only) |
| VertexColorViewModeMaterialName_BlueOnly | FString | @todo document |
| DebugEditorMaterialName | FSoftObjectPath | A material used to render debug opaque material. Used in various animation edito |
| ConstraintLimitMaterial | UMaterial * | Material used to render constraint limits |
| ConstraintLimitMaterialX | UMaterialInstanceDynamic * |  |
| ConstraintLimitMaterialXAxis | UMaterialInstanceDynamic * |  |
| ConstraintLimitMaterialY | UMaterialInstanceDynamic * |  |
| ConstraintLimitMaterialYAxis | UMaterialInstanceDynamic * |  |
| ConstraintLimitMaterialZ | UMaterialInstanceDynamic * |  |
| ConstraintLimitMaterialZAxis | UMaterialInstanceDynamic * |  |
| ConstraintLimitMaterialPrismatic | UMaterialInstanceDynamic * |  |
| InvalidLightmapSettingsMaterial | UMaterial * | Material that renders a message about lightmap settings being invalid. |
| InvalidLightmapSettingsMaterialName | FSoftObjectPath | @todo document |
| PreviewShadowsIndicatorMaterial | UMaterial * | Material that renders a message about preview shadows being used. |
| PreviewShadowsIndicatorMaterialName | FSoftObjectPath | @todo document |
| ArrowMaterial | UMaterial * | Material that 'fakes' lighting, used for arrows, widgets. |
| ArrowMaterialName | FSoftObjectPath | @todo document |
| OutlineMaterial | UMaterial * | Material IdeaOutline. |
| OutlineMaterialName | FSoftObjectPath | @todo document |
| OutlineMaskedMaterial | UMaterial * |  |
| OutlineMaskedMaterialName | FSoftObjectPath |  |
| OutlineMaterialNewOpaque | UMaterial * |  |
| OutlineMaterialNewOpaqueName | FSoftObjectPath |  |
| OutlineMaterialNewTranslucent | UMaterial * |  |
| OutlineMaterialNewTranslucentName | FSoftObjectPath |  |
| OutlineMaskedMaterialNewOpaque | UMaterial * |  |
| OutlineMaskedMaterialNewOpaqueName | FSoftObjectPath |  |
| OutlineMaskedMaterialNewTranslucent | UMaterial * |  |
| OutlineMaskedMaterialNewTranslucentName | FSoftObjectPath |  |
| HighlightMaterial | UMaterial * |  |
| HighlightMaterialName | FSoftObjectPath |  |
| SmaaAreaTexName | FSoftObjectPath | SMAA AreaTex name |
| SmaaSearchTexName | FSoftObjectPath | SMAA SearchTex name |
| SmaaAreaTex | UTexture2D * | SMAA AreaTex |
| SmaaSearchTex | UTexture2D * | SMAA SearchTex |
| DyeingColorMaterial | UMaterial * | Material IdeaOutline. |
| DyeingColorMaterialName | FSoftObjectPath | @todo document |
| LightingOnlyBrightness | FLinearColor | @todo document |
| ShaderComplexityColors | TArray < FLinearColor > | The colors used to render shader complexity. |
| QuadComplexityColors | TArray < FLinearColor > | The colors used to render quad complexity. |
| LightComplexityColors | TArray < FLinearColor > | The colors used to render light complexity. |
| StationaryLightOverlapColors | TArray < FLinearColor > | The colors used to render stationary light overlap. |
| LODColorationColors | TArray < FLinearColor > | The colors used to render LOD coloration. |
| HLODColorationColors | TArray < FLinearColor > | The colors used to render LOD coloration. |
| StreamingAccuracyColors | TArray < FLinearColor > | The colors used for texture streaming accuracy debug view modes. |
| DesiredTexelDensity | int32 |  |
| TexelDensityTextureSuffixList | TArray < FString > |  |
| TexelDensityAccuracyColors | TArray < FLinearColor > |  |
| MaxPixelShaderAdditiveComplexityCount | float | Complexity limits for the various complexity view mode combinations. 	 These lim |
| MaxES2PixelShaderAdditiveComplexityCount | float |  |
| MinLightMapDensity | float | Range for the lightmap density view mode.  	 Minimum lightmap density value for  |
| IdealLightMapDensity | float | Ideal lightmap density value for coloring. |
| MaxLightMapDensity | float | Maximum lightmap density value for coloring. |
| bRenderLightMapDensityGrayscale | uint32 | If true, then render gray scale density. |
| RenderLightMapDensityGrayscaleScale | float | The scale factor when rendering gray scale density. |
| RenderLightMapDensityColorScale | float | The scale factor when rendering color density. |
| LightMapDensityVertexMappedColor | FLinearColor | The color to render vertex mapped objects in for LightMap Density view mode. |
| LightMapDensitySelectedColor | FLinearColor | The color to render selected objects in for LightMap Density view mode. |
| StatColorMappings | TArray < FStatColorMapping > | @todo document |
| DefaultPhysMaterial | UPhysicalMaterial * | PhysicalMaterial to use if none is defined for a particular object. |
| DefaultPhysMaterialName | FSoftObjectPath | @todo document |
| ActiveGameNameRedirects | TArray < FGameNameRedirect > |  |
| ActiveClassRedirects | TArray < FClassRedirect > |  |
| ActivePluginRedirects | TArray < FPluginRedirect > |  |
| ActiveStructRedirects | TArray < FStructRedirect > |  |
| PreIntegratedSkinBRDFTexture | UTexture2D * | Texture used for pre-integrated skin shading |
| PreIntegratedSkinBRDFTextureName | FSoftObjectPath | @todo document |
| MiniFontTexture | UTexture2D * | Texture used to do font rendering in shaders |
| MiniFontTextureName | FSoftObjectPath | @todo document |
| WeightMapPlaceholderTexture | UTexture * | Texture used as a placeholder for terrain weight-maps to give the material the c |
| WeightMapPlaceholderTextureName | FSoftObjectPath | @todo document |
| LightMapDensityTexture | UTexture2D * | Texture used to display LightMapDensity |
| LightMapDensityTextureName | FSoftObjectPath | @todo document |
| GameViewport | UGameViewportClient * | The view port representing the current game instance. Can be 0 so don't use with |
| DeferredCommands | TArray < FString > | Array of deferred command strings execs that get executed at the end of the fram |
| TickCycles | int32 | @todo document |
| GameCycles | int32 | @todo document |
| ClientCycles | int32 | @todo document |
| NearClipPlane | float | The distance of the camera's near clipping plane. |
| bHardwareSurveyEnabled_DEPRECATED | uint32 | DEPRECATED - Can a runtime gameapplication report anonymous hardware survey stat |
| bSubtitlesEnabled | uint32 | Flag for completely disabling subtitles for localized sounds. |
| bSubtitlesForcedOff | uint32 | Flag for forcibly disabling subtitles even if you try to turn them back on they  |
| MaximumLoopIterationCount | int32 | Script maximum loop iteration count used as a threshold to warn users about scri |
| bCanBlueprintsTickByDefault | uint32 |  |
| bOptimizeAnimBlueprintMemberVariableAccess | uint32 | Controls whether anim blueprint nodes that access member variables of their clas |
| bAllowMultiThreadedAnimationUpdate | uint32 | Controls whether by default we allow anim blueprint graph updates to be performe |
| bEnableEditorPSysRealtimeLOD | uint32 | @todo document |
| bSmoothFrameRate | uint32 | Whether to enable framerate smoothing. |
| bUseFixedFrameRate | uint32 | Whether to use a fixed framerate. |
| FixedFrameRate | float | The fixed framerate to use. |
| SmoothedFrameRateRange | FFloatRange | Range of framerates in which smoothing will kick in |
| bCheckForMultiplePawnsSpawnedInAFrame | uint32 | Whether we should check for more than N pawns spawning in a single frame. 	  Bas |
| NumPawnsAllowedToBeSpawnedInAFrame | int32 | If bCheckForMultiplePawnsSpawnedInAFrame==true, then we will check to see that n |
| bShouldGenerateLowQualityLightmaps_DEPRECATED | uint32 | Whether or not the LQ lightmaps should be generated during lighting rebuilds.  T |
| C_WorldBox | FColor |  |
| C_BrushWire | FColor | @todo document |
| C_AddWire | FColor | @todo document |
| C_SubtractWire | FColor | @todo document |
| C_SemiSolidWire | FColor | @todo document |
| C_NonSolidWire | FColor | @todo document |
| C_WireBackground | FColor | @todo document |
| C_ScaleBoxHi | FColor | @todo document |
| C_VolumeCollision | FColor | @todo document |
| C_BSPCollision | FColor | @todo document |
| C_OrthoBackground | FColor | @todo document |
| C_Volume | FColor | @todo document |
| C_BrushShape | FColor | @todo document |
| StreamingDistanceFactor | float | Fudge factor for tweaking the distance based miplevel determination |
| GameScreenshotSaveDirectory | FDirectoryPath | The save directory for newly created screenshots |
| TransitionType | TEnumAsByte < enum ETransitionType > | The current transition type. |
| TransitionDescription | FString | The current transition description text. |
| TransitionGameMode | FString | The gamemode for the destination map |
| MeshLODRange | float | Level of detail range control for meshes |
| bAllowMatureLanguage | uint32 | whether mature language is allowed |
| CameraRotationThreshold | float | camera rotation (deg) beyond which occlusion queries are ignored from previous f |
| CameraTranslationThreshold | float | camera movement beyond which occlusion queries are ignored from previous frame ( |
| PrimitiveProbablyVisibleTime | float | The amount of time a primitive is considered to be probably visible after it was |
| MaxOcclusionPixelsFraction | float | Max screen pixel fraction where retesting when unoccluded is worth the GPU time. |
| bPauseOnLossOfFocus | uint32 | Whether to pause the game if focus is lost. |
| MaxParticleResize | int32 | The maximum allowed size to a ParticleEmitterInstance::Resize call. 	 	If larger |
| MaxParticleResizeWarn | int32 | If the resize request is larger than this, spew out a warning to the log |
| PendingDroppedNotes | TArray < FDropNoteInfo > | @todo document |
| PhysicErrorCorrection | FRigidBodyErrorCorrection | Error correction data for replicating simulated physics (rigid bodies) |