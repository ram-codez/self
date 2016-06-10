#!/bin/bash


#startTime=`expr -1123200 + $(date +%s) `
startTime=`date --date "2016-04-13 00:00:00 2 hour" `
startTimeFormat=$(date -r $startTime)

endTime=`expr -1117800 + $(date +%s) `
endTimeFormat=$(date -r $endTime)

echo "$startTime"
echo "$startTimeFormat"
echo "$endTime"
echo "$endTimeFormat"

duration=`expr $(($endTime - $startTime)) `
##diffSec2="$(($currDate - $prevDate))"
echo "Time difference in sec : $duration"

echo "$(expr $duration / 60) minutes and $(expr $duration % 60) seconds"

echo "$(expr $(date +%s))"
echo "$(expr -3600 + $(date +%s))"
