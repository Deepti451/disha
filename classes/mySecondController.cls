public class mySecondController {

  public Account getAccount() {
    return [select id, name,

            (select id, firstname, lastname
             from Contacts limit 5)
            from Account where id =

             :System.currentPageReference()
             .getParameters().get('id')];

  }

}