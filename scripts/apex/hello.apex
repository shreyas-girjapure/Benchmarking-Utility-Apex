Integer value = 0 ;
BenchmarkingUtility.markReferenceStart();
for(Integer i = 0 ; i < 200 ; i++){
    
}
BenchMarkingUtility.markReferenceEnd();
BenchMarkingUtility.markTargetStart();
for(Integer i = 0 ; i < 200 ; i++){
    value+=5;
}
BenchMarkingUtility.markTargetEnd();
BenchMarkingUtility.reportResults(200);