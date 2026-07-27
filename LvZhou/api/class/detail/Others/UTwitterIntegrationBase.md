---
title: UTwitterIntegrationBase
language: cpp
---

# UTwitterIntegrationBase

> Inheritance: UPlatformInterfaceBase

## Functions

### Init

Perform any needed initialization

**Return:** void 

### CanShowTweetUI

**Return:** bool true if the user is allowed to use the Tweet UI

### ShowTweetUI

Kicks off a tweet, using the platform to show the UI. If this returns false, or you are on a platform that doesn't support the UI,
	  you can use the TwitterRequest method to perform a manual tweet using the Twitter API
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InitialMessage | FString &  | [optional] Initial message to show |
| URL | FString &  | [optional] URL to attach to the tweet |
| Picture | FString & | [optional] Name of a picture (stored locally, platform subclass will do the searching for it) to add to the tweet |

**Return:** bool  true if a UI was displayed for the user to interact with, and a TID_TweetUIComplete will be sent

### AuthorizeAccounts

Starts the process of authorizing the local user(s). When TID_AuthorizeComplete is called, then GetNumAccounts() 
	  will return a valid number of accounts
	 

**Return:** bool true if the authorization process started, and TID_AuthorizeComplete delegates will be called

### GetNumAccounts

**Return:** int32 The number of accounts that were authorized

### GetAccountName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AccountIndex | int32 |  |

**Return:** FString  the display name of the given Twitter account

### TwitterRequest

Kicks off a generic twitter request
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| URL | FString &  | The URL for the twitter request |
| ParamKeysAndValues | TArray < FString > &  |  |
| RequestMethod | ETwitterRequestMethod  |  |
| AccountIndex | int32 | A user index if an account is needed, or -1 if an account isn't needed for the request |

**Return:** bool  true the request was sent off, and a TID_RequestComplete