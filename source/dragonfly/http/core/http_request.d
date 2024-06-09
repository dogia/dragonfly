module source.dragonfly.http.core.http_request;

import source.dragonfly.http.core.http_method;

interface HttpRequest {
    HTTP_METHOD method();
}