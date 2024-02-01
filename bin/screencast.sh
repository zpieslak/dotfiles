#!/bin/bash

ffmpeg -y -f x11grab -s 2560x1600 -i :0.0 ~/Downloads/screencast_$(date -u +"%Y%m%dT%H%M%SZ").mp4
