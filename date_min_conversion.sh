#!/usr/bin/env bash
maxDate=`expr $(date +%s) `
echo "time:"$maxDate
date2=`date --d @$maxDate`
echo "date2:"$date2
maxDate="$(expr $maxDate / 60)"
maxDate="$(expr $maxDate \* 60)"
dateMinutes=`date --d @$maxDate`
echo "date2:"$dateMinutes
