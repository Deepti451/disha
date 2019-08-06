({
	handlBchaEvent : function(component, event, helper) {
		var name=component.get("v.Name");
        var company=component.get("v.Company");
        var email=component.get("v.Email");
        var phone=component.get("v.Phone");
        if(phone==0||phone==""||name==""||company==""||email==""){
            alert("Please fill all fields!");
        }else{
            var eventToFire=component.getEvent("parEvt");
            eventToFire.setParams({
                "pName":name,
                "pCompany":company,
                "pEmail":email,
                "pPhone":phone
            });
            eventToFire.fire();
        }
	},
    
    submitForm : function(component, event, helper) {
		/*var eventToFire=component.getEvent("bchaEvt");
        eventToFire.fire();*/
        alert('Hello');
	}
})