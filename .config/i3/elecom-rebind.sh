#!/bin/sh
my_mouse_id=$(xinput | grep "ELECOM" | grep "pointer" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
echo $my_mouse_id > /tmp/my_mouse_id
xinput set-button-map $my_mouse_id 1 2 3 4 5 6 7 8 9 2 11 12

