public class Lead_Account_Table_Apex {
    @AuraEnabled
    public static List<Lead> getLeads()
    {
        List<Lead> li=[SELECT id,name,Company from Lead limit 5];
        return li;
    }
    
     @AuraEnabled
    public static List<Account> getAccounts()
    {
        List<Account> ai=[SELECT id,name from Account limit 5];
        return ai;
    }
    
    	@AuraEnabled
    public static List<Contact>  getContact()
    {
        List<Contact> con=[SELECT id,name from Contact limit 5];
        return con;
    }
    
    public class SagWrapper{
        @auraEnabled public List<Account>acc; 
        @auraEnabled public List<Lead>ld;
      	@auraEnabled public List<Contact>con;
        
    }
    
    @auraEnabled
    public static SagWrapper getData(){
        SagWrapper obj = new SagWrapper();
        obj.acc = getAccounts();
        obj.ld = getLeads();
        obj.con=getContact();
        return obj;
    }
    
    

}