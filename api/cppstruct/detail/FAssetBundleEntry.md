---
title: FAssetBundleEntry
---

# FAssetBundleEntry

A struct representing a single AssetBundle

## Variables

| Name | Type | Description |
|------|------|-------------|
| BundleScope | FPrimaryAssetId | Asset this bundle is saved within. This is empty for global bundles, or in the s |
| BundleName | FName | Specific name of this bundle, should be unique for a given scope |
| BundleAssets | TArray < FSoftObjectPath > | List of string assets contained in this bundle |