---
title: ANavLinkProxy
language: cpp
---

# ANavLinkProxy

> Inheritance: AActor -> INavLinkHostInterface -> INavRelevantInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| PointLinks | TArray < FNavigationLink > | Navigation links (point to point) added to navigation data |
| SegmentLinks | TArray < FNavigationSegmentLink > | Navigation links (segment to segment) added to navigation data 		@todo hidden fr |
| SmartLinkComp | UNavLinkCustomComponent * | Smart link: can affect path following |
| bSmartLinkIsRelevant | bool | Smart link: toggle relevancy |
| EdRenderComp | UNavLinkRenderingComponent * | Editor Preview |
| SpriteComponent | UBillboardComponent * |  |

## Functions

### ReceiveSmartLinkReached

called when agent reaches smart link during path following, use ResumePathFollowing() to give control back

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Agent | AActor *  |  |
| Destination | FVector & |  |

**Return:** void  

### ResumePathFollowing

resume normal path following

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Agent | AActor * |  |

**Return:** void  

### IsSmartLinkEnabled

check if smart link is enabled

**Return:** bool 

### SetSmartLinkEnabled

change state of smart link

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnabled | bool |  |

**Return:** void  

### HasMovingAgents

check if any agent is moving through smart link right now

**Return:** bool