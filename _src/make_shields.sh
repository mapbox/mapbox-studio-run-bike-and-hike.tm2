#!/bin/bash

motorway='#E5E5E5'

for reflen in {1..6}; do
    sm_width=$(($reflen*5+8))
    sm_height=13
    lg_width=$(($reflen*5+10))
    lg_height=16
    convert -type TrueColorMatte -size ${sm_width}x$sm_height xc:none \
        -fill $motorway -stroke '#CCCCCC' \
        -draw "roundRectangle 0,0 $(($sm_width-1)),$(($sm_height-1)), 2,2" \
        img/motorway/motorway_sm_$reflen.png
    convert -type TrueColorMatte -size ${lg_width}x$lg_height xc:none \
        -fill $motorway -stroke '#CCCCCC' \
        -draw "roundRectangle 0,0 $(($lg_width-1)),$(($lg_height-1)), 3,3" \
        img/motorway/motorway_lg_$reflen.png
done
