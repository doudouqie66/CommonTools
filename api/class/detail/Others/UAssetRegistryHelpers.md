---
title: UAssetRegistryHelpers
language: cpp
---

# UAssetRegistryHelpers

> Inheritance: UObject

## Functions

### GetAssetRegistry

**Return:** TScriptInterface < IAssetRegistry > 

### CreateAssetData

Creates asset data from a UObject. 
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAsset | UObject *  | The asset to create asset data for |
| bAllowBlueprintClass | bool | By default trying to create asset data for a blueprint class will create one for the UBlueprint instead |

**Return:** FAssetData  

### IsValid

Checks to see if this AssetData refers to an asset or is NULL

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** bool  

### IsUAsset

Returns true if this asset was found in a UAsset file

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** bool  

### IsRedirector

Returns true if the this asset is a redirector.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** bool  

### GetFullName

Returns the full name for the asset in the form: Class ObjectPath

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** FString  

### ToSoftObjectPath

Convert to a SoftObjectPath for loading

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** FSoftObjectPath  

### GetClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** UClass *  

### GetAsset

Returns the asset UObject if it is loaded or loads the asset if it is unloaded then returns the result

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** UObject *  

### IsAssetLoaded

Returns true if the asset is loaded

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** bool  

### GetExportTextName

Returns the name for the asset in the form: Class'ObjectPath'

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData & |  |

**Return:** FString  

### GetTagValue < FName >

Gets the value associated with the given tag as a string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAssetData | FAssetData &  |  |
| InTagName | FName &  |  |
| OutTagValue | FString & |  |

**Return:** bool  

### SetFilterTagsAndValues

Populates the FARFilters tags and values map with the passed in tags and values

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFilter | FARFilter &  |  |
| InTagsAndValues | TArray < FTagAndValue > & |  |

**Return:** FARFilter