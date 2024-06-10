module source.dragonfly.http.infra.handy_httpd.handy_httpd_response;

import source.dragonfly.http.core.http_response;
import source.dragonfly.http.core.http_status_code;
import handy_httpd : HttpRequestContext;

class HandyHttpdResponse : HttpResponse {
    private HTTP_STATUS_CODE _status = HTTP_STATUS_CODE.OK;
    private string _data;

    this(HttpRequestContext ctx) {

    }

    HandyHttpdResponse write(string message) {
        return this;
    }
    HandyHttpdResponse json(T)(T obj) {
        return this;
    }
    HandyHttpdResponse withStatus(HTTP_STATUS_CODE status) {
        this._status = status;
        return this;
    }
    HandyHttpdResponse header(string key, string value) {
        return this;
    }

    void send() {}
}