---
title: URig
language: cpp
---

# URig

URig : that has rigging data for skeleton
 		- used for retargeting
 		- support to share different animations

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| TransformBases | TArray < FTransformBase > | Skeleton bone tree - each contains name and parent index |
| Nodes | TArray < FNode > | Skeleton bone tree - each contains name and parent index |