---
title: FMemberReference
---

# FMemberReference

## Variables

| Name | Type | Description |
|------|------|-------------|
| MemberParent | UObject * | Most often the Class that this member is defined in. Could be a UPackage  	  if  |
| MemberScope | FString |  |
| MemberName | FName | Name of variable |
| MemberGuid | FGuid | The Guid of the variable |
| bSelfContext | bool | Whether or not this should be a "self" context |
| bWasDeprecated | bool | Whether or not this property has been deprecated |