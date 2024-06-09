module source.dragonfly.http.core.http_router;

import source.dragonfly.http.core.http_method;
import source.dragonfly.http.core.http_request;
import source.dragonfly.http.core.http_response;
import source.dragonfly.http.core.http_route;



interface HttpRouter {
    HttpRoute add(HTTP_METHOD, string path, void delegate(HttpRequest request, HttpResponse response) handler);
    HttpRoute add(HTTP_METHOD[], string path, void delegate(HttpRequest request, HttpResponse response) handler);
}

