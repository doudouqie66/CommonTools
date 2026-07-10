---
title: FRepAttachment
---

# FRepAttachment

Handles attachment replication to clients. Movement replication will not happen while AttachParent is non-nullptr

## Variables

| Name | Type | Description |
|------|------|-------------|
| AttachParent | AActor * |  |
| LocationOffset | FVector_NetQuantize100 |  |
| RotationOffset | FRotator |  |
| AttachSocket | FName |  |
| AttachComponent | USceneComponent * |  |
| RelativeScale3D | FVector_NetQuantize100 |  |
| AttachParent_Direct | AActor * |  |
| bHasValidParent | bool |  |