---
title: FCustomChannelSetup
---

# FCustomChannelSetup

Structure for custom channel setup information.

## Variables

| Name | Type | Description |
|------|------|-------------|
| Channel | TEnumAsByte < enum ECollisionChannel > | Which channel you'd like to customize |
| Name | FName | Name of channel you'd like to show up |
| DefaultResponse | TEnumAsByte < enum ECollisionResponse > | Default Response for the channel |
| bTraceType | bool | Sets meta data TraceType="1" for the enum entry if true. Otherwise, this channel |
| bStaticObject | bool | Specifies if this is static object. Otherwise it will be dynamic object. This is |