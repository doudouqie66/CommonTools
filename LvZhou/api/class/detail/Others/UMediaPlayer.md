---
title: UMediaPlayer
language: cpp
---

# UMediaPlayer

Implements a media player asset that can play movies and other media sources.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| CacheAhead | FTimespan | Duration of samples to cache ahead of the play head. 	  	  @see CacheBehind, Cac |
| CacheBehind | FTimespan | Duration of samples to cache behind the play head (when not running as game). 	  |
| CacheBehindGame | FTimespan | Duration of samples to cache behind the play head (when running as game). 	  	   |
| NativeAudioOut | bool | Output any audio via the operating system's sound mixer instead of a Sound Wave  |
| PlayOnOpen | bool | Automatically start playback after media opened successfully. 	  	  If disabled, |
| Shuffle | uint32 | Whether playback should shuffle media sources in the play list. 	  	  @see OpenP |
| Loop | uint32 | Whether the player should loop when media playback reaches the end. 	  	  Use th |
| Playlist | UMediaPlaylist * | The play list to use, if any. 	  	  Use the OpenPlaylist or OpenPlaylistIndex fu |
| PlaylistIndex | int32 | The current index of the source in the play list being played. 	  	  Use the Pre |
| HorizontalFieldOfView | float | The initial horizontal field of view (in Euler degrees; default = 90). 	  	  Thi |
| VerticalFieldOfView | float | The initial vertical field of view (in Euler degrees; default = 60). 	  	  This  |
| ViewRotation | FRotator | The initial view rotation. 	  	  This setting is used only for 360 videos. It de |
| PlayerGuid | FGuid | The player's globally unique identifier. |

## Functions

### CanPause

Check whether media playback can be paused right now.
	 
	  Playback can be paused if the media supports pausing and if it is currently playing.
	 

**Return:** bool true if pausing playback can be paused, false otherwise.

### CanPlaySource

Check whether the specified media source can be played by this player.
	 
	  If a desired player name is set for this player, it will only check
	  whether that particular player type can play the specified source.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MediaSource | UMediaSource * | The media source to check. |

**Return:** bool  true if the media source can be opened, false otherwise.

### CanPlayUrl

Check whether the specified URL can be played by this player.
	 
	  If a desired player name is set for this player, it will only check
	  whether that particular player type can play the specified URL.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Url | FString & | The URL to check. |

**Return:** bool  

### Close

Close the currently open media, if any.
	 

**Return:** void 

### GetAudioTrackChannels

Get the number of channels in the specified audio track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | Index of the audio track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** int32  Number of channels.

### GetAudioTrackSampleRate

Get the sample rate of the specified audio track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | Index of the audio track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** int32  Samples per second.

### GetAudioTrackType

Get the type of the specified audio track format.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | The index of the track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** FString  Audio format type string.

### GetDesiredPlayerName

Get the name of the current desired native player.
	 

**Return:** FName The name of the desired player, or NAME_None if not set.

### GetDuration

Get the media's duration.
	 

**Return:** FTimespan A time span representing the duration.

### GetHorizontalFieldOfView

Get the current horizontal field of view (only for 360 videos).
	 

**Return:** float Horizontal field of view (in Euler degrees).

### GetMediaName

Get the human readable name of the currently loaded media source.
	 

**Return:** FText Media source name, or empty text if no media is opened

### GetNumTracks

Get the number of tracks of the given type.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack | The type of media tracks. |

**Return:** int32  Number of tracks.

### GetNumTrackFormats

Get the number of formats of the specified track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack  | The type of media tracks. |
| TrackIndex | int32 | The index of the track. |

**Return:** int32  Number of formats.

### GetPlayerName

Get the name of the current native media player.
	 

**Return:** FName Player name, or NAME_None if not available.

### GetPlaylist

Get the current play list.
	 
	  Media players always have a valid play list. In C++ code you can use
	  the GetPlaylistRef to get a reference instead of a pointer to it.
	 

**Return:** UMediaPlaylist * The play list.

### GetPlaylistIndex

Get the current play list index.
	 

**Return:** int32 Play list index.

### GetRate

Get the media's current playback rate.
	 

**Return:** float The playback rate.

### GetSelectedTrack

Get the index of the currently selected track of the given type.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack | The type of track to get. |

**Return:** int32  The index of the selected track, or INDEX_NONE if no track is active.

### GetSupportedRates

Get the supported playback rates.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OutRates | TArray < FFloatRange > &  |  |
| Unthinned | bool | Whether the rates are for unthinned playback. |

**Return:** void  

