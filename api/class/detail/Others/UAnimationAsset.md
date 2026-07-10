---
title: UAnimationAsset
language: cpp
---

# UAnimationAsset

> Inheritance: UObject -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| AnimAssetUID | int32 |  |
| Skeleton | USkeleton * | Pointer to the Skeleton this asset can be played on . |
| MetaData | TArray < UAnimMetaData * > | Meta data that can be saved with the asset  	   	  You can query by GetMetaData  |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the asset |
| bUseBoneRetarget | bool |  |