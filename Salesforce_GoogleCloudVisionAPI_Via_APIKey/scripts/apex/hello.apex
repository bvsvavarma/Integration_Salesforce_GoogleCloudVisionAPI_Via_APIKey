// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

Http http = new Http();
        
        String requestBody = '{"requests": [{"features": [{"maxResults": 10,"type": "IMAGE_PROPERTIES"   }],"image": {"source": {"imageUri": "gs://cloud-samples-data/vision/image_properties/bali.jpeg"}}}]}';
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint('https://vision.googleapis.com/v1/images:annotate?key=AIzaSyA1_P7pPGwuWKI38nFRNoi2fZcI8LNbe1c');
        request.setBody(requestBody);
        request.setHeader('Content-Type', 'application/json');
        HttpResponse response = http.send(request);
        System.debug('Body: ' + response.getBody());
