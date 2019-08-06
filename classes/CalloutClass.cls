public class CalloutClass  {
    @future(callout=true)
    public static void makeCallOut(){
        
        HttpRequest request=new HttpRequest();
        
        //Set the entire url
        String endpoint='http://yourHost/yourService';
        request.setEndpoint(endpoint);
        
        //set the http verb to get
        request.setMethod('GET');
        
        //set the http request and get the response
        
        HttpResponse response=new Http().send(request);
    }

}