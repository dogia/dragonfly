module source.dragonfly.http.core.http_method;


enum HTTP_METHOD {
    // RFC 7231
    GET = "GET",
    HEAD = "HEAD",
    POST = "POST",
    PUT = "PUT",
    DELETE = "DELETE",
    CONNECT = "CONNECT",
    OPTIONS = "OPTIONS",
    TRACE = "TRACE",

    // RFC 5789
    PATCH = "PATCH"
}