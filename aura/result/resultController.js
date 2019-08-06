({
	handleGranEvent : function(component, event, helper) {
		component.set("v.NametoShow",event.getParam("sName"));
        component.set("v.CompanytoShow",event.getParam("sCompany"));
        component.set("v.EmailtoShow",event.getParam("sEmail"));
		component.set("v.PhonetoShow",event.getParam("sPhone"));
        component.set("v.eventCaught",true);
	}
})