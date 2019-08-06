/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DelphiCalloutBatchForTrainingSalesRep implements Database.AllowsCallouts, Database.Batchable<SObject>, Database.Stateful {
    global List<String> accountFields;
    global Integer fileNum;
    global List<Opportunity> listOfOpps;
    global List<String> oppFields;
    global Map<String,Schema.SObjectField> schemaFieldMapAccount;
    global Map<String,Schema.SObjectField> schemaFieldMapOpportunity;
    global Map<String,Schema.SObjectField> schemaFieldMapUser;
    global String urlLinkfield;
    global List<String> userFields;
    global DelphiCalloutBatchForTrainingSalesRep(String urlLink) {

    }
    global void execute(Database.BatchableContext batchCon, List<Opportunity> listOfOpps) {

    }
    global void finish(Database.BatchableContext batchCon) {

    }
    global Database.QueryLocator start(Database.BatchableContext batchCon) {
        return null;
    }
}
