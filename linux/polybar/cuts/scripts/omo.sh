#! /usr/bin/bash

data=$(omo get --notify "pomodoro session finished")
time="🍅 00:01"
if [ "$data" == "$time"  ]; then
	paplay ring.wav
fi
echo $data
