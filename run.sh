cat pom.xml | grep "maven-surefire" -A 1 | grep version
max=5
for (( i=1; i<=$max; i++))
do
	mvn clean test &> maven_$i
done
echo "Maven"
cat maven_* | grep " - Time: "
echo "Gradle"
for (( i=1; i<=$max; i++))
do
	./gradlew --no-daemon clean test -i &> gradle_$i
done
cat gradle_* | grep " - Time: "
