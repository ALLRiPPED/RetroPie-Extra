#!/bin/bash

# bgm123 init script for RetroPie

source #config

vcgencmd force_audio hdmi 1 >/dev/null && sleep 1
mpg123 -Z -@- >/dev/null 2>&1 < <(find "$music_dir" -type f -iname "*.mp3")
