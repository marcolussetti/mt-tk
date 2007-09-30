#!/usr/bin/env wish

package require Tk

#ABBA Loader by Snowolf <snowolf@snowolf.eu> - Designed for Mauwolf
#Copyright (c) 2007 Marco Lussetti.
#This program is free software; you can redistribute it and/or modify
#it under the terms of the "Artistic License" which comes with this Kit.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See either
#the Artistic License for more details.

#You should have received a copy of the Artistic License with this
#Kit, in the file named "Artistic".  If not, I'll be glad to provide one.

#Paths
set pathtoiso "~/ABBA.iso"
set mountpath "~/Desktop/ABBA/"
set mountcmd "mount -o loop"
set umountcmd "umount"
set playcmd "ogle"
set sudo "gtksudo"

# Procedures
proc mount {} {
    global sudo pathtoiso mountpath mountcmd
    exec "$sudo \"$mountcmd $pathtoiso $mountpath\""
}

proc umount {} {
    global sudo mountpath umountcmd
    exec "$sudo \"$umountcmd $mountpath\""
}

proc play {} {
    global mountpath playcmd
    exec "$playcmd $mountpath"
}

# tell the window manager how big to make the window (. is main window
# for our application)
wm geometry . 244x30

# no way to make buttons have the "default" look and behavior
# so leave it out
button .mount -text "Mount" -command mount
place .mount -width 80 -height 30

# no way to make buttons have the "default" look and behavior
# so leave it out
button .umount -text "Umount" -command umount
place .umount -x 82 -width 80 -height 30

# no way to make buttons have the "default" look and behavior
# so leave it out
button .play -text "Play" -command play
place .play -x 164 -width 80 -height 30