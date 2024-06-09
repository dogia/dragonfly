import dragonfly : HttpServer, HttpRequest, HttpResponse, HTTP_METHOD;

void main() {
    auto server = new HttpServer();
    auto router = server.router();

    router.add(HTTP_METHOD.GET, "/", (HttpRequest request, HttpResponse response) {
        response.write("Hello Word").withStatus(200);
    });

    server.start();
}