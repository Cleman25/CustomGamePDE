public static class LogManager {
<<<<<<< HEAD
  private Queue<String> logQueue = new LinkedList<String>();
  private Queue<String> preQueue = new LinkedList<String>(); // unlimited log storage, incase queue is full
  protected static final LogManager instance = new LogManager();
  private LogMode mode = LogMode.DEBUG;
  public static LogManager Instance() { return instance; }
  
  void Init() {
    println("Initializing " + this.getClass().getSimpleName() + " in " + mode + " mode");
=======
  private static Queue<String> logQueue = new LinkedList<String>();
  private static Queue<String> preQueue = new LinkedList<String>(); // unlimited log storage, incase queue is full
  private static final LogManager instance = new LogManager();
  private static LogMode mode;
  public static LogManager Instance() {
    return instance;
  }
  
  void Init() {
    // idk what to do here yet
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  }
  
  void Update() {
    if (mode == LogMode.DEBUG) {
<<<<<<< HEAD
      //print(preQueue);
      if(logQueue.size() != 0) { // if the logging queue is not empty
         println(LogString(logQueue.remove())); // print the fifo
      }
    }
    if(!LogQueueIsFull() && preQueue.size() != 0) { // if log queue is not full
=======
      if(!logQueue.isEmpty()) { // if the logging queue is not empty
         println(LogString(logQueue.remove())); // print the fifo
      }
    }
    while(!LogQueueIsFull()) { // if log queue is not full
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
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
<<<<<<< HEAD
    return LogQueueSize() >= 100;
=======
    return LogQueueSize() < 100;
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  }
  
  public void SetMode(LogMode log_mode) {
    mode = log_mode;
  }
  
  private String LogString(String log) { // build final log string
    String d = day() < 10 ? "0" + day() : "" + day();
<<<<<<< HEAD
    String m = month() < 10 ? "0" + month() : "" + month();
=======
    String m = second() < 10 ? "0" + month() : "" + month();
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
    int y = year();
    int ml = (int) System.currentTimeMillis();
    String ss = second() < 10 ? "0" + second() : "" + second();
    String mm = minute() < 10 ? "0" + minute() : "" + minute();
    String hh = hour() < 10 ? "0" + hour() : "" + hour();
<<<<<<< HEAD
    String LogPrefix = "[Logmanager]";
    String LogTime = "[" + y + "/" + m + "/" + d + " " + hh + ":" + mm + ":" + ss + ":" + ml +"]";
    String finalLog = LogPrefix + LogTime + " " + log;
=======
    String LogPrefix = "[Logmanager]-";
    String LogTime = "[" + y + "/" + m + "/" + d + " " + hh + ":" + mm + ":" + ss + ":" + ml +"]";
    String finalLog = LogPrefix + LogTime + "\t" + log;
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
    return finalLog;
  }
  
}
