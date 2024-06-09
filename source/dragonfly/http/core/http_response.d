module source.dragonfly.http.core.http_response;

interface HttpResponse {
    HttpResponse write(string message);
    HttpResponse withStatus(ushort status);
}