#!/bin/bash

IMAGES_PATH=~/Pictures/wallpapers/
DELAY=1

while true; do
	nitrogen --set-zoom-fill --random "$IMAGES_PATH" || ( echo "Cannot set wallpapers" && break )
	sleep "$DELAY"m
done
