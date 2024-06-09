module source.dragonfly.http.core.http_middleware;

import source.dragonfly.http.core.http_request;
import source.dragonfly.http.core.http_response;

interface HttpMiddleware {
    void handle(
        HttpRequest request,
        HttpResponse response,
        void delegate(HttpRequest request, HttpResponse response) next
    );
}