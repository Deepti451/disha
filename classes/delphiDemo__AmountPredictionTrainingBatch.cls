/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AmountPredictionTrainingBatch implements Database.Batchable<SObject>, Database.Stateful {
    global String modelStatus;
    global Map<String,Integer> stageToClosedOppCountMap;
    global Map<String,Double> stageToProbMap;
    global Map<String,Integer> stageToTotalOppCountMap;
    global AmountPredictionTrainingBatch(String mStatus) {

    }
    global void execute(Database.BatchableContext batchCon, List<Opportunity> listOfOpps) {

    }
    global void finish(Database.BatchableContext batchCon) {

    }
    global static Double generateRandomNumber(Double min, Double max) {
        return null;
    }
    global Database.QueryLocator start(Database.BatchableContext batchCon) {
        return null;
    }
}
