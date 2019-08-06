({
	fetchLeads : function(component, event, helper) {
		//helper.fetchLeadsHelper(component);
        var action=component.get("c.getLeads");
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state=="SUCCESS"){
                var listOfLeads=response.getReturnValue();
                alert(JSON.stringify(listOfLeads));
                //var currentLeadList=component.get("v.leadList");
                //alert("Old List:"+JSON.stringify(currentLeadList));
                component.set("v.leadList",listOfLeads);
                alert("New value: "+JSON.stringify(listOfLeads));
                alert("Lead fetched successfully!");
            }else{
                alert("An error occurred!");
            }
        });
        $A.enqueueAction(action);
    }
})