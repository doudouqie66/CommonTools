---
title: FRepMovement
---

# FRepMovement

Replicated movement data of our RootComponent.
   Struct used for efficient replication as velocity and location are generally replicated together (this saves a repindex)
   and velocity.Z is commonly zero (most position replications are for walking pawns).

## Variables

| Name | Type | Description |
|------|------|-------------|
| LinearVelocity | FVector |  |
| AngularVelocity | FVector |  |
| Location | FVector |  |
| Rotation | FRotator |  |
| bSimulatedPhysicSleep | uint8 | If set, RootComponent should be sleeping. |
| bRepPhysics | uint8 | If set, additional physic data (angular velocity) will be replicated. |
| bPredictionLocation | uint8 | If set, Location should be autonomous proxy prediction location |
| LocationQuantizationLevel | EVectorQuantization | Allows tuning the compression level for the replicated location vector. You shou |
| VelocityQuantizationLevel | EVectorQuantization | Allows tuning the compression level for the replicated velocity vectors. You sho |
| RotationQuantizationLevel | ERotatorQuantization | Allows tuning the compression level for replicated rotation. You should only nee |