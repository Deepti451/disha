({

    fetchAccHelper : function(component, event, helper) {
        component.set('v.mycolumns', [
            {label: 'Id', fieldName: 'Id', type: 'text'},
               
            ]);
        var action = component.get("c.acclist");
        action.setParams({
        });
      action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.accList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
   }
})