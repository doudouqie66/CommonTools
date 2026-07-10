---
title: USkeletalMeshSocket
language: cpp
---

# USkeletalMeshSocket

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| SocketName | FName | Defines a named attachment location on the USkeletalMesh.  	 	These are set up i |
| BoneName | FName |  |
| RelativeLocation | FVector |  |
| RelativeRotation | FRotator |  |
| RelativeScale | FVector |  |
| BaseLocation | FVector |  |
| BaseRotation | FRotator |  |
| BaseScale | FVector |  |
| bDynamicCreate | bool |  |
| RelativeBoneName | FName |  |
| bForceAlwaysAnimated | bool | If true then the hierarchy of bones this socket is attached to will always be  	 |

## Functions

### GetSocketLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SkelComp | USkeletalMeshComponent * |  |

**Return:** ENGINE_API FVector  

### InitializeSocketFromLocation

Sets BoneName, RelativeLocation and RelativeRotation based on closest bone to WorldLocation and WorldNormal

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SkelComp | USkeletalMeshComponent *  |  |
| WorldLocation | FVector  |  |
| WorldNormal | FVector |  |

**Return:** ENGINE_API void