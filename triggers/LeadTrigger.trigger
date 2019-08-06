trigger LeadTrigger on Lead (before insert,after insert)
    
    
{
        if(trigger.isInsert && trigger.isafter)
        { 
            //for(Lead ld:Trigger.new)
        //    System.debug('lead id1'+ld.id);
        }
          
    
    
    	if(trigger.isInsert && trigger.isbefore)
{
    for(Lead ld:Trigger.new)
            System.debug('lead id2'+ld.id);
}

}