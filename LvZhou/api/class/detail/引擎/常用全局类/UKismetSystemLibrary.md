---
title: UKismetSystemLibrary
language: cpp
---

# UKismetSystemLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### StackTrace

Prints a stack trace to the log, so you can see how a blueprint got to this node

**Return:** void 

### IsValid

对象是否可用

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** bool  true可用，false不可用

### IsRecycled

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** bool  

### IsValidClass

类型是否可用

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Class | UClass * |  |

**Return:** bool  true可用，false不可用

### GetObjectName

获取对象名称

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** FString  对象实际名称

### GetPathName

获取对象路径

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** FString  对象完整路径

### GetDisplayName

获取对象展示名称

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** FString  对象展示名称

### GetClassDisplayName

获取类展示名称

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Class | UClass * |  |

**Return:** FString  类展示名称

### StripObjectClass

If there is an object class, strips it off.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PathName | FString &  |  |
| bAssertOnBadPath | bool |  |

**Return:** FString  

### GetEngineVersion

**Return:** FString 

### GetGameName

Get the name of the current game

**Return:** FString 

### GetGameBundleId

Retrieves the game's platform-specific bundle identifier or package name of the game
	 

**Return:** FString The game's bundle identifier or package name.

### GetPlatformUserName

Get the current user name from the OS

**Return:** FString 

### DoesImplementInterface

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TestObject | UObject *  |  |
| Interface | TSubclassOf < UInterface > |  |

**Return:** bool  

### GetGameTimeInSeconds

Get the current game time, in seconds. This stops when the game is paused and is affected by slomo.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | World context |

**Return:** float  

### IsServer

Returns whether the world this object is in is the host or not

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** bool  

### IsDedicatedServer

Returns whether this is running on a dedicated server

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** bool  

### IsStandalone

Returns whether this game instance is stand alone (no networking).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** bool  

### IsPackagedForDistribution

Returns whether this is a build that is packaged for distribution

**Return:** bool 

### GetUniqueDeviceId

Returns the platform specific unique device id

**Return:** FString 

### GetDeviceId

Returns the platform specific unique device id

**Return:** FString 

### Conv_InterfaceToObject

Converts an interfance into an object

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Interface | FScriptInterface & |  |

**Return:** UObject *  

### MakeSoftObjectPath

将路径字符串转换为SoftObjectPath

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PathString | FString & |  |

**Return:** FSoftObjectPath  SoftObjectPath

### BreakSoftObjectPath

将SoftObjectPath转换为路径字符串

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSoftObjectPath | FSoftObjectPath  |  |
| PathString | FString & |  |

**Return:** void  PathString

### BreakSoftClassPath

将SoftClassPath转换为路径字符串

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSoftClassPath | FSoftClassPath  |  |
| PathString | FString & |  |

**Return:** void  PathString

### IsValidSoftObjectReference

SoftObjectPath是否有效

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SoftObjectReference | TSoftObjectPtr < UObject > & |  |

**Return:** bool  true为有效

### Conv_SoftObjectReferenceToString

Converts a Soft Object Reference to a string. The other direction is not provided because it cannot be validated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SoftObjectReference | TSoftObjectPtr < UObject > & |  |

**Return:** FString  

### EqualEqual_SoftObjectReference

Returns true if the values are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | TSoftObjectPtr < UObject > &  |  |
| B | TSoftObjectPtr < UObject > & |  |

**Return:** bool  

### NotEqual_SoftObjectReference

