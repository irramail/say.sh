#!/bin/bash
wget https://juan-gandhi.dreamwidth.org/read -O read_origindex.html -o /dev/null
grep entry-content read_origindex.html | sed -e 's/<[^>]*>/ /g' | sed "s/&....;/ /g"| sed "s/&.....;/ /g" | sed "s/&......;/ /g" > read
LC_ALL=ru_RU.UTF-8; while read -r line; do ./say.sh "${line:0:1000}"; done < read

#PATH where bwrowser saved files 
printf "file '%s'\n" ./Загрузки/*.mpga > list_mpga.txt

ffmpeg -y -f concat -safe 0 -i list_mpga.txt -c copy output.mp3

#PATH where bwrowser saved files 
mv -f ./Загрузки/*.mpga ./mpga/
