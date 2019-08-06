/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DelphiCalloutBatchForPredictionSalesRep implements Database.AllowsCallouts, Database.Batchable<SObject>, Database.Stateful {
    global List<String> accountFields;
    global Integer fileNum;
    global List<Opportunity> listOfOpps;
    global List<String> oppFields;
    global Map<String,Schema.SObjectField> schemaFieldMapAccount;
    global Map<String,Schema.SObjectField> schemaFieldMapOpportunity;
    global Map<String,Schema.SObjectField> schemaFieldMapUser;
    global String urlLinkfield;
    global List<String> userFields;
    global DelphiCalloutBatchForPredictionSalesRep(String urlLink) {

    }
    global void execute(Database.BatchableContext BC, List<Opportunity> listOfOpps) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
