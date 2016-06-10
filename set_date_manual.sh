#!/usr/bin/env bash
startTime=`date --date "2016-04-13 00:00:00 3 hour" `

prevDate=`date --date "2016-04-13 00:00:00" +%s `
maxDateToProcess=`date --date "2016-04-16 17:22:00" +%s `
testStuff=`expr + $(date +%s) `
echo "set date: $maxDateToProcess"
echo "old date: $testStuff"
diffSec2="$(($maxDateToProcess - $prevDate))"
echo "$(expr $diffSec2 / 60) minutes and $(expr $diffSec2 % 60) seconds between runs for event ******************"
