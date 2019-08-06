({
    handleOnSuccess : function(component, event, helper) {
        var params = event.getParams(); //get event params
        var recordId = params.response.id; //get record id
        console.log('Record Id - ' + recordId); 
        $A.get('e.force:refreshView').fire();
    },
    
    isRefreshed: function(component, event, helper) {
        location.reload();
    }
})