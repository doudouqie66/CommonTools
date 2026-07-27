---
title: AGameNetworkManager
language: cpp
---

# AGameNetworkManager

Handles game-specific networking management (cheat detection, bandwidth management, etc.).

> Inheritance: AInfo

## Variables

| Name | Type | Description |
|------|------|-------------|
| AdjustedNetSpeed | int32 | Current adjusted net speed - Used for dynamically managing netspeed for listen s |
| LastNetSpeedUpdateTime | float | Last time netspeed was updated for server (by client entering or leaving) |
| TotalNetBandwidth | int32 | Total available bandwidth for listen server, split dynamically across net connec |
| MinDynamicBandwidth | int32 | Minimum bandwidth dynamically set per connection |
| MaxDynamicBandwidth | int32 | Maximum bandwidth dynamically set per connection |
| bIsStandbyCheckingEnabled | uint32 | Used to determine if checking for standby cheats should occur |
| bHasStandbyCheatTriggered | uint32 | Used to determine whether we've already caught a cheat or not |
| StandbyRxCheatTime | float | The amount of time without packets before triggering the cheat code |
| StandbyTxCheatTime | float | The amount of time without packets before triggering the cheat code |
| BadPingThreshold | int32 | The point we determine the server is either delaying packets or has bad upstream |
| PercentMissingForRxStandby | float | The percentage of clients missing RX data before triggering the standby code |
| PercentMissingForTxStandby | float | The percentage of clients missing TX data before triggering the standby code |
| PercentForBadPing | float | The percentage of clients with bad ping before triggering the standby code |
| JoinInProgressStandbyWaitTime | float | The amount of time to wait before checking a connection for standby issues |
| MoveRepSize | float | Average size of replicated move packet (ServerMove() packet size) from player |
| MAXPOSITIONERRORSQUARED | float | MAXPOSITIONERRORSQUARED is the square of the max position error that is accepted |
| MAXNEARZEROVELOCITYSQUARED | float | MAXNEARZEROVELOCITYSQUARED is the square of the max velocity that is considered  |
| CLIENTADJUSTUPDATECOST | float | CLIENTADJUSTUPDATECOST is the bandwidth cost in bytes of sending a client adjust |
| MAXCLIENTUPDATEINTERVAL | float | MAXCLIENTUPDATEINTERVAL is the maximum time between movement updates from the cl |
| MaxMoveDeltaTime | float | MaxMoveDeltaTime is the default maximum time delta of CharacterMovement ServerMo |
| ClientNetSendMoveDeltaTime | float | ClientNetSendMoveDeltaTime is the default minimum time delta of CharacterMovemen |
| ClientNetSendMoveDeltaTimeThrottled | float | ClientNetSendMoveDeltaTimeThrottled is used in place of ClientNetSendMoveDeltaTi |
| ClientNetSendMoveDeltaTimeStationary | float | ClientNetSendMoveDeltaTimeStationary is used when players are determined to not  |
| ClientNetSendMoveThrottleAtNetSpeed | int32 | When player net speed (CurrentNetSpeed, based on ConfiguredInternetSpeed or Conf |
| ClientNetSendMoveThrottleOverPlayerCount | int32 | When player count is greater than this amount, ClientNetSendMoveDeltaTimeThrottl |
| ClientAuthorativePosition | bool | If client update is within MAXPOSITIONERRORSQUARED then he is authorative on his |
| ClientErrorUpdateRateLimit | float | Minimum delay between the server sending error corrections to a client, in secon |
| bMovementTimeDiscrepancyDetection | bool | Whether movement time discrepancy detection is enabled. |
| bMovementTimeDiscrepancyResolution | bool | Whether movement time discrepancy resolution is enabled (when detected, make cli |
| MovementTimeDiscrepancyMaxTimeMargin | float | Maximum time client can be ahead before triggering movement time discrepancy det |
| MovementTimeDiscrepancyMinTimeMargin | float | Maximum time client can be behind. |
| MovementTimeDiscrepancyResolutionRate | float | During time discrepancy resolution, we "pay back" the time discrepancy at this r |
| MovementTimeDiscrepancyDriftAllowance | float | Accepted drift in clocks between client and server as a percent per second allow |
| bMovementTimeDiscrepancyForceCorrectionsDuringResolution | bool | Whether client moves should be force corrected during time discrepancy resolutio |
| bUseDistanceBasedRelevancy | bool | If true, actor network relevancy is constrained by whether they are within their |