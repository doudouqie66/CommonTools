---
title: UGameplayTagsList
language: cpp
---

# UGameplayTagsList

Base class for storing a list of gameplay tags as an ini list. This is used for both the central list and additional lists

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| ConfigFileName | FString | Relative path to the ini file that is backing this list |
| GameplayTagList | TArray < FGameplayTagTableRow > | List of tags saved to this file |