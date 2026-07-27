---
title: FCollisionImpactData
---

# FCollisionImpactData

Information about an overall collision, including contacts.

## Variables

| Name | Type | Description |
|------|------|-------------|
| ContactInfos | TArray < FRigidBodyContactInfo > | all the contact points in the collision |
| TotalNormalImpulse | FVector | the total impulse applied as the two objects push against each other |
| TotalFrictionImpulse | FVector | the total counterimpulse applied of the two objects sliding against each other |