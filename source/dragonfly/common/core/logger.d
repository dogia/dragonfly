module source.dragonfly.common.core.logger;

interface Logger {
    public static void enable();
    public static void disable();
    public static void log(string message);
}