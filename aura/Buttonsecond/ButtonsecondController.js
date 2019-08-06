({
    handleComponentEvent : function(component, event, helper) {
        component.set("v.saved",true);
        console.log("handled");
    },
    handleSubmit : function(component, event, helper) {
        
        
    },
    Arrow : function(component, event, helper) {
        component.set("v.saved",false); 
    },
    handleSuccess : function(component, event, helper) {  
       // var comp = component.find('editformid');
        //  $A.util.addClass(comp, 'slds-hide');  
        component.set("v.saved",false);
        component.set("v.msg",true);
       
    //     var action=component.get("c.LeadSearch");
    //    action.setCallback(this,function(response){
            
    //        var data=response.getReturnValue();
            
          //  component.set("v.childAttribute",data);
            
     //   });
     //   $A.enqueueAction(action);
         $A.get('e.force:refreshView').fire();
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": "Success!",
            "message": "Lead added sucessfully!"
        });
        toastEvent.fire();
    },
    openform : function(component, event, helper) {  
    component.set("v.saved",true); 
    }
    
})