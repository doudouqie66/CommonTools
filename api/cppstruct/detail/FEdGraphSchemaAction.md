---
title: FEdGraphSchemaAction
---

# FEdGraphSchemaAction

This structure represents a context dependent action, with sufficient information for the schema to perform it.

## Variables

| Name | Type | Description |
|------|------|-------------|
| MenuDescription | FText | The menu text that should be displayed for this node in the creation menu. |
| TooltipDescription | FText | The tooltip text that should be displayed for this node in the creation menu. |
| Category | FText | This is the UI centric category the action fits in (e.g., Functions, Variables). |
| Keywords | FText | This is just an arbitrary dump of extra text that search will match on, in addit |
| Grouping | int32 | This is a priority number for overriding alphabetical order in the action list ( |
| SectionID | int32 | Section ID of the action list in which this action belongs. |
| MenuDescriptionArray | TArray < FString > |  |
| FullSearchTitlesArray | TArray < FString > |  |
| FullSearchKeywordsArray | TArray < FString > |  |
| FullSearchCategoryArray | TArray < FString > |  |
| LocalizedMenuDescriptionArray | TArray < FString > |  |
| LocalizedFullSearchTitlesArray | TArray < FString > |  |
| LocalizedFullSearchKeywordsArray | TArray < FString > |  |
| LocalizedFullSearchCategoryArray | TArray < FString > |  |
| SearchText | FString |  |