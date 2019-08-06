public class AccountController{
    @AuraEnabled
    public static List<Account> fetchAccounts()
    {
List<Account> acctList=[SELECT id,Name,BillingState,Website,Phone,Industry, Type from Account Limit 10];    
        return acctList;
    }
}