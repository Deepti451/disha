({
	handlerParEvt : function(component, event, helper) {
		var checkBoxValue=component.get("v.leadRecords");
        if(checkBoxValue==false){
            alert("You dont have submit access!");
        }else{
            alert("Submitting the following data: Name: "+event.getParam("pName")+" , Company: "+event.getParam("pCompany")+" , Email: "+event.getParam("pEmail")+" , Phone: "+event.getParam("pPhone"));
           var eventToFire=$A.get("e.c:resultEvent");
            eventToFire.setParams({
                "sName":event.getParam("pName"),
                "sCompany":event.getParam("pCompany"),
                "sEmail":event.getParam("pEmail"),
                "sPhone":event.getParam("pPhone")
            });
            eventToFire.fire();
        }
	}
})