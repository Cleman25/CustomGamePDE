public static class LogManager {
  private Queue<String> logQueue = new LinkedList<String>();
  private Queue<String> preQueue = new LinkedList<String>(); // unlimited log storage, incase queue is full
  protected static final LogManager instance = new LogManager();
  private LogMode mode = LogMode.DEBUG;
  public static LogManager Instance() { return instance; }
  
  void Init() {
    println("Initializing " + this.getClass().getSimpleName() + " in " + mode + " mode");
  }
  
  void Update() {
    if (mode == LogMode.DEBUG) {
      //print(preQueue);
      if(logQueue.size() != 0) { // if the logging queue is not empty
         println(LogString(logQueue.remove())); // print the fifo
      }
    }
    if(!LogQueueIsFull() && preQueue.size() != 0) { // if log queue is not full
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
    return LogQueueSize() >= 100;
  }
  
  public void SetMode(LogMode log_mode) {
    mode = log_mode;
  }
  
  private String LogString(String log) { // build final log string
    String d = day() < 10 ? "0" + day() : "" + day();
    String m = month() < 10 ? "0" + month() : "" + month();
    int y = year();
    int ml = (int) System.currentTimeMillis();
    String ss = second() < 10 ? "0" + second() : "" + second();
    String mm = minute() < 10 ? "0" + minute() : "" + minute();
    String hh = hour() < 10 ? "0" + hour() : "" + hour();
    String LogPrefix = "[Logmanager]";
    String LogTime = "[" + y + "/" + m + "/" + d + " " + hh + ":" + mm + ":" + ss + ":" + ml +"]";
    String finalLog = LogPrefix + LogTime + " " + log;
    return finalLog;
  }
  
}
