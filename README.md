# Surefire-Benchmark  
This small benchmarks shows the performance difference between maven surefire and gradle when executing the same test. The difference occurs mainly when much output is written to stdout and using ISO-8859-1.

In order to execute the test, run "./run.sh". A recent Maven and Gradle installation is required.

For my testing environment, (Ubuntu 17.10, i5@2,8 GHz), the Maven-tests take ~850 ms and the Gradle tests take ~250 ms. 
