trigger leadctrigger on Lead (before update,after update) {
    List<Id> oppoIdList=new List<Id>();
    for(lead ld:Trigger.new)
    {
        if(ld.isconverted){
            oppoIdList.add(ld.ConvertedOpportunityId);
        }
    }
    List<Opportunity> oppList=[select id from opportunity where id in:oppoIdList];
    for(Opportunity opp:oppList){
        opp.closedate=date.newInstance(2019, 12, 31);
    }
    update oppList;
}