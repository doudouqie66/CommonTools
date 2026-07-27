---
title: UKismetStringLibrary
language: cpp
---

# UKismetStringLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### Conv_FloatToString

Converts a float value to a string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFloat | float |  |

**Return:** FString  

### Conv_IntToString

Converts an integer value to a string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InInt | int32 |  |

**Return:** FString  

### Conv_Int64ToString

Converts an integer64 value to a string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InInt64 | int64 |  |

**Return:** FString  

### Conv_UInt64ToString

Converts an uinteger64 value to a string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InUInt64 | uint64 |  |

**Return:** FString  

### Conv_ByteToString

Converts a byte value to a string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InByte | uint8 |  |

**Return:** FString  

### Conv_BoolToString

Converts a boolean value to a string, either 'true' or 'false'

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBool | bool |  |

**Return:** FString  

### Conv_VectorToString

Converts a vector value to a string, in the form 'X= Y= Z='

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InVec | FVector |  |

**Return:** FString  

### Conv_IntVectorToString

Converts an IntVector value to a string, in the form 'X= Y= Z='

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIntVec | FIntVector |  |

**Return:** FString  

### Conv_Vector2dToString

Converts a vector2d value to a string, in the form 'X= Y='

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InVec | FVector2D |  |

**Return:** FString  

### Conv_RotatorToString

Converts a rotator value to a string, in the form 'P= Y= R='

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InRot | FRotator |  |

**Return:** FString  

### Conv_TransformToString

Converts a transform value to a string, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTrans | FTransform & |  |

**Return:** FString  

### Conv_ObjectToString

Converts a UObject value to a string by calling the object's GetName method

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObj | UObject * |  |

**Return:** FString  

### Conv_ColorToString

Converts a linear color value to a string, in the form '(R=,G=,B=,A=)'

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColor | FLinearColor |  |

**Return:** FString  

### Conv_DateTimeToString

Converts a date time value to a string, in the form '%Y.%m.%d-%H.%M.%S'

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InDateTime | FDateTime |  |

**Return:** FString  

### Conv_NameToString

Converts a name value to a string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InName | FName |  |

**Return:** FString  

### Conv_StringToName

Converts a string to a name value

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString & |  |

**Return:** FName  

### Conv_StringToInt

Converts a string to a int value

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString & |  |

**Return:** int32  

### Conv_StringToInt64

Converts a string to a int64 value

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString & |  |

**Return:** int64  

### Conv_StringToFloat

Converts a string to a float value

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString & |  |

**Return:** float  

### Conv_StringToVector

Convert String Back To Vector. IsValid indicates whether or not the string could be successfully converted.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString &  |  |
| OutConvertedVector | FVector &  |  |
| OutIsValid | bool & |  |

**Return:** void  

### Conv_StringToVector2D

Convert String Back To Vector2D. IsValid indicates whether or not the string could be successfully converted.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString &  |  |
| OutConvertedVector2D | FVector2D &  |  |
| OutIsValid | bool & |  |

**Return:** void  

### Conv_StringToRotator

Convert String Back To Rotator. IsValid indicates whether or not the string could be successfully converted.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString &  |  |
| OutConvertedRotator | FRotator &  |  |
| OutIsValid | bool & |  |

**Return:** void  

### Conv_StringToColor

Convert String Back To Color. IsValid indicates whether or not the string could be successfully converted.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString &  |  |
| OutConvertedColor | FLinearColor &  |  |
| OutIsValid | bool & |  |

**Return:** void  

### BuildString_Float

Converts a float->string, create a new string in the form AppendTo+Prefix+InFloat+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InFloat | float  | - The float value to convert |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Int

Converts a int->string, creating a new string in the form AppendTo+Prefix+InInt+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InInt | int32  | - The int value to convert |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Int64

Converts a int->string, creating a new string in the form AppendTo+Prefix+InInt+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InInt64 | int64  |  |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Bool

Converts a boolean->string, creating a new string in the form AppendTo+Prefix+InBool+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InBool | bool  | - The bool value to convert. Will add "true" or "false" to the conversion string |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Vector

Converts a vector->string, creating a new string in the form AppendTo+Prefix+InVector+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InVector | FVector  | - The vector value to convert. Uses the standard FVector::ToString conversion |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_IntVector

