---
title: UPlatformEventsComponent
language: cpp
---

# UPlatformEventsComponent

Component to handle receiving notifications from the OS about platform events.

> Inheritance: UActorComponent

## Functions

### IsInLaptopMode

Check whether a convertible laptop is laptop mode.
	 

**Return:** bool true if in laptop mode, false otherwise or if not a convertible laptop.

### IsInTabletMode

Check whether a convertible laptop is laptop mode.
	 

**Return:** bool true if in tablet mode, false otherwise or if not a convertible laptop.

### SupportsConvertibleLaptops

Check whether the platform supports convertible laptops.
	 
	  Note: This does not necessarily mean that the platform is a convertible laptop.
	  For example, convertible laptops running Windows 7 or older will return false,
	  and regular laptops running Windows 8 or newer will return true.
	 

**Return:** bool true for convertible laptop platforms, false otherwise.