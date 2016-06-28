

prevDate=`date --date "2016-05-02 00:20:00" +%s `
prevDate=$(cat $eventLastProcessedDateTime)
maxDateToProcess=`expr $(date +%s) `