Converts an IntVector->string, creating a new string in the form AppendTo+Prefix+InIntVector+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InIntVector | FIntVector  | - The intVector value to convert. Uses the standard FVector::ToString conversion |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Vector2d

Converts a vector2d->string, creating a new string in the form AppendTo+Prefix+InVector2d+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InVector2d | FVector2D  | - The vector2d value to convert. Uses the standard FVector2D::ToString conversion |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Rotator

Converts a rotator->string, creating a new string in the form AppendTo+Prefix+InRot+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InRot | FRotator  | - The rotator value to convert. Uses the standard ToString conversion |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Object

Converts a object->string, creating a new string in the form AppendTo+Prefix+object name+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InObj | UObject *  | - The object to convert. Will insert the name of the object into the conversion string |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Color

Converts a color->string, creating a new string in the form AppendTo+Prefix+InColor+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InColor | FLinearColor  | - The linear color value to convert. Uses the standard ToString conversion |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### BuildString_Name

Converts a color->string, creating a new string in the form AppendTo+Prefix+InName+Suffix

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AppendTo | FString &  | - An existing string to use as the start of the conversion string |
| Prefix | FString &  | - A string to use as a prefix, after the AppendTo string |
| InName | FName  | - The name value to convert |
| Suffix | FString & | - A suffix to append to the end of the conversion string |

**Return:** FString  A new string built from the passed parameters

### Concat_StrStr

Concatenates two strings together to make a new string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FString &  | - The original string |
| B | FString & | - The string to append to A |

**Return:** FString   A new string which is the concatenation of A+B

### EqualEqual_StrStr

Test if the input strings are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FString &  | - The string to compare against |
| B | FString & | - The string to compare |

**Return:** bool   True if the strings are equal, false otherwise

### EqualEqual_StriStri

Test if the input strings are equal (A == B), ignoring case

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FString &  | - The string to compare against |
| B | FString & | - The string to compare |

**Return:** bool   True if the strings are equal, false otherwise

### NotEqual_StrStr

Test if the input string are not equal (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FString &  | - The string to compare against |
| B | FString & | - The string to compare |

**Return:** bool  Returns true if the input strings are not equal, false if they are equal

### NotEqual_StriStri

Test if the input string are not equal (A != B), ignoring case differences

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FString &  | - The string to compare against |
| B | FString & | - The string to compare |

**Return:** bool  Returns true if the input strings are not equal, false if they are equal

### Len

Returns the number of characters in the string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| S | FString & |  |

**Return:** int32  The number of chars in the string

### GetSubstring

Returns a substring from the string starting at the specified position

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  | - The string to get the substring from |
| StartIndex | int32  | - The location in SourceString to use as the start of the substring |
| Length | int32 | The length of the requested substring |

**Return:** FString  The requested substring

### FindSubstring

Finds the starting index of a substring in the a specified string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SearchIn | FString &  | The string to search within |
| Substring | FString &  | The string to look for in the SearchIn string |
| bUseCase | bool  | Whether or not to be case-sensitive |
| bSearchFromEnd | bool  | Whether or not to start the search from the end of the string instead of the beginning |
| StartPosition | int32 | The position to start the search from |

**Return:** int32  The index (starting from 0 if bSearchFromEnd is false) of the first occurence of the substring

### Contains

Returns whether this string contains the specified substring.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SearchIn | FString &  |  |
| Substring | FString &  |  |
| bUseCase | bool  |  |
| bSearchFromEnd | bool |  |

**Return:** bool  				Returns whether the string contains the substring

### GetCharacterAsNumber

Gets a single character from the string (as an integer)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  | - The string to convert |
| Index | int32 | - Location of the character whose value is required |

**Return:** int32  The integer value of the character or 0 if index is out of range

### ParseIntoArray

Gets an array of strings from a source string divided up by a separator and empty strings can optionally be culled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  | - The string to chop up |
| Delimiter | FString &  | - The string to delimit on |
| CullEmptyStrings | bool | = true - Cull (true) empty strings or add them to the array (false) |

**Return:** TArray < FString >  The array of string that have been separated

### JoinStringArray

Concatenates an array of strings into a single string.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceArray | TArray < FString > &  | - The array of strings to concatenate. |
| Separator | FString & | - The string used to separate each element. |

**Return:** FString  The final, joined, separated string.

### GetCharacterArrayFromString

Returns an array that contains one entry for each character in SourceString

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString & | The string to break apart into characters |

**Return:** TArray < FString >  An array containing one entry for each character in SourceString

### ToUpper

Returns a string converted to Upper case

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString & | The string to convert |

**Return:** FString  The string in upper case

### ToLower

Returns a string converted to Lower case

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString & | The string to convert |

**Return:** FString  The string in lower case

### LeftPad

Pad the left of this string for a specified number of characters 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  | The string to pad |
| ChCount | int32 |  Amount of padding required |

**Return:** FString  The padded string

### RightPad

Pad the right of this string for a specified number of characters

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  | The string to pad |
| ChCount | int32 |  Amount of padding required |

**Return:** FString  The padded string

### IsNumeric

Checks if a string contains only numeric characters

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString & | The string to check |

**Return:** bool  true if the string only contains numeric characters

### StartsWith

Test whether this string starts with given string.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| InPrefix | FString &  |  |
| SearchCase | ESearchCase :: Type | Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase ) |

