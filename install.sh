#!/usr/bin/env bash

chmod +x *.applescript
cp -f *.applescript /usr/local/bin
rm -f /usr/local/etc/mac-mute-startup-chime.already-muted

sudo defaults write com.apple.loginwindow LogoutHook /usr/local/bin/mac-mute-startup-chime--mute.applescript
sudo defaults write com.apple.loginwindow LoginHook /usr/local/bin/mac-mute-startup-chime--unmute.applescript

echo "Done"