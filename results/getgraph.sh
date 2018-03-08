rm -f graph.csv
for (( i=1; i<=10; i++))
do
       	size=$(echo "100*2^$i" | bc); 
	mvn4=$(awk '{ sum += $1; n++ } END { if (n > 0) print sum / n; }' $1/result_mvn_4_$size)
	mvn3=$(awk '{ sum += $1; n++ } END { if (n > 0) print sum / n; }' $1/result_mvn_3_$size)
	gradle4=$(awk '{ sum += $1; n++ } END { if (n > 0) print sum / n; }' $1/result_gradle_4_$size)
	gradle3=$(awk '{ sum += $1; n++ } END { if (n > 0) print sum / n; }' $1/result_gradle_3_$size)
	echo "$size;$mvn4;$mvn3;$gradle4;$gradle3" >> graph.csv
done
echo "plot 'graph.csv' u 1:2 w lines title 'Maven', 'graph.csv' u 1:4 w lines title 'Gradle'"
