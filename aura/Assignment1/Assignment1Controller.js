({
      cinit: function (cmp, event, helper) {
          
     
         cmp.set('v.columns', [
             {label: 'Lead Name', fieldName: 'Name', type: 'text'},
             {label: 'Email', fieldName: 'Email', type: 'email'},
             {label: 'Phone', fieldName:  'Phone', type: 'Phone' },
             {label: 'Company', fieldName:  'Company', type: 'String'}
        ]); 
        var action=cmp.get("c.getLeads");
          console.log('init working');
         action.setCallback(this,function(response){
     
       
                var li=response.getReturnValue();

               cmp.set("v.data",li);
        });
        $A.enqueueAction(action);
	}
 })