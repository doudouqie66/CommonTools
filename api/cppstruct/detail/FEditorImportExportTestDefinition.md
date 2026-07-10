---
title: FEditorImportExportTestDefinition
---

# FEditorImportExportTestDefinition

Holds settings for the asset import  export automation test

## Variables

| Name | Type | Description |
|------|------|-------------|
| ImportFilePath | FFilePath | The file to import  	UPROPERTY(config, EditAnywhere, Category = Automation, meta |
| ExportFileExtension | FString | The file extension to use when exporting |
| bSkipExport | bool | If true, the export step will be skipped |
| FactorySettings | TArray < FImportFactorySettingValues > | Settings for the import factory |