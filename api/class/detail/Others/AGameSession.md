---
title: AGameSession
language: cpp
---

# AGameSession

> Inheritance: AInfo

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaxSpectators | int32 | Maximum number of spectators allowed by this server. |
| MaxPlayers | int32 | Maximum number of players allowed by this server. |
| MaxPartySize | int32 | Restrictions on the largest party that can join together |
| MaxSplitscreensPerConnection | uint8 | Maximum number of splitscreen players to allow from one connection |
| bRequiresPushToTalk | bool | Is voice enabled always or via a push to talk keybinding |
| SessionName | FName | SessionName local copy from PlayerState class.  should really be define in this  |