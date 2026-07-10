---
title: UEditableGameplayTagQuery
language: cpp
---

# UEditableGameplayTagQuery

This is an editor-only representation of a query, designed to be editable with a typical property window.
  To edit a query in the editor, an FGameplayTagQuery is converted to a set of UObjects and edited,  When finished,
  the query struct is rewritten and these UObjects are discarded.
  This query representation is not intended for runtime use.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| UserDescription | FString | User-supplied description, shown in property details. Auto-generated description |
| RootExpression | UEditableGameplayTagQueryExpression * | The base expression of this query. |
| TagQueryExportText_Helper | FGameplayTagQuery | Property to hold a gameplay tag query so we can use the exporttext path to get a |