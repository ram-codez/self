someDate=`expr $(date +%s) `

c_year=`date  --d @$someDate +%Y`
c_month=`date  --d @$someDate +%m`
c_day=`date  --d @$someDate +%d`
c_hour=`date  --d @$someDate +%H`
c_min=`date  --d @$someDate +%M`

p_year=`date  --d @$someDate --date="1 day ago" +%Y`
p_month=`date  --d @$someDate --date="1 day ago" +%m`
p_day=`date  --d @$someDate --date="1 day ago" +%d`
p_hour=`date  --d @$someDate --date="1 day ago" +%H`
p_min=`date  --d @$someDate --date="1 day ago" +%M`

echo "current year: $c_year"
echo "current month: $c_month"
echo "current day: $c_day"
echo "current hour: $c_hour"
echo "current min: $c_min"

echo "prev year: $p_year"
echo "prev month: $p_month"
echo "prev day: $p_day"
echo "prev hour: $p_hour"
echo "prev min: $p_min"
