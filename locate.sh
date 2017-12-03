#!/bin/bash

loc=$(xdotool getmouselocation)
posx=$(cut -d ' ' -f 1 <<< "$loc")
posy=$(cut -d ' ' -f 2 <<< "$loc")
x=$(cut -d : -f 2 <<< "$posx")
y=$(cut -d : -f 2 <<< "$posy")

tkbash highlightcursor window --tooltip -x "$((x-20))" -y "$((y-20))" -w 41 -h 41
for c in red green blue yellow black white pink orange; do
	tkbash highlightcursor --tk ".w configure -background $c"
	sleep 0.03
done
tkbash highlightcursor window --close