Returns true if the values are not equal (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | TSoftObjectPtr < UObject > &  |  |
| B | TSoftObjectPtr < UObject > & |  |

**Return:** bool  

### IsValidSoftClassReference

Returns true if the Soft Class Reference is not null

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SoftClassReference | TSoftClassPtr < UObject > & |  |

**Return:** bool  

### Conv_SoftClassReferenceToString

Converts a Soft Class Reference to a string. The other direction is not provided because it cannot be validated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SoftClassReference | TSoftClassPtr < UObject > & |  |

**Return:** FString  

### EqualEqual_SoftClassReference

Returns true if the values are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | TSoftClassPtr < UObject > &  |  |
| B | TSoftClassPtr < UObject > & |  |

**Return:** bool  

### Conv_SoftClassReferenceToClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SoftClass | TSoftClassPtr < UObject > & |  |

**Return:** TSubclassOf < UObject >  

### NotEqual_SoftClassReference

Returns true if the values are not equal (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | TSoftClassPtr < UObject > &  |  |
| B | TSoftClassPtr < UObject > & |  |

**Return:** bool  

### Conv_SoftObjectReferenceToObject

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SoftObject | TSoftObjectPtr < UObject > & |  |

**Return:** UObject *  

### Conv_ObjectToSoftObjectReference

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** TSoftObjectPtr < UObject >  

### Conv_ClassToSoftClassReference

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Class | TSubclassOf < UObject > & |  |

**Return:** TSoftClassPtr < UObject >  

### LoadAsset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Asset | TSoftObjectPtr < UObject >  |  |
| OnLoaded | FOnAssetLoaded  |  |
| LatentInfo | FLatentActionInfo |  |

**Return:** void  

### LoadAssetClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| AssetClass | TSoftClassPtr < UObject >  |  |
| OnLoaded | FOnAssetClassLoaded  |  |
| LatentInfo | FLatentActionInfo |  |

**Return:** void  

### MakeLiteralInt

Creates a literal integer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 | value to set the integer to |

**Return:** int32  The literal integer

### MakeLiteralInt64

Creates a literal integer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int64 | value to set the integer to |

**Return:** int64  The literal integer

### MakeLiteralFloat

Creates a literal float

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float | value to set the float to |

**Return:** float  The literal float

### MakeLiteralBool

Creates a literal bool

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | bool | value to set the bool to |

**Return:** bool  The literal bool

### MakeLiteralName

Creates a literal name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FName | value to set the name to |

**Return:** FName  The literal name

### MakeLiteralByte

Creates a literal byte

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | uint8 | value to set the byte to |

**Return:** uint8  The literal byte

### MakeLiteralString

Creates a literal string

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FString & | value to set the string to |

**Return:** FString  The literal string

### MakeLiteralText

Creates a literal FText

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FText | value to set the FText to |

**Return:** FText  The literal FText

### PrintString

Prints a string to the log, and optionally, to the screen
	  If Print To Log is true, it will be visible in the Output Log window.  Otherwise it will be logged only as 'Verbose', so it generally won't show up.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| InString | FString &  | The string to log out |
| bPrintToScreen | bool  | Whether or not to print the output to the screen |
| bPrintToLog | bool  | Whether or not to print the output to the log |
| TextColor | FLinearColor  | Whether or not to print the output to the console |
| Duration | float | The display duration (if Print to Screen is True). Using negative number will result in loading the duration time from the config. |

**Return:** void  

### PrintText

Prints text to the log, and optionally, to the screen
	  If Print To Log is true, it will be visible in the Output Log window.  Otherwise it will be logged only as 'Verbose', so it generally won't show up.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| InText | FText  |  The text to log out |
| bPrintToScreen | bool  | Whether or not to print the output to the screen |
| bPrintToLog | bool  | Whether or not to print the output to the log |
| TextColor | FLinearColor  | Whether or not to print the output to the console |
| Duration | float | The display duration (if Print to Screen is True). Using negative number will result in loading the duration time from the config. |

**Return:** void  

### PrintWarning

Prints a warning string to the log and the screen. Meant to be used as a way to inform the user that they misused the node.
	 
	  WARNING!! Don't change the signature of this function without fixing up all nodes using it in the compiler
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InString | FString & | The string to log out |

**Return:** void  

### SetWindowTitle

Sets the game window title

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Title | FText & |  |

**Return:** void  

### ExecuteConsoleCommand

Executes a console command, optionally on a specific controller
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Command | FString &  |  Command to send to the console |
| SpecificPlayer | APlayerController *  | If specified, the console command will be routed through the specified player |
| bDisableCheck | bool |  |

**Return:** void  

### ExecuteConsoleCommandDisableCheck

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Command | FString &  |  |
| SpecificPlayer | APlayerController * |  |

**Return:** void  

### GetConsoleVariableFloatValue

Attempts to retrieve the value of the specified float console variable, if it exists.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| VariableName | FString & | Name of the console variable to find. |

**Return:** float  The value if found, 0 otherwise.

### GetConsoleVariableIntValue

Attempts to retrieve the value of the specified integer console variable, if it exists.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| VariableName | FString & | Name of the console variable to find. |

**Return:** int32  The value if found, 0 otherwise.

### GetConsoleVariableBoolValue

Evaluates, if it exists, whether the specified integer console variable has a non-zero value (true) or not (false).
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| VariableName | FString & | Name of the console variable to find. |

**Return:** bool  True if found and has a non-zero value, false otherwise.

### QuitGame

Exit the current game

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| SpecificPlayer | APlayerController *  | The specific player to quit the game. If not specified, player 0 will quit. |
| QuitPreference | TEnumAsByte < EQuitPreference :: Type > |  |

**Return:** void  

### Delay

Perform a latent action with a delay (specified in seconds).  Calling again while it is counting down will be ignored.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Duration | float  |  length of delay (in seconds). |
| LatentInfo | FLatentActionInfo | The latent action. |

**Return:** void  

### DelayUntilNextTick

Perform a latent action with a delay of one tick.  Calling again while it is counting down will be ignored.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| LatentInfo | FLatentActionInfo | The latent action. |

**Return:** void  

### DelayReplacePreDuration

Perform a latent action with a delay (specified in seconds).  Calling again while it is counting down will be ignored.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Duration | float  |  length of delay (in seconds). |
| IsReplacePreDuration | bool  | replace previous action Duration |
| LatentInfo | FLatentActionInfo | The latent action. |

**Return:** void  

### RetriggerableDelay

Perform a latent action with a retriggerable delay (specified in seconds).  Calling again while it is counting down will reset the countdown to Duration.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Duration | float  |  length of delay (in seconds). |
| LatentInfo | FLatentActionInfo | The latent action. |

**Return:** void  

### MoveComponentTo

Interpolate a component to the specified relative location and rotation over the course of OverTime seconds.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Component | USceneComponent *  |   Component to interpolate |
| TargetRelativeLocation | FVector  | Relative target location |
| TargetRelativeRotation | FRotator  | Relative target rotation |
| bEaseOut | bool  |   if true we will ease out (ie end slowly) during interpolation |
| bEaseIn | bool  |   if true we will ease in (ie start slowly) during interpolation |
| OverTime | float  |   duration of interpolation |
| bForceShortestRotationPath | bool  | if true we will always use the shortest path for rotation |
| MoveAction | TEnumAsByte < EMoveComponentAction :: Type >  |   required movement behavior @see EMoveComponentAction |
| LatentInfo | FLatentActionInfo |   The latent action |

**Return:** void  

### K2_SetTimerDelegate

Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate  |  |
| Time | float  |  How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set. |
| bLooping | bool | True to keep executing the delegate every Time seconds, false to execute delegate only once. |

**Return:** FTimerHandle  			The timer handle to pass to other timer functions to manipulate this timer.

### K2_SetTimerForNextTickDelegate

Set a timer to execute a delegate next tick.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** void  						The timer handle to pass to other timer functions to manipulate this timer.

### K2_SetTimerTickDelegate

Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicParamDelegate  |  |
| Time | float  |  How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set. |
| InExeFirst | bool |  |

**Return:** FTimerHandle  			The timer handle to pass to other timer functions to manipulate this timer.

### K2_SetTimerDelegateForLua

Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate  |  |
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| Time | float  |  How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set. |
| bLooping | bool | True to keep executing the delegate every Time seconds, false to execute delegate only once. |

**Return:** FTimerHandle  			The timer handle to pass to other timer functions to manipulate this timer.

### K2_ClearTimerDelegate

Clears a set timer.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** void  

### K2_PauseTimerDelegate

Pauses a set timer at its current elapsed time.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** void  

### K2_UnPauseTimerDelegate

Resumes a paused timer from its current elapsed time.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** void  

### K2_IsTimerActiveDelegate

Returns true if a timer exists and is active for the given delegate, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** bool  			True if the timer exists and is active.

### K2_IsTimerPausedDelegate

Returns true if a timer exists and is paused for the given delegate, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** bool  			True if the timer exists and is paused.

### K2_TimerExistsDelegate

Returns true is a timer for the given delegate exists, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** bool  			True if the timer exists.

### K2_GetTimerElapsedTimeDelegate

Returns elapsed time for the given delegate (time since current countdown iteration began).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** float  			How long has elapsed since the current iteration of the timer began.

### K2_GetTimerRemainingTimeDelegate

Returns time until the timer will next execute its delegate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delegate | FTimerDynamicDelegate |  |

**Return:** float  			How long is remaining in the current iteration of the timer.

### K2_IsValidTimerHandle

Returns whether the timer handle is valid. This does not indicate that there is an active timer that this handle references, but rather that it once referenced a valid timer.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Handle | FTimerHandle | The handle of the timer to check validity of. |

**Return:** bool  			Whether the timer handle is valid.

### K2_InvalidateTimerHandle

Returns whether the timer handle is valid. This does not indicate that there is an active timer that this handle references, but rather that it once referenced a valid timer.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Handle | FTimerHandle & | The handle of the timer to check validity of. |

**Return:** FTimerHandle  			Return the invalidated timer handle for convenience.

### K2_ClearTimerHandle

Clears a set timer.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle of the timer to clear. |

**Return:** void  

### K2_ClearAndInvalidateTimerHandle

Clears a set timer.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle & | The handle of the timer to clear. |

**Return:** void  

### K2_PauseTimerHandle

Pauses a set timer at its current elapsed time.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle of the timer to pause. |

**Return:** void  

### K2_UnPauseTimerHandle

Resumes a paused timer from its current elapsed time.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle of the timer to unpause. |

**Return:** void  

### K2_IsTimerActiveHandle

Returns true if a timer exists and is active for the given handle, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle of the timer to check whether it is active. |

**Return:** bool  			True if the timer exists and is active.

### K2_IsTimerPausedHandle

Returns true if a timer exists and is paused for the given handle, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle of the timer to check whether it is paused. |

**Return:** bool  			True if the timer exists and is paused.

### K2_TimerExistsHandle

Returns true is a timer for the given handle exists, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle to check whether it exists. |

**Return:** bool  			True if the timer exists.

### K2_GetTimerElapsedTimeHandle

Returns elapsed time for the given handle (time since current countdown iteration began).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle of the timer to get the elapsed time of. |

**Return:** float  			How long has elapsed since the current iteration of the timer began.

### K2_GetTimerRemainingTimeHandle

Returns time until the timer will next execute its handle.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Handle | FTimerHandle | The handle of the timer to time remaining of. |

**Return:** float  			How long is remaining in the current iteration of the timer.

### K2_SetTimer

Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString  | Delegate function name. Can be a K2 function or a Custom Event. |
| Time | float  |  How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set. |
| bLooping | bool | true to keep executing the delegate every Time seconds, false to execute delegate only once. |

**Return:** FTimerHandle  			The timer handle to pass to other timer functions to manipulate this timer.

### K2_SetTimerForNextTick

Set a timer to execute a delegate on the next tick.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  |   Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString |  Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** void  						The timer handle to pass to other timer functions to manipulate this timer.

### K2_ClearTimer

Clears a set timer.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** void  

### K2_PauseTimer

Pauses a set timer at its current elapsed time.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** void  

### K2_UnPauseTimer

Resumes a paused timer from its current elapsed time.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** void  

### K2_IsTimerActive

Returns true if a timer exists and is active for the given delegate, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** bool  			True if the timer exists and is active.

### K2_IsTimerPaused

Returns true if a timer exists and is paused for the given delegate, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** bool  			True if the timer exists and is paused.

### K2_TimerExists

Returns true is a timer for the given delegate exists, false otherwise.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** bool  			True if the timer exists.

### K2_GetTimerElapsedTime

Returns elapsed time for the given delegate (time since current countdown iteration began).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** float  			How long has elapsed since the current iteration of the timer began.

### K2_GetTimerRemainingTime

Returns time until the timer will next execute its delegate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  | Object that implements the delegate function. Defaults to self (this blueprint) |
| FunctionName | FString | Delegate function name. Can be a K2 function or a Custom Event. |

**Return:** float  			How long is remaining in the current iteration of the timer.

### SetIntPropertyByName

Set an int32 property by name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  |  |
| PropertyName | FName  |  |
| Value | int32 |  |

**Return:** void  

### SetInt64PropertyByName

Set an int64 property by name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  |  |
| PropertyName | FName  |  |
| Value | int64 |  |

**Return:** void  

### SetUInt64PropertyByName

Set an uint64 property by name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  |  |
| PropertyName | FName  |  |
| Value | uint64 |  |

**Return:** void  

### SetBytePropertyByName

Set an uint8 or enum property by name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  |  |
| PropertyName | FName  |  |
| Value | uint8 |  |

**Return:** void  

### SetFloatPropertyByName

Set a float property by name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  |  |
| PropertyName | FName  |  |
| Value | float |  |

**Return:** void