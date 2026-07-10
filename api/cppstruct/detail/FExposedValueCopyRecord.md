---
title: FExposedValueCopyRecord
---

# FExposedValueCopyRecord

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceProperty_DEPRECATED | UProperty * |  |
| SourcePropertyName | FName |  |
| SourceSubPropertyName | FName |  |
| SourceArrayIndex | int32 |  |
| DestProperty | UProperty * |  |
| DestArrayIndex | int32 |  |
| Size | int32 |  |
| bInstanceIsTarget | bool |  |
| bFastPathExtend | bool |  |
| PostCopyOperation | EPostCopyOperation |  |
| CopyType | ECopyType |  |
| CachedSourceProperty | UProperty * |  |
| SourceSubStructPropertyNameArray | TArray < FName > |  |
| CachedSourceStructSubPropertyArray | TArray < UProperty * > |  |
| CachedFastObj | UObject * |  |
| RootExposedNodeJsonStr | FString |  |
| RootExposedNodeStackData | TArray < uint8 > |  |
| bExposedOperationValid | bool |  |