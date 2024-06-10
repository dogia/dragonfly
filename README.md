# Dragonfly

Dragonfly es una biblioteca de infraestructura HTTP/WS escrita en D que proporciona una interfaz fácil de usar para crear servidores web rápidos y escalables.

## Características

- **Sencillez de Uso:** Dragonfly simplifica la creación de servidores web HTTP en D, permitiéndote concentrarte en la lógica de tu aplicación en lugar de en los detalles de implementación del servidor.
- **Rendimiento:** Diseñado para ser rápido y eficiente, Dragonfly aprovecha las características del lenguaje D y las mejores prácticas en el desarrollo web para ofrecer un rendimiento excepcional.
- **Flexibilidad:** Dragonfly es altamente configurable y extensible, lo que te permite adaptar el servidor a tus necesidades específicas y agregar nuevas características fácilmente.

## Instalación

Para instalar Dragonfly, puedes usar el gestor de paquetes Dub:

```bash
dub add dragonfly
```

## Uso Básico

Aquí hay un ejemplo simple de cómo puedes crear un servidor HTTP básico utilizando Dragonfly:

```d
import dragonfly : HttpServer, HttpRequest, HttpResponse, HTTP_METHOD;

void main() {
    auto server = new HttpServer();
    auto router = server.router();

    router.add(HTTP_METHOD.GET, "/", (HttpRequest request, HttpResponse response) {
        response.write("Hello Word").withStatus(200);
    });

    server.start();
}
```
```d
import dragonfly : HttpServer, HttpRequest, HttpResponse, HTTP_METHOD, HTTP_STATUS_CODE;

void main() {
    auto server = new HttpServer();
    auto router = server.router();

    router.add(HTTP_METHOD.GET, "/cat", (HttpRequest request, HttpResponse response) {
        response.json(CAT).withStatus(HTTP_STATUS_CODE.CREATED);
    });

    server.start();
}
```

## Contribución

¡Las contribuciones son bienvenidas! Si deseas contribuir al desarrollo de Dragonfly, por favor, consulta nuestro documento de contribución para obtener más información sobre cómo empezar.

## Licencia

Dragonfly se distribuye bajo la licencia MIT. Consulta el archivo LICENSE para obtener más detalles.

Por supuesto, puedes personalizar este README según las características específicas de tu proyecto Dragonfly y las convenciones de tu equipo.
