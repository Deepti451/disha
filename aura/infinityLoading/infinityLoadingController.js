({
    handleClick : function(component, event, helper){
         component.set("v.istrue", true);
    },
    onInit : function(component,event,helper){
        //Setting up colum information
        component.set("v.accountColums",
                      [
            { "label" : 'File Name', "fieldName" : 'accountName', "sortable" : 'true', "type" : 'url', "typeAttributes" : { label: { fieldName: 'Title' }, target: '_blank'} },
            {label:'Created Date', fieldName: 'CreatedDate',type: 'Date/Time'},
            {label:'User Name',fieldName: 'Owner', type:'text'}
            

                      ]);
        // Call helper to set the data for account table
        helper.getData(component);
    },
    
    
    handleLoadMore : function(component,event,helper){
        if(!(component.get("v.currentCount") >= component.get("v.totalRows"))){
            //To display the spinner
            event.getSource().set("v.isLoading", true); 
            //To handle data returned from Promise function
            helper.loadData(component).then(function(data){ 
                var currentData = component.get("v.accountData");
               
                var newData = currentData.concat(data);
                component.set("v.accountData", newData);
                //To hide the spinner
                event.getSource().set("v.isLoading", false); 
            });
        }
        else{
            //To stop loading more rows
            console.log('else');
            component.set("v.enableInfiniteLoading",false);
            event.getSource().set("v.isLoading", false);
            var toastReference = $A.get("e.force:showToast");
            /*toastReference.setParams({
                "type":"Success",
                "title":"Success",
                "message":"All Account records are loaded",
                "mode":"dismissible"
            });
            toastReference.fire();*/
        }
    },
    
})