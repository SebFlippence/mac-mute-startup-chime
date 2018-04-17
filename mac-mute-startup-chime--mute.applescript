#!/usr/bin/osascript

if output muted of (get volume settings) then
    do shell script "touch /usr/local/etc/mac-mute-startup-chime.already-muted"
else
    set volume with output muted
end if