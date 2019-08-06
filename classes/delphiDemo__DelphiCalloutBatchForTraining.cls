/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DelphiCalloutBatchForTraining implements Database.AllowsCallouts, Database.Batchable<SObject>, Database.Stateful {
    global Integer fileNum;
    global String queryToRun;
    global Map<String,Schema.SObjectField> schemaFieldMap;
    global List<String> selectedFields;
    global String urlLinkfield;
    global DelphiCalloutBatchForTraining(String query, List<String> selFields, String urlLink) {

    }
    global void execute(Database.BatchableContext batchCon, List<Opportunity> listOfOpps) {

    }
    global void finish(Database.BatchableContext batchCon) {

    }
    global Database.QueryLocator start(Database.BatchableContext batchCon) {
        return null;
    }
}
