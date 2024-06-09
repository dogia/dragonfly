module source.dragonfly.http.core.http_route;

import source.dragonfly.http.core.http_middleware;
import source.dragonfly.http.core.http_request;
import source.dragonfly.http.core.http_response;


interface HttpRoute {
    HttpRoute middleware(HttpMiddleware middleware);
}