### GetTime

Get the media's current playback time.
	 

**Return:** FTimespan Playback time.

### GetTrackDisplayName

Get the human readable name of the specified track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack  | The type of track. |
| TrackIndex | int32 | The index of the track, or INDEX_NONE for the selected one. |

**Return:** FText  Display name.

### GetTrackFormat

Get the index of the active format of the specified track type.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack  | The type of track. |
| TrackIndex | int32 | The index of the track, or INDEX_NONE for the selected one. |

**Return:** int32  The index of the selected format.

### GetTrackLanguage

Get the language tag of the specified track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack  | The type of track. |
| TrackIndex | int32 | The index of the track, or INDEX_NONE for the selected one. |

**Return:** FString  Language tag, i.e. "en-US" for English, or "und" for undefined.

### GetUrl

Get the URL of the currently loaded media, if any.
	 

**Return:** const FString & Media URL, or empty string if no media was loaded.

### GetVerticalFieldOfView

Get the current vertical field of view (only for 360 videos).
	 

**Return:** float Vertical field of view (in Euler degrees), or 0.0 if not available.

### GetVideoTrackAspectRatio

Get the aspect ratio of the specified video track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | Index of the video track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** float  Aspect ratio.

### GetVideoTrackDimensions

Get the current dimensions of the specified video track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | The index of the track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** FIntPoint  Video dimensions (in pixels).

### GetVideoTrackFrameRate

Get the frame rate of the specified video track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | The index of the track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** float  Frame rate (in frames per second).

### GetVideoTrackFrameRates

Get the supported range of frame rates of the specified video track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | The index of the track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** FFloatRange  Frame rate range (in frames per second).

### GetVideoTrackType

Get the type of the specified video track format.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | The index of the track, or INDEX_NONE for the selected one. |
| FormatIndex | int32 | Index of the track format, or INDEX_NONE for the selected one. |

**Return:** FString  Video format type string.

### GetViewRotation

Get the current view rotation (only for 360 videos).
	 

**Return:** FRotator View rotation, or zero rotator if not available.

### HasError

Check whether the player is in an error state.
	 
	  When the player is in an error state, no further operations are possible.
	  The current media must be closed, and a new media source must be opened
	  before the player can be used again. Errors are usually caused by faulty
	  media files or interrupted network connections.
	 

**Return:** bool 

### IsBuffering

Check whether playback is buffering data.
	 

**Return:** bool true if looping, false otherwise.

### IsConnecting

Check whether the player is currently connecting to a media source.
	 

**Return:** bool true if connecting, false otherwise.

### IsLooping

Check whether playback is looping.
	 

**Return:** bool true if looping, false otherwise.

### IsPaused

Check whether playback is currently paused.
	 

**Return:** bool true if playback is paused, false otherwise.

### IsPlaying

Check whether playback has started.
	 

**Return:** bool true if playback has started, false otherwise.

### IsPreparing

Check whether the media is currently opening or buffering.
	 

**Return:** bool true if playback is being prepared, false otherwise.

### IsReady

Check whether media is ready for playback.
	 
	  A player is ready for playback if it has a media source opened that
	  finished preparing and is not in an error state.
	 

**Return:** bool true if media is ready, false otherwise.

### Next

Open the next item in the current play list.
	 
	  The player will start playing the new media source if it was playing
	  something previously, otherwise it will only open the media source.
	 

**Return:** bool true on success, false otherwise.

### OpenFile

Opens the specified media file path.
	 
	  A return value of true indicates that the player will attempt to open
	  the media, but it may fail to do so later for other reasons, i.e. if
	  a connection to the media server timed out. Use the OnMediaOpened and
	  OnMediaOpenFailed delegates to detect if and when the media is ready!
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FilePath | FString & | The file path to open. |

**Return:** bool  true if the file path will be opened, false otherwise.

### OpenPlaylist

Open the first media source in the specified play list.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPlaylist | UMediaPlaylist * | The play list to open. |

**Return:** bool  true if the source will be opened, false otherwise.

### OpenPlaylistIndex

Open a particular media source in the specified play list.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPlaylist | UMediaPlaylist *  | The play list to open. |
| Index | int32 | The index of the source to open. |

**Return:** bool  true if the source will be opened, false otherwise.

### OpenSource

Open the specified media source.
	 
	  A return value of true indicates that the player will attempt to open
	  the media, but it may fail to do so later for other reasons, i.e. if
	  a connection to the media server timed out. Use the OnMediaOpened and
	  OnMediaOpenFailed delegates to detect if and when the media is ready!
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MediaSource | UMediaSource * | The media source to open. |

