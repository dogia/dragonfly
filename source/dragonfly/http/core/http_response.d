module source.dragonfly.http.core.http_response;

import source.dragonfly.http.core.http_status_code;

interface HttpResponse {
    HttpResponse write(string message);
    HttpResponse json(T)(T obj);
    HttpResponse withStatus(HTTP_STATUS_CODE status);
    HttpResponse header(string key, string value);

    void send();
}