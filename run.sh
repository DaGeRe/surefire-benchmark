cat pom.xml | grep "maven-surefire" -A 1 | grep version
max=3
for (( factor=1; factor<=10; factor++ ))
do
	lines=$(echo "100*2^$factor" | bc)
	echo "Benchmarking with $lines Lines"
	export LINE_COUNT=$lines
	for (( i=1; i<=$max; i++ ))
	do
		rm -rf ~/.KoPeMe/de.dagere/surefire-benchmark/
		mvn clean test -Dtest=JustOutputTest &> junit4_maven_$i
		xmlstarlet sel -B -t -v "//result/value" -n ~/.KoPeMe/de.dagere/surefire-benchmark/JustOutputTest/testMe.xml >> result_mvn_4_$lines
		
		rm -rf ~/.KoPeMe/de.dagere/surefire-benchmark/
		mvn clean test -Dtest=JustOutputTest3 &> junit3_maven_$i
		xmlstarlet sel -B -t -v "//result/value" -n ~/.KoPeMe/de.dagere/surefire-benchmark/JustOutputTest3/testMe.xml >> result_mvn_3_$lines
		
		rm -rf ~/.KoPeMe/de.dagere/surefire-benchmark/
		./gradlew --no-daemon clean test --tests JustOutputTest -i &> junit4_gradle_$i
		xmlstarlet sel -B -t -v "//result/value" -n ~/.KoPeMe/de.dagere/surefire-benchmark/JustOutputTest/testMe.xml >> result_gradle_4_$lines
		
		rm -rf ~/.KoPeMe/de.dagere/surefire-benchmark/
		./gradlew --no-daemon clean test --tests JustOutputTest3 -i &> junit3_gradle_$i
		xmlstarlet sel -B -t -v "//result/value" -n ~/.KoPeMe/de.dagere/surefire-benchmark/JustOutputTest3/testMe.xml >> result_gradle_3_$lines
	done
done
echo "Finished Benchmarking"
