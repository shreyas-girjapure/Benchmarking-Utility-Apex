@isTest
public with sharing class BenchMarkingUtilityTest {

@IsTest
static void calulateResultsTest(){
    
    Test.startTest();
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
    BenchmarkResponseWrapper result = BenchMarkingUtility.calculateResults(200);
    System.assert(result != null,'Not empty Result');
    Test.stopTest();
}

}
