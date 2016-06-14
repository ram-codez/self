#!/usr/bin/env bash


main() {
    cat fi_incr_error_time_slots
    
    #readarray a < fi_incr_error_time_slots
    # read the error time slots into array
    IFS=$'\n' read -d '' -r -a error_slots < fi_incr_error_time_slots

    #echo "${lines[@]}"

    for i in "${error_slots[@]}"
    do
       echo "--------- Details ----------"
       startTime=$(echo $i| cut -d',' -f 1)
       endTime=$(echo $i| cut -d',' -f 2)
       status_flag=$(echo $i| cut -d',' -f 3)

       echo $startTime
       echo $endTime
       echo $status_flag
      # Based on a condition replace the entire line in a file
       if [ $startTime = 1465415400 ]; then
          echo "found one $endTime"

         sed -e "s/$i/$startTime","$endTime",Y"/" fi_incr_error_time_slots > tmp
         mv tmp fi_incr_error_time_slots
       fi
    done

    cat fi_incr_error_time_slots

}

main
