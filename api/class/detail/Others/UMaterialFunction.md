---
title: UMaterialFunction
language: cpp
---

# UMaterialFunction

A Material Function is a collection of material expressions that can be reused in different materials

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| StateId | FGuid | Used by materials using this function to know when to recompile. |
| Description | FString | Description of the function which will be displayed as a tooltip wherever the fu |
| bExposeToLibrary | uint32 | Whether to list this function in the material function library, which is a windo |
| bUseFullPrecision | uint32 | Whether forces the function to use full (highp) precision in the pixel shader. |
| FunctionExpressions | TArray < UMaterialExpression * > | Array of material expressions, excluding Comments.  Used by the material editor. |
| bReentrantFlag | uint32 | Transient flag used to track re-entrance in recursive functions like IsDependent |
| ParentFunction | UMaterialFunction * | Used in the material editor, points to the function asset being edited, which th |
| LibraryCategories_DEPRECATED | TArray < FString > | Categories that this function belongs to in the material function library.   	   |
| LibraryCategoriesText | TArray < FText > | Categories that this function belongs to in the material function library.   	   |
| FunctionEditorComments | TArray < UMaterialExpressionComment * > | Array of comments associated with this material; viewed in the material editor. |
| PreviewMaterial | UMaterial * |  |
| CombinedInputTypes | uint32 |  |
| CombinedOutputTypes | uint32 |  |
| ThumbnailInfo | UThumbnailInfo * | Information for thumbnail rendering |