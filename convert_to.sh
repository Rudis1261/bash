#!/bin/sh
#Second step... use lame to convert into .mp3

for i in *.$1
do

ffmpeg -i "$i" -f avi -c:v mpeg4 -b:v 1800k -c:a libmp3lame -b:a 128k "$i.avi"
#lame -h -b 192 "$i" "$i.mp3"
done
