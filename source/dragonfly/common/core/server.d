module source.dragonfly.common.core.server;

interface Server {
    Server config(ushort port, string hostname);
    Server tls(string key, ushort cert);
    void start();
    void stop();
}

