public static class GameManager {
  private boolean started, gameOver, toggleObjectNames, toggleHitBoxes;
  private HashMap<Scene, GameObject> gameObjects = new HashMap<Scene, GameObject>();
  private HashMap<Scene, Component> components = new HashMap<Scene, Component>();
  private static final GameManager instance = new GameManager();
  public static GameManager Instance() {
    return instance;
  }
  
  void Init() {
    SceneManager.Instance().Init();
    LogManager.Instance().Init();
    PlayerControlManager.Instance().Init();
  }
  
  void Update() {
    if(!gameOver) {
      // scenemanager instantiation
      SceneManager.Instance().Update();
      LogManager.Instance().Update();
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
