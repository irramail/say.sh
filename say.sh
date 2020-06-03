#!/bin/bash
LC_ALL=ru_RU.UTF-8

text=`echo "$1" `

touch old_md5.txt
md5=`echo "$text" | md5sum`

fmd5=`grep "$md5" old_md5.txt | wc -l`

if [[ "$fmd5" -eq 0 ]]
then

  DISPLAY=:0.0 xdotool mousemove --sync  1350 800
  DISPLAY=:0.0 xdotool click --delay 250 1

  echo "$text" | wc -c
  echo "$text" | wc -m

  DISPLAY=:0.0 xdotool key --delay 250 ctrl+a ; DISPLAY=:0.0 xdotool  key --delay 250 BackSpace

  DISPLAY=:0.0 xsel -c
  echo "$text . Конец" | DISPLAY=:0.0 xsel -ib

  DISPLAY=:0.0 xdotool key --delay 250 ctrl+v

  sleep 1

  DISPLAY=:0.0 xdotool mousemove --sync 1457 896
  DISPLAY=:0.0 xdotool click --delay 250 1

  sleep  90

  DISPLAY=:0.0 xdotool mousemove --sync  1457 850
  sleep 5
  DISPLAY=:0.0 xdotool click --delay 250 3
  sleep 5
  DISPLAY=:0.0 xdotool key --delay 250 Up
  sleep 5
  DISPLAY=:0.0 xdotool key --delay 250 Up
  sleep 5
  DISPLAY=:0.0 xdotool key --delay 250 Up
  sleep 5
  DISPLAY=:0.0 xdotool key --delay 250 Return
  sleep 5
  DISPLAY=:0.0 xdotool key --delay 250 Return
  sleep 10

fi
