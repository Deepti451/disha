public class Search_Bar_LeadController1 {
    @auraEnabled
    public static List<Lead> findAll(){
        return[SELECT name,id from Lead limit 5];
        
    }
    @auraEnabled
    public static List<Lead> findByName(String searchKey){
       String Mame=searchKey ;
        return[SELECT name,id from Lead WHERE name LIKE:Mame];
		
		        
    }
    @auraEnabled
    public static Lead findByID(String LeadId){
        return[SELECT name,id from Lead WHERE Id=:LeadId];
    }

}