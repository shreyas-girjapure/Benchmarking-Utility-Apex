Integer value = 0 ;
BenchmarkingUtility.markReferenceStart();
for(Integer i = 0 ; i < 10000 ; i++){
    
}
BenchMarkingUtility.markReferenceEnd();
BenchMarkingUtility.markTargetStart();
for(Integer i = 0 ; i < 10000 ; i++){
    value+=5;
}
BenchMarkingUtility.markTargetEnd();
BenchMarkingUtility.reportResults(10000);