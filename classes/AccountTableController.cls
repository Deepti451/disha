public class AccountTableController {
    
    //To return initial account records
    
    @AuraEnabled
    public static AccountWrapper getAccountRecords(Integer initialRows){
        AccountWrapper accountWrapper= new AccountWrapper();
        try{
            accountWrapper.accountsList = [SELECT Title,CreatedDate,Owner.Name FROM ContentDocument ORDER BY CreatedDate DESC LIMIT :initialRows OFFSET 0];
            accountWrapper.totalRecords = [SELECT COUNT() FROM ContentDocument];
            accountWrapper.message = 'Account records are loaded';
            accountWrapper.success = true;
          //  accountWrapper.successdownload = URL.getSalesforceBaseUrl().toExternalForm() ;
        }
        catch(Exception e){
            accountWrapper.message = e.getMessage();
            accountWrapper.success = false;
        }
        return accountWrapper;
    }
    
    //To return additional records based on offset
   @AuraEnabled
    public static List<ContentDocument> loadAccountRecords(Integer rowLimit,Integer rowOffset){
       return [SELECT Title,CreatedDate,Owner.Name FROM ContentDocument ORDER BY CreatedDate DESC LIMIT :rowLimit OFFSET :rowOffset];
   }
    
    // wrapper class
    public class AccountWrapper{
        @AuraEnabled
        public Integer totalRecords = 0;
        @AuraEnabled
        public List<ContentDocument> accountsList = new List<ContentDocument>();
        @AuraEnabled
        public String message;
        @AuraEnabled
        public Boolean success;
      //  @AuraEnabled
      //  public string successdownload; 
        
    }
    
}