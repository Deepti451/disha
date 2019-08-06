({
    cinit : function(component, event, helper) {
        component.set('v.columns',[
            {label:'Name',fieldName:'Name',type:'text'},
            {label:'ID',fieldName:'Id',type:'String'},
            {label:'Company',fieldName:'Company',type:'text'}
        ]);
        //console.log("here: "+JSON.stringify(component.get("v.columns")));
        component.set('v.columns2',[
            {label:'Name',fieldName:'Name',type:'text'},
            {label:'ID',fieldName:'Id',type:'String'},
            
        ]);
            
            component.set('v.columns3',[
            {label:'Name',fieldName:'Name',type:'text'},
            {label:'ID',fieldName:'Id',type:'String'},
            
        ])
            
            var action=component.get("c.getData");
            action.setCallback(this,function(response){
            if(response.getState()=='SUCCESS'){
            var li=response.getReturnValue();
            console.log("data: "+JSON.stringify(li));
            component.set("v.data2",li.acc);
            component.set("v.data",li.ld);
               component.set("v.data3",li.con);
            console.log("init working1");
            }
            else{
            console.log("init not working1");
            
            }
            });
            $A.enqueueAction(action);
            
            /*var action2=component.get("c.getAccounts");
            action.setCallback(this,function(response1){
            var ai=response1.getReturnValue();
            component.set("v.data2",ai);
            console.log("init working2");
            });
            $A.enqueueAction(action2);		
            }*/
            }
            })