**Return:** bool  true if the source will be opened, false otherwise.

### OpenUrl

Opens the specified media URL.
	 
	  A return value of true indicates that the player will attempt to open
	  the media, but it may fail to do so later for other reasons, i.e. if
	  a connection to the media server timed out. Use the OnMediaOpened and
	  OnMediaOpenFailed delegates to detect if and when the media is ready!
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Url | FString & | The URL to open. |

**Return:** bool  true if the URL will be opened, false otherwise.

### Pause

Pauses media playback.
	 
	  This is the same as setting the playback rate to 0.0.
	 

**Return:** bool true if playback is being paused, false otherwise.

### Play

Starts media playback.
	 
	  This is the same as setting the playback rate to 1.0.
	 

**Return:** bool true if playback is starting, false otherwise.

### Previous

Open the previous item in the current play list.
	 
	  The player will start playing the new media source if it was playing
	  something previously, otherwise it will only open the media source.
	 

**Return:** bool true on success, false otherwise.

### Reopen

Reopens the currently opened media or play list.
	 

**Return:** bool true if the media will be opened, false otherwise.

### Rewind

Rewinds the media to the beginning.
	 
	  This is the same as seeking to zero time.
	 

**Return:** bool true if rewinding, false otherwise.

### Seek

Seeks to the specified playback time.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | FTimespan & | The playback time to set. |

**Return:** bool  true on success, false otherwise.

### SelectTrack

Select the active track of the given type.
	 
	  The selected track will use its currently active format. Active formats will
	  be remembered on a per track basis. The first available format is active by
	  default. To switch the track format, use SetTrackFormat instead.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack  | The type of track to select. |
| TrackIndex | int32 | The index of the track to select, or INDEX_NONE to deselect. |

**Return:** bool  true if the track was selected, false otherwise.

### SetDesiredPlayerName

Set the name of the desired native player.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerName | FName | The name of the player to set. |

**Return:** void  

### SetLooping

Enables or disables playback looping.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Looping | bool | Whether playback should be looped. |

**Return:** bool  true on success, false otherwise.

### SetRate

Changes the media's playback rate.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rate | float | The playback rate to set. |

**Return:** bool  true on success, false otherwise.

### SetNativeVolume

Set the volume on the native player if not mixing with Sound Wave asset.
	 
	  The SetNativeVolume can be used to change the audio output volume at runtime. Note that
	  not all media player plug-ins may support native audio output on all platforms.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Volume | float | The volume to set. |

**Return:** bool  true on success, false otherwise.

### SetTrackFormat

Set the format on the specified track.
	 
	  Selecting the format will not switch to the specified track. To switch
	  tracks, use SelectTrack instead. If the track is already selected, the
	  format change will be applied immediately.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackType | EMediaPlayerTrack  | The type of track to update. |
| TrackIndex | int32  | The index of the track to update. |
| FormatIndex | int32 | The index of the format to select (must be valid). |

**Return:** bool  true if the track was selected, false otherwise.

### SetVideoTrackFrameRate

Set the frame rate of the specified video track.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TrackIndex | int32  | The index of the track, or INDEX_NONE for the selected one. |
| FormatIndex | int32  | Index of the track format, or INDEX_NONE for the selected one. |
| FrameRate | float | The frame rate to set (must be in range of format's supported frame rates). |

**Return:** bool  true on success, false otherwise.

### SetViewField

Set the field of view (only for 360 videos).
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Horizontal | float  | Horizontal field of view (in Euler degrees). |
| Vertical | float  | Vertical field of view (in Euler degrees). |
| Absolute | bool |  |

**Return:** bool  true on success, false otherwise.

### SetViewRotation

Set the view's rotation (only for 360 videos).
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rotation | FRotator &  | The desired view rotation. |
| Absolute | bool |  |

**Return:** bool  true on success, false otherwise.

### SupportsRate

Check whether the specified playback rate is supported.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rate | float  | The playback rate to check. |
| Unthinned | bool | Whether no frames should be dropped at the given rate. |

**Return:** bool  

### SupportsScrubbing

Check whether the currently loaded media supports scrubbing.
	 

**Return:** bool true if scrubbing is supported, false otherwise.

### SupportsSeeking

Check whether the currently loaded media can jump to a certain position.
	 

**Return:** bool true if seeking is supported, false otherwise.

### SetAudioDeviceGUID

Sets the audio device for the media player; currently only effective on PC platforms.
	  add by watsonxie

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeviceGUID | FString & |  |

**Return:** void