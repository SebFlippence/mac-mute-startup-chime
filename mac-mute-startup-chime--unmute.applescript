#!/usr/bin/osascript

tell application "System Events"
	if not (exists file "/usr/local/etc/mac-mute-startup-chime.already-muted") then
		set volume without output muted
        do shell script "rm -f /usr/local/etc/mac-mute-startup-chime.already-muted"
	end if
end tell