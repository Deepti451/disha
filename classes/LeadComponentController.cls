public class LeadComponentController {
    @AuraEnabled
    public static List<Lead> getLeads(){
        return [SELECT Name,Company,Email,Phone FROM Lead order by createddate desc];
        
    }
}