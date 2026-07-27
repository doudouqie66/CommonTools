---
title: FAnimNode_Base
---

# FAnimNode_Base

This is the base of all runtime animation nodes
 
  To create a new animation node:
    Create a struct derived from FAnimNode_Base - this is your runtime node
    Create a class derived from UAnimGraphNode_Base, containing an instance of your runtime node as a member - this is your visualeditor-only node

## Variables

| Name | Type | Description |
|------|------|-------------|
| NodeUID | int32 |  |
| EvaluateGraphExposedInputs | FExposedValueHandler |  |
| bEnableAsyncInitNode | bool |  |
| NodeTag | FName |  |