public class BenchMarkingUtility {
    @testVisible
    private static Integer referenceStartTime ;
    @testVisible
    private static Integer referenceEndTime ;
    @testVisible
    private static Integer targetStartTime ;
    @testVisible    
    private static Integer targetEndTime ;
    
    public static void markReferenceStart(){
        referenceStartTime = Limits.getCpuTime();
    }

    public static void markReferenceEnd(){
        referenceEndTime = Limits.getCpuTime();
    }

    public static void markTargetStart(){
        targetStartTime = Limits.getCpuTime();
    }

    public static void markTargetEnd(){
        targetEndTime = Limits.getCpuTime();
    }

    public static BenchmarkResponseWrapper calculateResults(Integer loops){
        BenchmarkResponseWrapper result = new BenchmarkResponseWrapper();
        Integer refDuration = referenceEndTime - referenceStartTime;
        Integer targetDuration = targetEndTime - targetStartTime;
        
        Integer slowerThanTarget = targetDuration - refDuration;
        
        Decimal eachItem = slowerThanTarget * 1000;
        eachItem /= loops;
        eachItem.setScale(2);
        
        result.referenceTime = refDuration;
        result.targetTime = targetDuration;
        result.slowerThanReference = slowerThanTarget;
        result.millisecondsPerOperation = eachItem;
        return result;
    }
    public static void reportResults(Integer loops){
        BenchmarkResponseWrapper result = calculateResults(loops);
        System.debug(LoggingLevel.ERROR, result);
    }
    
}