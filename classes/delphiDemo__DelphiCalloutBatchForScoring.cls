/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DelphiCalloutBatchForScoring implements Database.AllowsCallouts, Database.Batchable<SObject>, Database.Stateful {
    global Integer fileNum;
    global Integer flag;
    global List<Opportunity> listOfOpps;
    global String queryToRun;
    global Map<String,Schema.SObjectField> schemaFieldMap;
    global List<String> selectedFields;
    global String urlLinkfield;
    global DelphiCalloutBatchForScoring(String query, List<String> selFields, String urlLink) {

    }
    global void execute(Database.BatchableContext BC, List<Opportunity> listOfOpps) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
