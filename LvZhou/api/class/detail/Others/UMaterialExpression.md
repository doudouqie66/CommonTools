---
title: UMaterialExpression
language: cpp
---

# UMaterialExpression

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Material | UMaterial * | The material that this expression is currently being compiled in.   	  This is n |
| Function | UMaterialFunction * | The material function that this expression is being used with, if any. 	  This w |
| Desc | FString | A description that level designers can add (shows in the material editor UI). |
| BorderColor | FColor | Color of the expression's border outline. |
| bRealtimePreview | uint32 | Set to true by RecursiveUpdateRealtimePreview() if the expression's preview need |
| bNeedToUpdatePreview | uint32 | If true, we should update the preview next render. This is set when changing bRe |
| bIsParameterExpression | uint32 | Indicates that this is a 'parameter' type of expression and should always be loa |
| bCommentBubbleVisible | uint32 | If true, the comment bubble will be visible in the graph editor |
| bShowOutputNameOnPin | uint32 | If true, use the output name as the label for the pin |
| bShowMaskColorsOnPin | uint32 | If true, changes the pin color to match the output mask |
| bHidePreviewWindow | uint32 | If true, do not render the preview window for the expression |
| bCollapsed | uint32 | If true, show a collapsed version of the node |
| bShaderInputData | uint32 | Whether the node represents an input to the shader or not.  Used to color the no |
| bShowInputs | uint32 | Whether to draw the expression's inputs. |
| bShowOutputs | uint32 | Whether to draw the expression's outputs. |
| Outputs | TArray < FExpressionOutput > | The expression's outputs, which are set in default properties by derived classes |
| MaterialExpressionEditorX | int32 |  |
| MaterialExpressionEditorY | int32 |  |
| GraphNode | UEdGraphNode * | Expression's Graph representation |
| MaterialExpressionGuid | FGuid | GUID to uniquely identify this node, to help the tutorials out |
| MenuCategories | TArray < FText > | Localized categories to sort this expression into... |