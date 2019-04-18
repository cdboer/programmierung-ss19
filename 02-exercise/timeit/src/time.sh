for ((NUM=0;NUM<=$MAXOPS;NUM=NUM+$STEPSIZE)); do
	echo "-- PREPEND for $NUM OPERATIONS" 1>&2
	PRE=$((time (echo $NUM | ./src/prepend)) 2>&1 | grep user | sed s/'user[[:space:]]'/''/)
	echo "$NUM $PRE"
done

echo "HALFTIME"

for ((NUM=0;NUM<=$MAXOPS;NUM=NUM+$STEPSIZE)); do
	echo "-- APPEND for $NUM OPERATIONS" 1>&2
	APP=$((time (echo $NUM | ./src/append)) 2>&1 | grep user | sed s/'user[[:space:]]'/''/)
	echo "$NUM $APP"
done
