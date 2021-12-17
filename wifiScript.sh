#! /bin/bash
source ./logout.sh
source ./connect.sh
while true;
do
	source ./connectionLeft.sh | while read H M S 
	do
		sleep $H'h' $M'm' $S's' 
	done
	./logout.sh
	./connect.sh
done
