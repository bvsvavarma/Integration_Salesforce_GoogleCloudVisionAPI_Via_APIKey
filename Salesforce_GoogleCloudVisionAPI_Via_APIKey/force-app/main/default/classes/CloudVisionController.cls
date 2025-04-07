public with sharing class CloudVisionController {
    @AuraEnabled
    public static string getImageInfo(){
        Http http = new Http();
        
        String requestBody = '{"requests": [{"features": [{"maxResults": 10,"type": "IMAGE_PROPERTIES"   }],"image": {"source": {"imageUri": "gs://cloud-samples-data/vision/image_properties/bali.jpeg"}}}]}';
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint('https://vision.googleapis.com/v1/images:annotate?key=AIzaSyA1_P7pPGwuWKI38nFRNoi2fZcI8LNbe1c');
        request.setBody(requestBody);
        request.setHeader('Content-Type', 'application/json');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200){
            return response.getBody();
        }
        return 'Something went wrong';

    }
}