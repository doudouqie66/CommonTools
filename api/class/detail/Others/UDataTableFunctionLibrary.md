---
title: UDataTableFunctionLibrary
language: cpp
---

# UDataTableFunctionLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### EvaluateCurveTableRow

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CurveTable | UCurveTable *  |  |
| RowName | FName  |  |
| InXY | float  |  |
| OutResult | TEnumAsByte < EEvaluateCurveTableResult :: Type > &  |  |
| OutXY | float &  |  |
| ContextString | FString & |  |

**Return:** void  

### GetDataTableRowNames

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Table | UDataTable *  |  |
| OutRowNames | TArray < FName > & |  |

**Return:** void  

### GetDataTableRowFromName

Get a Row from a DataTable given a RowName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Table | UDataTable *  |  |
| RowName | FName  |  |
| OutRow | FTableRowBase & |  |

**Return:** bool  

### FillDataTableFromCSVString

Empty and fill a Data Table from CSV string.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DataTable | UDataTable *  |  |
| CSVString | FString & | The Data that representing the contents of a CSV file. |

**Return:** bool  True if the operation succeeds, check the log for errors if it didn't succeed.