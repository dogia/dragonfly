module source.dragonfly.http.core.http_server;
import source.dragonfly.http.core.http_router;

import source.dragonfly.common.core.server;

interface HttpServer : Server {
    HttpRouter router();
}