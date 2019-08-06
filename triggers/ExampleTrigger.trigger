trigger ExampleTrigger on Contact(after insert,after delete){
    Contact c = new Contact(LastName='Test Contact');
insert c;
    if(Trigger.isInsert){
    
         Integer recordCount = Trigger.New.size();
        //call a utility method from another class
        EmailManager.sendMail('Your Email address','Tutorial Trialhead', recordCount + 'contacts were inserted');
    }
    else if(Trigger.isDelete){
        //Process after delete
    }
}