module source.dragonfly.http.infra.handy_httpd.handy_httpd_request;

import source.dragonfly.http.core.http_request;
import source.dragonfly.http.core.http_method;
import handy_httpd : HttpRequestContext;

class HandyHttpdRequest : HttpRequest {
    private HTTP_METHOD _http_method = HTTP_METHOD.GET;

    this(HttpRequestContext ctx) {
        this.readMethod(ctx);
    }

    HTTP_METHOD method() {

        return HTTP_METHOD.GET;
    }

    private void readMethod(HttpRequestContext ctx) {
        // switch(ctx.request.method) {
        //     case Method.GET:
        //         break;
        // }
    }
}