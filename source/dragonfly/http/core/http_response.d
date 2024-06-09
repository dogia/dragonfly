module source.dragonfly.http.core.http_response;

interface HttpResponse {
    HttpResponse write(string message);
    HttpResponse json(T)(T obj);
    HttpResponse withStatus(ushort status);
    HttpResponse header(string key, string value);
}