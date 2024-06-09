module dragonfly;

public import source.dragonfly.http.core : HttpRequest, HttpResponse, HTTP_METHOD;

public import source.dragonfly.http.infra.handy_httpd;

alias HttpServer = HandyHttpd;