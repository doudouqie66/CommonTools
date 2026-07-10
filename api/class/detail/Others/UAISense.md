---
title: UAISense
language: cpp
---

# UAISense

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| DefaultExpirationAge | float | age past which stimulus of this sense are "forgotten" |
| NotifyType | EAISenseNotifyType |  |
| bWantsNewPawnNotification | uint32 | whether this sense is interested in getting notified about new Pawns being spawn |
| bAutoRegisterAllPawnsAsSources | uint32 | If true all newly spawned pawns will get auto registered as source for this sens |
| PerceptionSystemInstance | UAIPerceptionSystem * |  |