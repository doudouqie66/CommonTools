---
title: UAISense_Prediction
language: cpp
---

# UAISense_Prediction

> Inheritance: UAISense

## Variables

| Name | Type | Description |
|------|------|-------------|
| RegisteredEvents | TArray < FAIPredictionEvent > |  |

## Functions

### RequestControllerPredictionEvent

Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds
	 	Location is being predicted based on PredicterActor's current location and velocity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Requestor | AAIController *  |  |
| PredictedActor | AActor *  |  |
| PredictionTime | float |  |

**Return:** void  

### RequestPawnPredictionEvent

Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds
	 	Location is being predicted based on PredicterActor's current location and velocity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Requestor | APawn *  |  |
| PredictedActor | AActor *  |  |
| PredictionTime | float |  |

**Return:** void