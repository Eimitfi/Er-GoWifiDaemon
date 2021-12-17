#! /bin/bash

wget 10.250.33.254 -O out.html -q

TIME=$(cat out.html | grep connected | cut -d "/" -f4 | cut -d " " -f2 | cut -d "<" -f1)
rm out.html
[ -z $TIME ] && return 1
HOURS=$(echo $TIME | cut -d "h" -f1)
MINUTES=$(echo $TIME | cut -d "h" -f2 | cut -d "m" -f1)
SECONDS=$(echo $TIME | cut -d "h" -f2 | cut -d "m" -f2 | cut -d "s" -f1)
echo $HOURS $MINUTES $SECONDS
