public class BenchmarkResponseWrapper {
    @AuraEnabled public Integer referenceTime {get; set;}    
    @AuraEnabled public Integer targetTime {get; set;}    
    @AuraEnabled public Integer slowerThanReference {get; set;}    
    @AuraEnabled public Decimal millisecondsPerOperation {get; set;}    
    @AuraEnabled public object otherData {get; set;} 
}