public class DemoClass{
    public static List<Account> accList{get;set;}
    
    public DemoClass(){
        accList=new List<Account>();
        accList=[SELECT ID FROM Account];
    }
        public static List<Account> getAccount()
        {
            List<Account>temp=new List<Account>();
            temp=[SELECT name from Account];
            return temp;
        }
        public static void printAccount(){
         accList=[SELECT ID FROM Account];
    }
}