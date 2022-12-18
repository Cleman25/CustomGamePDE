public static class GameManager {
<<<<<<< HEAD
  private boolean gameOver, paused, toggleObjectNames, toggleHitBoxes;
=======
  private boolean started, gameOver, toggleObjectNames, toggleHitBoxes;
  private HashMap<Scene, GameObject> gameObjects = new HashMap<Scene, GameObject>();
  private HashMap<Scene, Component> components = new HashMap<Scene, Component>();
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  private static final GameManager instance = new GameManager();
  public static GameManager Instance() {
    return instance;
  }
  
  void Init() {
<<<<<<< HEAD
    println("Initializing " + this.getClass().getSimpleName());
    SceneManager.Instance().Init();
    LogManager.Instance().Init();
    PlayerControlManager.Instance().Init();
    gameOver = true;
  }
  
  void Update() {
    LogManager.Instance().Update();
    if(!gameOver) {
      // scenemanager instantiation
      SceneManager.Instance().Update();
=======
    SceneManager.Instance().Init();
    LogManager.Instance().Init();
    PlayerControlManager.Instance().Init();
  }
  
  void Update() {
    if(!gameOver) {
      // scenemanager instantiation
      SceneManager.Instance().Update();
      LogManager.Instance().Update();
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
      PlayerControlManager.Instance().Update();
    }
    
    if (toggleObjectNames) {
      // components
    }
    
    if (toggleHitBoxes) {
       // gameObjects
    }
  }
  
}
