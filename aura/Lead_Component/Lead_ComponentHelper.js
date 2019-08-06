({
	fetchLeadsHelper : function(cmp) {
		var action=cmp.get("c.getLeads");
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS"){
                var listOfLeads=response.getReturnValue();
                //var currentLeadList=component.get("v.leadList");
                //alert("Old List:"+JSON.stringify(currentLeadList));
                cmp.set("v.leadList",listOfLeads);
                alert("New value: "+JSON.stringify(listOfLeads));
                alert("Lead fetched successfully!");
            }else{
                alert("An error occurred!");
            }
        });
        $A.enqueueAction(action);
	}
})