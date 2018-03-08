# Surefire-Benchmark  
This small benchmarks shows the performance difference between maven surefire and gradle when executing the same test. The difference occurs mainly when much output is written to stdout and using ISO-8859-1.

In order to execute the test, run "./run.sh". A recent Maven and xmlstarlet installation is required, Gradle 4.2 will be downloaded by the gradlewrapper. The execution produces files named "result.." which save results for different benchmark sizes. Afterwards the measurements should be copied to a folder in results, e.g. scp mybenchmarker:surefire-benchmark/results\_* results/myfolder/ . Afterwards, create the graph with ./getgraph myfolder and view the results by starting gnuplot and executing the printed line.

The current results-folder shows 3 variants: Execution with surfire 2.19.1 (two times, with nearly equal results), with a patch of surefire (https://github.com/DaGeRe/maven-surefire, discussed in https://issues.apache.org/jira/browse/SUREFIRE-1454 and https://github.com/apache/maven-surefire/pull/167) and with surfire 3.0.0, which includes a patch for the same issue. It shows that with both patches, Surefire comparable fast to Gradle. 
