---
title: UHLODProxy
language: cpp
---

# UHLODProxy

This asset acts as a proxy to a static mesh for ALODActors to display

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| ProxyMeshes | TArray < FHLODProxyMesh > | All the mesh proxies we contain |
| OwningMap | TSoftObjectPtr < UWorld > | Keep hold of the level in the editor to allow for package cleaning etc. |