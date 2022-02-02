public static class LogManager {
  private static Queue<String> logQueue = new LinkedList<String>();
  private static Queue<String> preQueue = new LinkedList<String>(); // unlimited log storage, incase queue is full
  private static final LogManager instance = new LogManager();
  private static LogMode mode;
  public static LogManager Instance() {
    return instance;
  }
  
  void Init() {
    // idk what to do here yet
  }
  
  void Update() {
    if (mode == LogMode.DEBUG) {
      if(!logQueue.isEmpty()) { // if the logging queue is not empty
         println(LogString(logQueue.remove())); // print the fifo
      }
    }
    while(!LogQueueIsFull()) { // if log queue is not full
      logQueue.add(preQueue.remove()); // add the fifo from pre queue to the log queue
    }
  }
  
  public void Log(String log) {
    preQueue.add(log); // add to unlimited pre Queue
  }
  
  private int LogQueueSize() {
    return logQueue.size();
  }
  
  private boolean LogQueueIsFull() {
    return LogQueueSize() < 100;
  }
  
  public void SetMode(LogMode log_mode) {
    mode = log_mode;
  }
  
  private String LogString(String log) { // build final log string
    String d = day() < 10 ? "0" + day() : "" + day();
    String m = second() < 10 ? "0" + month() : "" + month();
    int y = year();
    int ml = (int) System.currentTimeMillis();
    String ss = second() < 10 ? "0" + second() : "" + second();
    String mm = minute() < 10 ? "0" + minute() : "" + minute();
    String hh = hour() < 10 ? "0" + hour() : "" + hour();
    String LogPrefix = "[Logmanager]-";
    String LogTime = "[" + y + "/" + m + "/" + d + " " + hh + ":" + mm + ":" + ss + ":" + ml +"]";
    String finalLog = LogPrefix + LogTime + "\t" + log;
    return finalLog;
  }
  
}
