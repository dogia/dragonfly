module source.dragonfly.http.infra.handy_httpd.handy_httpd_router;
import source.dragonfly.http.infra.handy_httpd.handy_httpd_route;

import source.dragonfly.http.core.http_method;
import source.dragonfly.http.core.http_request;
import source.dragonfly.http.core.http_response;
import source.dragonfly.http.core.http_route;
import source.dragonfly.http.core.http_router;

import handy_httpd : HttpRequestContext;

class HandyHttpdRouter : HttpRouter {
    private HttpRoute[HTTP_METHOD][string] routes;

    HttpRoute add(
        HTTP_METHOD method,
        string path,
        void delegate(HttpRequest request, HttpResponse response) handler
    ) {
        this.routes[method][path] = new HandyHttpdRoute(handler);
        return this.routes[method][path];
    }

    HttpRoute add(
        HTTP_METHOD[] method,
        string path,
        void delegate(HttpRequest request, HttpResponse response) handler
    ) {
        return new HandyHttpdRoute(handler);
    }

    void resolve(ref HttpRequestContext ctx) {
        ctx.response.writeBodyString("Mimimi");
    }
}