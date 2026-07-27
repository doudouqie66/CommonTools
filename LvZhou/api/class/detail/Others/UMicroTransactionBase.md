---
title: UMicroTransactionBase
language: cpp
---

# UMicroTransactionBase

> Inheritance: UPlatformInterfaceBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| AvailableProducts | TArray < struct FPurchaseInfo > | The list of products available to purchase, filled out by the time a MTD_Purchas |
| LastError | FString | In case of errors, this will describe the most recent error |
| LastErrorSolution | FString | In case of errors, this will describe possible solutions (if there are any) |