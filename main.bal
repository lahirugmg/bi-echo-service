import ballerina/http;

// HTTP listener on port 8888
listener http:Listener httpListener = new (8888);

// Service to echo JSON requests
service / on httpListener {
    
    // Resource function to handle POST requests with JSON
    resource function post echo(@http:Payload json requestPayload) returns json {
        // Echo back the same JSON that was received
        return requestPayload;
    }
    
    // Resource function to handle GET requests for health check
    resource function get health() returns string {
        return "Echo service is running on port 8888";
    }
}