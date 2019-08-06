({
	doinit : function(component, event, helper) {
        var action=component.get("c.findAll");
        action.setCallback(this,function(a){
                           component.set("v.Lead",a.getReturnValue());
                           });
    $A.enqueueAction(action);
                           
		
	},
 
 Click:function(component,event,helper){
    var searchKey=event.getParam("searchKey");
    var action=component.set("c.findByName");
    
    action.setParams({
        "searchKey":searchKey
    });
    action.setCallback(this,function(a){
                       component.set("v.Lead",a.getReturnValue());
});
	$A.enqueueAction(action);
    
}
})