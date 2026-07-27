---
title: UMaterial
language: cpp
---

# UMaterial

A Material is an asset which can be applied to a mesh to control the visual look of the scene.
  When light from the scene hits the surface, the shading model of the material is used to calculate how that light interacts with the surface.
 
  Warning: Creating new materials directly increases shader compile times!  Consider creating a Material Instance off of an existing material instead.

> Inheritance: UMaterialInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| PhysMaterial | UPhysicalMaterial * | Physical material to use for this graphics material. Used for sounds, effects et |
| DiffuseColor_DEPRECATED | FColorMaterialInput |  |
| SpecularColor_DEPRECATED | FColorMaterialInput |  |
| BaseColor | FColorMaterialInput |  |
| Metallic | FScalarMaterialInput |  |
| Specular | FScalarMaterialInput |  |
| Roughness | FScalarMaterialInput |  |
| Normal | FVectorMaterialInput |  |
| EmissiveColor | FColorMaterialInput |  |
| Opacity | FScalarMaterialInput |  |
| OpacityMask | FScalarMaterialInput |  |
| ReplaceMaterial | UMaterialInterface * |  |
| MaterialDomain | TEnumAsByte < enum EMaterialDomain > | The domain that the material's attributes will be evaluated in. 	  Certain piece |
| BlendMode | TEnumAsByte < enum EBlendMode > | Determines how the material's color is blended with background colors. |
| DecalBlendMode | TEnumAsByte < enum EDecalBlendMode > | Defines how the GBuffer chanels are getting manipulated by a decal material pass |
| MaterialDecalResponse | TEnumAsByte < enum EMaterialDecalResponse > | Defines how the material reacts on DBuffer decals (Affects look, performance and |
| ShadingModel | TEnumAsByte < enum EMaterialShadingModel > | Determines how inputs are combined to create the material's final color. |
| bIncludeShaderCode | uint32 |  |
| OpacityMaskClipValue | float | If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < Op |
| bTranslucentVelocityRendering | uint32 |  |
| TranslucentVelocityClipValue | float |  |
| VertexOffsetAlongNormal | float | pixels offset along vertex normal, for outline drawing. |
| bCastDynamicShadowAsMasked | uint32 | If true, translucent materials will cast dynamic shadows according to their opac |
| bCastDynamicShadowAsUnlit | uint32 |  |
| OITBlendMode | TEnumAsByte < enum EOITBlendMode > |  |
| WorldPositionOffset | FVectorMaterialInput | Adds to world position in the vertex shader. |
| WorldDisplacement | FVectorMaterialInput | Offset in world space applied to tessellated vertices. |
| TessellationMultiplier | FScalarMaterialInput | Multiplies the tessellation factors applied when a tessellation mode is set. |
| SubsurfaceColor | FColorMaterialInput | Inner material color, only used for ShadingModel=Subsurface |
| ClearCoat | FScalarMaterialInput |  |
| ClearCoatRoughness | FScalarMaterialInput |  |
| AmbientOcclusion | FScalarMaterialInput | output ambient occlusion to the GBuffer |
| Refraction | FScalarMaterialInput | output refraction index for translucent rendering 	  Air:1.0 Water:1.333 Ice:1.3 |
| CustomizedUVs | FVector2MaterialInput | These inputs are evaluated in the vertex shader and allow artists to do arbitrar |
| MaterialAttributes | FMaterialAttributesInput |  |
| PixelDepthOffset | FScalarMaterialInput |  |
| CustomizedVertexColor | FVector4MaterialInput |  |
| PlanarReflectionOffsetScale | FVector4MaterialInput |  |
| VertexDepthOffset | FScalarMaterialInput |  |
| PixelDepthOffsetNegative | FScalarMaterialInput |  |
| bEnableSeparateTranslucency | uint32 | Indicates that the material should be rendered in the SeparateTranslucency Pass  |
| bTranslucencyRenderAfterSS | uint32 | Indicates that the material should be rendered after post process and super samp |
| bEnableMobileSeparateTranslucency | uint32 | Indicates that the translucent material should not be affected by bloom or DOF.  |
| bEnableMobileDownsampleSeparateTranslucency | uint32 | Indicates that the translucent material can be rendered on an off-screen render  |
| bEnableResponsiveAA | uint32 | Indicates that the material should be rendered using responsive anti-aliasing. I |
| bScreenSpaceReflections | uint32 | SSR on translucency |
| TwoSided | uint32 | Indicates that the material should be rendered without backface culling and the  |
| DitheredLODTransition | uint32 | Whether meshes rendered with the material should support dithered LOD transition |
| ForceOpaqueLevelPointIndirectLighting | uint32 |  |
| DitherOpacityMask | uint32 | Dither opacity mask. When combined with Temporal AA this can be used as a form o |
| bAllowNegativeEmissiveColor | uint32 | Whether the material should allow outputting negative emissive color values.  On |
| NumCustomizedUVs | int32 | Number of customized UV inputs to display.  Unconnected customized UV inputs wil |
| TranslucencyLightingMode | TEnumAsByte < enum ETranslucencyLightingMode > | Sets the lighting mode that will be used on this material if it is translucent. |
| TranslucencyDirectionalLightingIntensity | float | Useful for artificially increasing the influence of the normal on the lighting r |
| AllowTranslucentCustomDepthWrites | uint32 | Allows a translucenct material to be used with custom depth writing by compiling |
| TranslucentShadowDensityScale | float | Scale used to make translucent shadows more or less opaque than the material's a |
| TranslucentSelfShadowDensityScale | float | Scale used to make translucent self-shadowing more or less opaque than the mater |
| TranslucentSelfShadowSecondDensityScale | float | Used to make a second self shadow gradient, to add interesting shading in the sh |
| TranslucentSelfShadowSecondOpacity | float | Controls the strength of the second self shadow gradient. |
| TranslucentBackscatteringExponent | float | Controls how diffuse the material's backscattering is when using the MSM_Subsurf |
| TranslucentMultipleScatteringExtinction | FLinearColor | Colored extinction factor used to approximate multiple scattering in dense volum |
| TranslucentShadowStartOffset | float | Local space distance to bias the translucent shadow.  Positive values move the s |
| bDisableDepthTest | uint32 | Whether to draw on top of opaque pixels even if behind them. This only has meani |
| bGenerateSphericalParticleNormals | uint32 | Whether to generate spherical normals for particles that use this material. |
| bTangentSpaceNormal | uint32 | Whether the material takes a tangent space normal or a world space normal as inp |
| bUseEmissiveForDynamicAreaLighting | uint32 | If enabled, the material's emissive colour is injected into the LightPropagation |
| bBlockGI | uint32 | If enabled, the material's opacity defines how much GI is blocked when using the |
| bUseSimpleGI | uint32 | If enabled, the material uses simplified and inaccurate GI color for efficiency |
| bUsedAsSpecialEngineMaterial | uint32 | This is a special usage flag that allows a material to be assignable to any prim |
| bUsedWithSkeletalMesh | uint32 | Indicates that the material and its instances can be use with skeletal meshes. 	 |
| bUsedWithGFur | uint32 | Indicates that the material and its instances can be use with GFur. 	 This will  |
| bUsedWithEditorCompositing | uint32 | Indicates that the material and its instances can be use with editor compositing |
| bUsedWithParticleSprites | uint32 | Indicates that the material and its instances can be use with particle sprites 	 |
| bForceDisableSubUVCalculate | uint32 |  |
| bUsedWithBeamTrails | uint32 | Indicates that the material and its instances can be use with beam trails 	  Thi |
| bUsedWithMeshParticles | uint32 | Indicates that the material and its instances can be use with mesh particles 	   |
| bUsedWithParticleBigWorldPrecision | uint32 |  |
| bUsedWithNiagaraSprites | uint32 | Indicates that the material and its instances can be use with Niagara sprites (m |
| bUsedWithNiagaraRibbons | uint32 |  |
| bUsedWithNiagaraMeshParticles | uint32 |  |
| bUsedWithIBL | uint32 | Indicates that the material and its instances can be use with reflection cube 	  |
| bUsedWithStaticLighting | uint32 | Indicates that the material and its instances can be use with static lighting 	  |
| bUsedWithMorphTargets | uint32 | Indicates that the material and its instances can be use with morph targets 	  T |
| bUsedWithSplineMeshes | uint32 | Indicates that the material and its instances can be use with spline meshes 	  T |
| bUsedWithQuantizedMeshes | uint32 |  |
| bUsedWithInstancedStaticMeshes | uint32 | Indicates that the material and its instances can be use with instanced static m |
| bUsedWithCustomInstancedStaticMeshes | uint32 | Indicates that the material and its instances can be use with custom instanced s |
| bUsedWithInstancedWidget | uint32 |  |
| bUsedWithInstancedPDSurface | uint32 |  |
| bUsesDistortion | uint32 | Indicates that the material and its instances can be use with distortion 	  This |
| bUsedWithClothing | uint32 | Indicates that the material and its instances can be use with clothing 	  This w |
| bUsedWithUI_DEPRECATED | uint32 | Indicates that the material and its instances can be use with Slate UI and UMG 	 |
| bUsedWithPPRBackgroud | uint32 | Indicates that the material would use for ppr background in deferred rendering. |
| bUsedWithSurfelInjectColor | uint32 | Indicates that the material and its instances can be use with SurfelGI inject co |
| bUsedWithTranslucentGI | uint32 | [SurfelGI - brainfkli ADD] 	  Indicates that the material and its instances can  |
| bUsedWithAtmosphericSkyBox | uint32 | Indicates that the material and its instances can be use with AtmosphericSkyBox  |
| bAutomaticallySetUsageInEditor | uint32 | Whether to automatically set usage flags based on what the material is applied t |
| bFullyRough | uint32 | Forces the material to be completely rough. Saves a number of instructions and o |
| bUsedWithLandscapeDeform | uint32 | Indicates that the material and its instances can be use with Landscape Deform 	 |
| bUseFullPrecision | uint32 | Forces this material to use full (highp) precision in the pixel shader. 	 	This  |
| bForceMaterialFloat | uint32 | Forces this material's temporary variables to use full precision float in the pi |
| bUseLightmapDirectionality | uint32 | Use lightmap directionality and per pixel normals. If disabled, lighting from li |
| bUsedWithDynamicInstancing | uint32 | Indicates that the each material instance(of this material) can be dynamic insta |
| bDynamicInstancingByUBO | uint32 |  |
| bUsedWithRuntimeStaticBatchMultiParams | uint32 |  |
| bNeedInstanceTransform | uint32 |  |
| bUseSimplestShader | uint32 |  |
| bBypassSystemMaterialQuality | uint32 |  |
| bBypassMobilePointLight | uint32 |  |
| bUseAsEarlyZ | uint32 |  |
| bForceOutputLinearSpace | uint32 |  |
| bUseAsDrawToRenderTarget | uint32 |  |
| bRenderInTwoPass | uint32 |  |
| bShadowUseTentFilter | uint32 |  |
| bUseLightmap | uint32 |  |
| bUseGPUVolumetricLightMap | uint32 |  |
| bUsedGPUVLMVertexLighting | uint32 |  |
| bUseIndirectLighting | uint32 |  |
| bShadowOnEmissiveColor | uint32 |  |
| bUsedGrassInstnaceColor | uint32 |  |
| bUsedVertexPointLight | uint32 |  |
| bUsedWithLandscapeShadow | uint32 |  |
| bUseLandscapeMultiLayer | uint32 |  |
| bUsedWithPhotonShadow | uint32 | #if WITH_PHOTON_SHADOW |
| bUsedWithPhotonShadowPCSS | uint32 |  |
| bUsedDynamicObjectVertexLighting | uint32 |  |
| bUsedWithDynamicBatching | uint32 | Indicates that the material instance shared with same base mat can be batched |
| bUsedWithDynamicMergeSkeletalMesh | uint32 |  |
| bUsedWithDynamicInstancingES2Fixup | uint32 |  |
| ShadowOverride | TEnumAsByte < enum EMaterialShadowOverride > |  |
| SimpleVertexNormalSituation | TEnumAsByte < enum ESimpleVertexNormalSituation > |  |
| bZForceFar | uint32 |  |
| bWettable | uint32 |  |
| bUseLegacySpecular | uint32 | use Phong instead of GGX |
| bCorrectBlendingColorInHDR | uint32 |  |
| bGPUSkinForceUseBonesUniformBuffer | uint32 |  |
| bUseAsTranslucentEarlyZ | uint32 |  |
| bLiteRough | uint32 | Override: Fully Rough On、UseFullPrecision Off |
| bUseSimpleSkyLight | uint32 |  |
| bACESOff | uint32 |  |
| bEmissionOff | uint32 |  |
| bInstL2WOnlyTranslation | uint32 | Instancing only uses translation of LocalToWorld, exclusive of rotation and scal |
| bUseLiteFog | uint32 |  |
| bUseChromaticAberration | uint32 |  |
| bUsedWithFirstPerson | uint32 |  |
| bUsedWithScope | uint32 |  |
| bUsedWithMaterialDistFade | uint32 |  |
| bUseHQForwardReflections | uint32 | Forward renderer: enables multiple parallax-corrected reflection captures that b |
| bUsePlanarForwardReflections | uint32 | Enables planar reflection when using the forward renderer or mobile. Enabling th |
| bApplyVertexFog | uint32 | When false, materials are not fogged in forward shading or mobile. Defaults to t |
| bNormalCurvatureToRoughness | uint32 | Reduce roughness based on screen space normal changes. |
| D3D11TessellationMode | TEnumAsByte < enum EMaterialTessellationMode > | The type of tessellation to apply to this object.  Note D3D11 required for anyth |
| bEnableCrackFreeDisplacement | uint32 | Prevents cracks in the surface of the mesh when using tessellation. |
| bEnableAdaptiveTessellation | uint32 | Enables adaptive tessellation, which tries to maintain a uniform number of pixel |
| bUsedWithTexture2DArrayShaderVariant | uint32 | ENABLE_TEXTURE2D_ARRAY_SHADER_VARIANT 	 Enable Dynamic MaterialInstance use Text |
| bSkipRSH | uint32 | Skip Runtime Static Batching (RSH) |
| bSkipDynamicSwitchOp | uint32 |  |
| bEnableWPOShadow | uint32 |  |
| MaxDisplacement | float |  |
| Wireframe | uint32 | Enables a wireframe view of the mesh the material is applied to. |
| bOutputVelocityOnBasePass | uint32 | Skips outputting velocity during the base pass. |
| bUnlitOutputAllMTOnBasePass | uint32 | Force unlit material output all MT during the base pass. |
| ShadingRate | TEnumAsByte < EMaterialShadingRate > | Select what shading rate to apply for platforms that have variable rate shading |
| EditorX | int32 |  |
| EditorY | int32 |  |
| EditorPitch | int32 |  |
| EditorYaw | int32 |  |
| Expressions | TArray < UMaterialExpression * > | Array of material expressions, excluding Comments.  Used by the material editor. |
| MaterialFunctionInfos | TArray < FMaterialFunctionInfo > | Array of all functions this material depends on. |
| MaterialParameterCollectionInfos | TArray < FMaterialParameterCollectionInfo > | Array of all parameter collections this material depends on. |
| bCanMaskedBeAssumedOpaque | uint32 | true if this Material can be assumed Opaque when set to masked. |
| bIsMasked_DEPRECATED | uint32 | true if Material is masked and uses custom opacity |
| bIsPreviewMaterial | uint32 | true if Material is the preview material used in the material editor. |
| bUseMaterialAttributes | uint32 | when true, the material attributes pin is used instead of the regular pins. |
| bComputeFogPerPixel | uint32 | When true, translucent materials have fog computed for every pixel, which costs  |
| bDisableDirectionalLighting | uint32 | When true, the directional lighting will be disabled |
| bAllowDevelopmentShaderCompile | uint32 | If true the compilation environment will be changed to remove the global COMPILE |
| bIsMaterialEditorStatsMaterial | uint32 | true if this is a special material used for stats by the material editor. |
| bUseLandscapeVertexAO | uint32 |  |
| bAllowLandscapeVertexMorph | uint32 |  |
| bUseLandscapeVertexHole | uint32 |  |
| UsageFlagWarnings | uint32 | true if we have printed a warning about material usage for a given usage flag. |
| BlendableLocation | TEnumAsByte < enum EBlendableLocation > | Where the node is inserted in the (post processing) graph, only used if domain i |
| BlendablePriority | int32 | If multiple nodes with the same  type are inserted at the same point, this defin |
| BlendableOutputAlpha | bool | If this is enabled, the blendable will output alpha |
| RefractionMode | TEnumAsByte < enum ERefractionMode > | Controls how the Refraction input is interpreted and how the refraction offset i |
| RefractionDepthBias | float | This is the refraction depth bias, larger values offset distortion to prevent cl |
| bOceanFoam | uint32 |  |
| bEnableMeshClip | uint32 |  |
| bEnableMeshDiscard | uint32 |  |
| bEnableMeshArcPlaneClip | uint32 |  |
| bIsEnhancedUImage | uint32 |  |
| bSimplePointLight | uint32 | Enable this so the material will not calculate spot light shadows |
| StateId | FGuid | Guid that uniquely identifies this material. 	  Any changes to the state of the  |
| ExpressionTextureReferences | TArray < UTexture * > | Cached texture references from all expressions in the material (including nested |
| EditorComments | TArray < UMaterialExpressionComment * > | Array of comments associated with this material; viewed in the material editor. |
| ParameterGroupData | TArray < FParameterGroupData > | Controls where this parameter group is displayed in a material instance paramete |
| ReferencedTextureGuids | TArray < FGuid > |  |
| bCanBakeWithLandscape | uint32 |  |