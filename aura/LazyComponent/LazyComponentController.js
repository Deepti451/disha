({
    
    init : function(component, event, helper) {
        
        component.set('v.mycolumns', [
            {label: 'Account Name', fieldName: 'linkName', type: 'url', 
            typeAttributes: {label: { fieldName: 'Name' }, target: '_blank'}},
            {label: 'Industry', fieldName: 'Industry', type: 'text'},
            {label: 'Type', fieldName: 'Type', type: 'Text'}
        ]);
        
        helper.fetchAccounts(component, event, 0);
        
    },
    loadMoreData : function(component, event, helper) {
        
        event.getSource().set("v.isLoading", true);        
        component.set('v.loadMoreStatus', 'Loading');
        helper.fetchAccounts(component, event, component.get('v.acctList').length);
        
    }

})