**Return:** bool  true if this string begins with specified text, false otherwise

### EndsWith

Test whether this string ends with given string.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| InSuffix | FString &  |  |
| SearchCase | ESearchCase :: Type | Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase ) |

**Return:** bool  true if this string ends with specified text, false otherwise

### MatchesWildcard

Searches this string for a given wild card
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| Wildcard | FString &  | ?-type wildcard |
| SearchCase | ESearchCase :: Type | Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase ) |

**Return:** bool  true if this string matches the ?-type wildcard given.

### Trim

Removes whitespace characters from the front of this string.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString & |  |

**Return:** FString  

### TrimTrailing

Removes trailing whitespace characters

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString & |  |

**Return:** FString  

### CullArray

Takes an array of strings and removes any zero length entries.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| InArray | TArray < FString > & | The array to cull |

**Return:** int32  The number of elements left in InArray

### Reverse

Returns a copy of this string, with the characters in reverse order

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString & |  |

**Return:** FString  

### Replace

Replace all occurrences of a substring in this string
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| From | FString &  | substring to replace |
| To | FString &  | substring to replace From with |
| SearchCase | ESearchCase :: Type | Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase ) |

**Return:** FString  a copy of this string with the replacement made

### ReplaceInline

Replace all occurrences of SearchText with ReplacementText in this string.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| SearchText | FString &  | the text that should be removed from this string |
| ReplacementText | FString &  | the text to insert in its place |
| SearchCase | ESearchCase :: Type | Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase ) |

**Return:** int32  the number of occurrences of SearchText that were replaced.

### Split

Splits this string at given string position case sensitive.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| InStr | FString &  | The string to search and split at |
| LeftS | FString &  | out the string to the left of InStr, not updated if return is false |
| RightS | FString &  | out the string to the right of InStr, not updated if return is false |
| SearchCase | ESearchCase :: Type  | Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase ) |
| SearchDir | ESearchDir :: Type |  Indicates whether the search starts at the begining or at the end ( defaults to ESearchDir::FromStart ) |

**Return:** bool  true if string is split, otherwise false

### Left

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| Count | int32 |  |

**Return:** FString  the left most given number of characters

### LeftChop

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| Count | int32 |  |

**Return:** FString  the left most characters from the string chopping the given number of characters from the end

### Right

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| Count | int32 |  |

**Return:** FString  the string to the right of the specified location, counting back from the right (end of the word).

### RightChop

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| Count | int32 |  |

**Return:** FString  the string to the right of the specified location, counting forward from the left (from the beginning of the word).

### Mid

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceString | FString &  |  |
| Start | int32  |  |
| Count | int32 |  |

**Return:** FString  the substring from Start position for Count characters.

### TimeSecondsToString

Convert a number of seconds into minutes:seconds.milliseconds format string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSeconds | float |  |

**Return:** FString  

### TimeSecondsToStringSec

Convert a number of seconds into minutes:seconds

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSeconds | float |  |

**Return:** FString