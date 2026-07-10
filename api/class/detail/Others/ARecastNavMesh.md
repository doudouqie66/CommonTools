---
title: ARecastNavMesh
language: cpp
---

# ARecastNavMesh

> Inheritance: ANavigationData

## Variables

| Name | Type | Description |
|------|------|-------------|
| navMeshFileName | FString |  |
| bDrawTriangleEdges | uint32 | should we draw edges of every navmesh's triangle |
| bDrawPolyEdges | uint32 | should we draw edges of every poly (i.e. not only border-edges) |
| bDrawFilledPolys | uint32 | if disabled skips filling drawn navmesh polygons |
| bDrawNavMeshEdges | uint32 | should we draw border-edges |
| bDrawTileBounds | uint32 | should we draw the tile boundaries |
| bDrawPathCollidingGeometry | uint32 | Draw input geometry passed to the navmesh generator.  Recommend disabling other  |
| bDrawTileLabels | uint32 |  |
| bDrawPolygonLabels | uint32 |  |
| bDrawDefaultPolygonCost | uint32 |  |
| bDrawLabelsOnPathNodes | uint32 |  |
| bDrawNavLinks | uint32 |  |
| bDrawFailedNavLinks | uint32 |  |
| bDrawClusters | uint32 |  |
| bDrawOctree | uint32 | should we draw edges of every navmesh's triangle |
| bDistinctlyDrawTilesBeingBuilt | uint32 |  |
| bDrawNavMesh | uint32 |  |
| DrawOffset | float | vertical offset added to navmesh's debug representation for better readability |
| bFixedTilePoolSize | uint32 | if true, the NavMesh will allocate fixed size pool for tiles, should be enabled  |
| TilePoolSize | int32 | maximum number of tiles NavMesh can hold |
| TileSizeUU | float | size of single tile, expressed in uu |
| CellSize | float | horizontal size of voxelization cell |
| CellHeight | float | vertical size of voxelization cell |
| AgentRadius | float | Radius of smallest agent to traverse this navmesh |
| AgentHeight | float |  |
| AgentMaxHeight | float | Size of the tallest agent that will path with this navmesh. |
| AgentMaxSlope | float | The maximum slope (angle) that the agent can move on. |
| AgentMaxStepHeight | float |  |
| MinRegionArea | float | The minimum dimension of area. Areas smaller than this will be discarded |
| MergeRegionSize | float | The size limit of regions to be merged with bigger regions (watershed partitioni |
| MaxSimplificationError | float | How much navigable shapes can get simplified - the higher the value the more fre |
| MaxSimultaneousTileGenerationJobsCount | int32 |  |
| TileNumberHardLimit | int32 | Absolute hard limit to number of navmesh tiles. Be very, very careful while modi |
| PolyRefTileBits | int32 |  |
| PolyRefNavPolyBits | int32 |  |
| PolyRefSaltBits | int32 |  |
| DefaultDrawDistance | float | navmesh draw distance in game (always visible in editor) |
| DefaultMaxSearchNodes | float | specifes default limit to A nodes used when performing navigation queries.  	 	C |
| DefaultMaxHierarchicalSearchNodes | float | specifes default limit to A nodes used when performing hierarchical navigation q |
| bWithoutLayerCache | bool | creating navmesh polys without layer cache |
| WithoutLayerCachePartitioning | TEnumAsByte < ERecastWithoutLayerCachePartitioning :: Type > | partitioning method for creating navmesh polys when not use layer cache |
| RegionPartitioning | TEnumAsByte < ERecastPartitioning :: Type > | partitioning method for creating navmesh polys |
| LayerPartitioning | TEnumAsByte < ERecastPartitioning :: Type > | partitioning method for creating tile layers |
| RegionChunkSplits | int32 | number of chunk splits (along single axis) used for region's partitioning: Chunk |
| LayerChunkSplits | int32 | number of chunk splits (along single axis) used for layer's partitioning: Chunky |
| bSortNavigationAreasByCost | uint32 | Controls whether Navigation Areas will be sorted by cost before application  	 	 |
| bPerformVoxelFiltering | uint32 | controls whether voxel filterring will be applied (via FRecastTileGenerator::App |
| bMarkLowHeightAreas | uint32 | mark areas with insufficient free height above instead of cutting them out |
| bDoFullyAsyncNavDataGathering | uint32 |  |
| bUseBetterOffsetsFromCorners | uint32 | TODO: switch to disable new code from OffsetFromCorners if necessary - remove it |
| bStoreEmptyTileLayers | uint32 | If set, tiles generated without any navmesh data will be marked to distinguish t |
| bUseVirtualFilters | uint32 | Indicates whether default navigation filters will use virtual functions. Default |
| bAllowNavLinkAsPathEnd | uint32 | If set, paths can end at navlink poly (not the ground one!) |
| bOnlySavedOnDS | bool |  |
| PolyMeshSubvision | USubvisionMethodBase * |  |
| bAllowedDynamicNavAffectors | bool |  |
| DynamicAffectorUpdateInterval | float | Minimal time, in seconds, between active tiles set update |
| DynamicAffectorUpdateMode | EDynamicNavAffectorUpdateMode |  |
| bAllowedDynamicObstacle | bool |  |
| bUseVoxelCache | uint32 | Cache rasterized voxels instead of just collision verticesindices in navigation  |
| TileSetUpdateInterval | float | indicates how often we will sort navigation tiles to mach players position |
| HeuristicScale | float | Euclidean distance heuristic scale used while pathfinding |
| VerticalDeviationFromGroundCompensation | float | Value added to each search height to compensate for error between navmesh polys  |