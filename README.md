# Surefire-Benchmark  
This small benchmarks shows the performance difference between maven surefire and gradle when executing the same test. The difference occurs mainly when much output is written to stdout and using ISO-8859-1.

In order to execute the test, run "./run.sh". A recent Maven and Gradle installation is required.

Currently, I've got the following measurement (Maven vs. Gradle) results (which are repeatable):
- Ubuntu 17.10, Maven 3.5.2, i5@2,8GHz: 850 ms vs 250 ms
- Ubuntu 16.04, Maven 3.5.2, i5@1,6GHz: 600 ms vs 400 ms
- Ubuntu 16.04, Maven 3.5.2, i7@3,4GHz: 110 ms vs 120 ms
- CentOS 7.4, Maven 3.5.0, E5@2,6GHz: 200 ms vs 230 ms
