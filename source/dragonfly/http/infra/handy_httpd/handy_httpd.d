module source.dragonfly.http.infra.handy_httpd.handy_httpd;
import source.dragonfly.http.infra.handy_httpd.handy_httpd_router;

import source.dragonfly.http.core.http_server;
import source.dragonfly.http.core.http_router;

import std.stdio;
import handy_httpd : HttpRequestContext, HttpRequestHandler;

class HandyHttpd : HttpServer, HttpRequestHandler {
    private HandyHttpdRouter _router;
    private string _proto = "http";
    private ushort _port;
    private string _hostname;

    HttpRouter router() {
        if(this._router is null) {
            this._router = new HandyHttpdRouter();
        }
        return this._router;
    }

    HandyHttpd config(ushort port, string hostname = "localhostname") {
        this._port = port;
        this._hostname = hostname;
        return this;
    }

    HandyHttpd tls(string key, ushort cert) {
        this._proto = "https";
        return this;
    }

    void handle(ref HttpRequestContext ctx) {
        this._router.resolve(ctx);
    }

    void start() {
        // void handle(ref HttpRequestContext ctx);
        import handy_httpd;
        auto server = new HttpServer(this);
        server.start();
    }

    void stop() {
        
    }
}
