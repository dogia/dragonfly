module source.dragonfly.http.infra.handy_httpd.handy_httpd_route;

import source.dragonfly.http.core.http_route;
import source.dragonfly.http.core.http_middleware;
import source.dragonfly.http.core.http_request;
import source.dragonfly.http.core.http_response;

class HandyHttpdRoute : HttpRoute {
    HttpMiddleware[] middlewares;
    this(void delegate(HttpRequest request, HttpResponse response) handler) {

    }

    HandyHttpdRoute middleware(HttpMiddleware middleware) {
        this.middlewares ~= middleware;
        return this;
    }
}