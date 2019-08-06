/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CloseDateDeviationCalculationBatch implements Database.Batchable<SObject>, Database.Stateful {
    global Double finalMean;
    global List<String> listOfStages;
    global String modelStatus;
    global Map<String,Integer> stageToCountMap;
    global Map<String,Double> stageToMeanMap;
    global Map<String,Double> stageToStdDeviationSumMap;
    global CloseDateDeviationCalculationBatch(Double fMean, Map<String,Double> meanMap, Map<String,Integer> countMap, List<String> stageList, String mStat) {

    }
    global void execute(Database.BatchableContext batchCon, List<Opportunity> listOfOpps) {

    }
    global void finish(Database.BatchableContext batchCon) {

    }
    global Database.QueryLocator start(Database.BatchableContext batchCon) {
        return null;
    }
}
