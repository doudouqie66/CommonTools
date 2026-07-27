---
title: FAnimNode_CurveSource
---

# FAnimNode_CurveSource

Supply curves from some external source (e.g. audio)

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourcePose | FPoseLink |  |
| SourceBinding | FName | The binding of the curve source we want to bind to. 	  We will bind to an object |
| Alpha | float | How much we wan to blend the curve in by |
| CurveSource | TScriptInterface < ICurveSourceInterface > | Our bound source |