({
    doInit: function(component, event, helper) {
		var action = component.get("c.getLead");
        action.setParams({
            "recordId": component.get("v.recordId")
        });
		action.setCallback(this, function(response) {
			var state = response.getState();
			if (state === "SUCCESS") {
				component.set("v.lead", response.getReturnValue());
                $A.get('e.force:refreshView').fire();
			} else {
				console.log("Failed with state: " + state);
			}
		});
		$A.enqueueAction(action);		
	},
    handleClick: function(component, event, helper) {
		var action = component.get("c.saveLead");
        action.setParams({
            "record": component.get("v.lead")
        });
		action.setCallback(this, function(response) {
			var state = response.getState();
			if (state === "SUCCESS") {
				component.set("v.lead", response.getReturnValue());
			} else {
				console.log("Failed with state: " + state);
			}
		});
		$A.enqueueAction(action);
    }
})