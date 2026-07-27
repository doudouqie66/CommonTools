---
title: UDeviceProfile
language: cpp
---

# UDeviceProfile

> Inheritance: UTextureLODSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| DeviceType | FString | The type of this profile, I.e. IOS, Windows, PS4 etc |
| BaseProfileName | FString | The name of the parent profile of this object |
| Parent | UObject * | The parent object of this profile, it is the object matching this DeviceType wit |
| CVars | TArray < FString > | The collection of CVars which is set from this profile |