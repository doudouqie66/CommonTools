---
title: FExternalToolDefinition
---

# FExternalToolDefinition

Structure for defining an external tool

## Variables

| Name | Type | Description |
|------|------|-------------|
| ToolName | FString | The name of the tool  test. |
| ExecutablePath | FFilePath | The executable to run.  	UPROPERTY(config, EditAnywhere, Category=ExternalTools, |
| CommandLineOptions | FString | The command line options to pass to the executable. |
| WorkingDirectory | FDirectoryPath | The working directory for the new process. |
| ScriptExtension | FString | If set, look for scripts with this extension. |
| ScriptDirectory | FDirectoryPath | If the ScriptExtension is set, look here for the script files. |