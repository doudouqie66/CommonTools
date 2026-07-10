---
title: UPlayMontageCallbackProxy
language: cpp
---

# UPlayMontageCallbackProxy

> Inheritance: UObject

## Functions

### CreateProxyObjectForPlayMontage

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSkeletalMeshComponent | USkeletalMeshComponent *  |  |
| MontageToPlay | UAnimMontage *  |  |
| PlayRate | float  |  |
| StartingPosition | float  |  |
| StartingSection | FName |  |

**Return:** UPlayMontageCallbackProxy *  

### OnMontageBlendingOut

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage *  |  |
| bInterrupted | bool |  |

**Return:** void  

### OnMontageEnded

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage *  |  |
| bInterrupted | bool |  |

**Return:** void  

### OnNotifyBeginReceived

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NotifyName | FName  |  |
| BranchingPointNotifyPayload | FBranchingPointNotifyPayload & |  |

**Return:** void  

### OnNotifyEndReceived

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NotifyName | FName  |  |
| BranchingPointNotifyPayload | FBranchingPointNotifyPayload & |  |

**Return:** void