({
	onSearchClick : function(component, event, helper) {
        helper.handleOnSearchClick(component, event, helper);
		
	},
    
    toggleButton: function(component, event, helper){
        var currentValue=component.get("v.isnewAvailable");
              console.log('method is executing');
           if(currentValue){
            component.set("v.isnewAvailable","false");
           }
        	else
       		 {
            component.set("v.isnewAvailable","true");
        	}
              
     var value=component.get("v.isnewAvailable");
     console.log('new value'+value);
    },
    
    newValueSelected: function(component, event, helper){
        var carTypeId = component.find("carTypeList").get("v.value");
        alert(carTypeId + 'optionSelected');
    },
    
    doinit:function(component,event,helper){
        //will be fetching the car type from backend using apex controller....
      
        component.set("v.carType", ['Sports Car','Luxury Car','Van']);
   	alert('component is initialized');
        var carType=component.get("v.carType");
        console.log('carType values are'+carType);
    },
})