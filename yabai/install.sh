#!/usr/bin/env sh

sudo yabai --load-sa
yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"

yabai -m config mouse_follow_focus
echo "yabai configuration loaded.."

