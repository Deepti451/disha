public class kkkk{
    @AuraEnabled
    public static List<ContentDocument> fetchAccounts()
    {
List<ContentDocument> acctList=[SELECT id from ContentDocument];    
        return acctList;
    }
}