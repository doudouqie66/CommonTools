---
title: UKismetMathLibrary
language: cpp
---

# UKismetMathLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### RandomBool

Returns a uniformly distributed random bool

**Return:** bool 

### RandomBoolWithWeight

Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g.,
	 		Weight = .6 return value = True 60% of the time

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Weight | float |  |

**Return:** bool  

### RandomBoolWithWeightFromStream

Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g.,
			Weight = .6 return value = True 60% of the time

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Weight | float  |  |
| RandomStream | FRandomStream & |  |

**Return:** bool  

### Not_PreBool

Returns the logical complement of the Boolean value (NOT A)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool |  |

**Return:** bool  

### EqualEqual_BoolBool

Returns true if the values are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool  |  |
| B | bool |  |

**Return:** bool  

### NotEqual_BoolBool

Returns true if the values are not equal (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool  |  |
| B | bool |  |

**Return:** bool  

### BooleanAND

Returns the logical AND of two values (A AND B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool  |  |
| B | bool |  |

**Return:** bool  

### BooleanNAND

Returns the logical NAND of two values (A AND B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool  |  |
| B | bool |  |

**Return:** bool  

### BooleanOR

Returns the logical OR of two values (A OR B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool  |  |
| B | bool |  |

**Return:** bool  

### BooleanXOR

Returns the logical eXclusive OR of two values (A XOR B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool  |  |
| B | bool |  |

**Return:** bool  

### BooleanNOR

Returns the logical Not OR of two values (A NOR B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | bool  |  |
| B | bool |  |

**Return:** bool  

### Multiply_ByteByte

Multiplication (A  B) 
	UFUNCTION(BlueprintPure, meta=(DisplayName = "Byte  Byte", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true"), Category="Math|Byte")

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** uint8  

### Divide_ByteByte

Division (A  B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** uint8  

### Percent_ByteByte

Modulo (A % B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** uint8  

### Add_ByteByte

Addition (A + B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** uint8  

### Subtract_ByteByte

Subtraction (A - B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** uint8  

### BMin

Returns the minimum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** uint8  

### BMax

Returns the maximum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** uint8  

### Less_ByteByte

Returns true if A is less than B (A < B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** bool  

### Greater_ByteByte

Returns true if A is greater than B (A > B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** bool  

### LessEqual_ByteByte

Returns true if A is less than or equal to B (A <= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** bool  

### GreaterEqual_ByteByte

Returns true if A is greater than or equal to B (A >= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** bool  

### EqualEqual_ByteByte

Returns true if A is equal to B (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** bool  

### NotEqual_ByteByte

Returns true if A is not equal to B (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint8  |  |
| B | uint8 |  |

**Return:** bool  

### Multiply_IntInt

Multiplication (A  B) 
	UFUNCTION(BlueprintPure, meta=(DisplayName = "integer  integer", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true"), Category="Math|Integer")

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Divide_IntInt

Division (A  B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Percent_IntInt

Modulo (A % B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Add_IntInt

Addition (A + B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Subtract_IntInt

Subtraction (A - B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Less_IntInt

Returns true if A is less than B (A < B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** bool  

### Greater_IntInt

Returns true if A is greater than B (A > B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** bool  

### LessEqual_IntInt

Returns true if A is less than or equal to B (A <= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** bool  

### GreaterEqual_IntInt

Returns true if A is greater than or equal to B (A >= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** bool  

### EqualEqual_IntInt

Returns true if A is equal to B (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** bool  

### NotEqual_IntInt

Returns true if A is not equal to B (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** bool  

### InRange_IntInt

Returns true if value is between Min and Max (V >= Min && V <= Max)
	  If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger
	  If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32  |  |
| Min | int32  |  |
| Max | int32  |  |
| InclusiveMin | bool  |  |
| InclusiveMax | bool |  |

**Return:** bool  

### And_IntInt

Bitwise AND (A & B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Xor_IntInt

Bitwise XOR (A ^ B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Or_IntInt

Bitwise OR (A | B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Not_Int

Bitwise NOT (~A)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32 |  |

**Return:** int32  

### LeftShift_Int

Bitwise LeftShift (A << N)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| N | int32 |  |

**Return:** int32  

### RightShift_Int

Bitwise RightShift (A >> N)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| N | int32 |  |

**Return:** int32  

### LeftShift_Int64

Bitwise LeftShift (A << N)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| N | int32 |  |

**Return:** int64  

### RightShift_Int64

Bitwise RightShift (A >> N)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| N | int32 |  |

**Return:** int64  

### SignOfInteger

Sign (integer, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32 |  |

**Return:** int32  

### RandomInteger

Returns a uniformly distributed random number between 0 and Max - 1

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32 |  |

**Return:** int32  

### RandomIntegerInRange

Return a random integer between Min and Max (>= Min and <= Max)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Min | int32  |  |
| Max | int32 |  |

**Return:** int32  

### Min

Returns the minimum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Max

Returns the maximum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Clamp

Returns Value clamped to be between A and B (inclusive)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | int32  |  |
| A | int32  |  |
| B | int32 |  |

**Return:** int32  

### Abs_Int

Returns the absolute (positive) value of A

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32 |  |

**Return:** int32  

### Multiply_Int64Int64

Multiplication (A  B) 
	UFUNCTION(BlueprintPure, meta=(DisplayName = "integer64  integer64", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true"), Category="Math|Integer64")

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Divide_Int64Int64

Division (A  B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Add_Int64Int64

Addition (A + B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Subtract_Int64Int64

Subtraction (A - B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Less_Int64Int64

Returns true if A is less than B (A < B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** bool  

### Greater_Int64Int64

Returns true if A is greater than B (A > B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** bool  

### LessEqual_Int64Int64

Returns true if A is less than or equal to B (A <= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** bool  

### GreaterEqual_Int64Int64

Returns true if A is greater than or equal to B (A >= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** bool  

### EqualEqual_Int64Int64

Returns true if A is equal to B (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** bool  

### NotEqual_Int64Int64

Returns true if A is not equal to B (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** bool  

### InRange_Int64Int64

Returns true if value is between Min and Max (V >= Min && V <= Max)
	  If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger
	  If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int64  |  |
| Min | int64  |  |
| Max | int64  |  |
| InclusiveMin | bool  |  |
| InclusiveMax | bool |  |

**Return:** bool  

### And_Int64Int64

Bitwise AND (A & B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Xor_Int64Int64

Bitwise XOR (A ^ B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Or_Int64Int64

Bitwise OR (A | B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Not_Int64

Bitwise NOT (~A)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64 |  |

**Return:** int64  

### SignOfInteger64

Sign (integer64, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64 |  |

**Return:** int64  

### RandomInteger64

Returns a uniformly distributed random number between 0 and Max - 1

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64 |  |

**Return:** int64  

### RandomInteger64InRange

Return a random integer64 between Min and Max (>= Min and <= Max)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Min | int64  |  |
| Max | int64 |  |

**Return:** int64  

### MinInt64

Returns the minimum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### MaxInt64

Returns the maximum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### ClampInt64

Returns Value clamped to be between A and B (inclusive)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | int64  |  |
| A | int64  |  |
| B | int64 |  |

**Return:** int64  

### Abs_Int64

Returns the absolute (positive) value of A

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int64 |  |

**Return:** int64  

### Multiply_UInt64UInt64

Multiplication (A  B) 
	UFUNCTION(BlueprintPure, meta = (DisplayName = "uinteger64  uinteger64", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true"), Category = "Math|Integer64")

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### Divide_UInt64UInt64

Division (A  B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### Add_UInt64UInt64

Addition (A + B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### Subtract_UInt64UInt64

Subtraction (A - B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### Less_UInt64UInt64

Returns true if A is less than B (A < B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** bool  

### Greater_UInt64UInt64

Returns true if A is greater than B (A > B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** bool  

### LessEqual_UInt64UInt64

Returns true if A is less than or equal to B (A <= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** bool  

### GreaterEqual_UInt64UInt64

Returns true if A is greater than or equal to B (A >= B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** bool  

### EqualEqual_UInt64UInt64

Returns true if A is equal to B (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** bool  

### NotEqual_UInt64UInt64

Returns true if A is not equal to B (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** bool  

### InRange_UInt64UInt64

Returns true if value is between Min and Max (V >= Min && V <= Max)
	  If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger
	  If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | uint64  |  |
| Min | uint64  |  |
| Max | uint64  |  |
| InclusiveMin | bool  |  |
| InclusiveMax | bool |  |

**Return:** bool  

### And_UInt64UInt64

Bitwise AND (A & B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### Xor_UInt64UInt64

Bitwise XOR (A ^ B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### Or_UInt64UInt64

Bitwise OR (A | B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### Not_UInt64

Bitwise NOT (~A)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64 |  |

**Return:** uint64  

### RandomUInteger64

Returns a uniformly distributed random number between 0 and Max - 1

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64 |  |

**Return:** uint64  

### RandomUInteger64InRange

Return a random integer64 between Min and Max (>= Min and <= Max)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Min | uint64  |  |
| Max | uint64 |  |

**Return:** uint64  

### MinUInt64

Returns the minimum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### MaxUInt64

Returns the maximum value of A and B

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### ClampUInt64

Returns Value clamped to be between A and B (inclusive)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| V | uint64  |  |
| A | uint64  |  |
| B | uint64 |  |

**Return:** uint64  

### MultiplyMultiply_FloatFloat

Power (Base to the Exp-th power)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Base | float  |  |
| Exp | float |  |

**Return:** float  

### Multiply_FloatFloat

Multiplication (A  B) 
	UFUNCTION(BlueprintPure, meta=(DisplayName = "float  float", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true"), Category="Math|Float")

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | float  |  |
| B | float |  |

**Return:** float  

### Multiply_IntFloat

Multiplication (A  B) 
	UFUNCTION(BlueprintPure, meta=(DisplayName = "int  float", CompactNodeTitle = "", Keywords = " multiply"), Category="Math|Float")

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | int32  |  |
| B | float |  |

**Return:** float  

### Divide_FloatFloat

Division (A  B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | float  |  |
| B | float |  |

**Return:** float  

### Percent_FloatFloat

Modulo (A % B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | float  |  |
| B | float |  |

**Return:** float  

### Fraction

Returns the fractional part of a float.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | float |  |

**Return:** float  

### Add_FloatFloat

Addition (A + B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | float  |  |
| B | float |  |

**Return:** float