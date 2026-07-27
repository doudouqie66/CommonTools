---
title: FMovieSceneEvent
---

# FMovieSceneEvent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Ptrs | FMovieSceneEventPtrs | The function that should be called to invoke this event. 	 Functions must have e |
| PayloadVariables | TMap < FName , FMovieSceneEventPayloadVariable > | Array of payload variables to be added to the generated function |
| CompiledFunctionName | FName |  |
| BoundObjectPinName | FName |  |
| WeakEndpoint | TWeakObjectPtr < UObject > | Serialized weak pointer to the function entry (UK2Node_FunctionEntry) or custom  |
| GraphGuid_DEPRECATED | FGuid | (deprecated) The UEdGraph::GraphGuid property that relates the graph within whic |
| NodeGuid_DEPRECATED | FGuid | (deprecated) When valid, relates to the The UEdGraphNode::NodeGuid for a custom  |
| FunctionEntry_DEPRECATED | TWeakObjectPtr < UObject > | Deprecated weak pointer to the function entry to call - no longer serialized but |