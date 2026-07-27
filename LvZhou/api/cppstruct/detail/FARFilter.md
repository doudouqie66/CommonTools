---
title: FARFilter
---

# FARFilter

A struct to serve as a filter for Asset Registry queries. Each component element is processed as an 'OR' operation while all the components are processed together as an 'AND' operation.

## Variables

| Name | Type | Description |
|------|------|-------------|
| PackageNames | TArray < FName > | The filter component for package names |
| PackagePaths | TArray < FName > | The filter component for package paths |
| ObjectPaths | TArray < FName > | The filter component containing specific object paths |
| FolderPaths | TArray < FName > | The filter component containing specific object paths |
| ClassNames | TArray < FName > | The filter component for class names. Instances of the specified classes, but no |
| RecursiveClassesExclusionSet | TSet < FName > | Only if bRecursiveClasses is true, the results will exclude classes (and subclas |
| bRecursivePaths | bool | If true, PackagePath components will be recursive |
| bRecursiveClasses | bool | If true, subclasses of ClassNames will also be included and RecursiveClassesExcl |
| bIncludeOnlyOnDiskAssets | bool | If true, only on-disk assets will be returned. Be warned that this is rarely wha |