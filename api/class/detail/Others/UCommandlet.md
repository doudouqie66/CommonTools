---
title: UCommandlet
language: cpp
---

# UCommandlet

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| HelpDescription | FString | Description of the commandlet's purpose |
| HelpUsage | FString | Usage template to show for "ucc help" |
| HelpWebLink | FString | Hyperlink for more info |
| HelpParamNames | TArray < FString > | The name of the parameter the commandlet takes |
| HelpParamDescriptions | TArray < FString > | The description of the parameter |
| IsServer | uint32 | Whether to load objects required in server, client, and editor context.  If IsEd |
| IsClient | uint32 |  |
| IsEditor | uint32 |  |
| LogToConsole | uint32 | Whether to redirect standard log to the console |
| ShowErrorCount | uint32 | Whether to show standard error and warning count on exit |