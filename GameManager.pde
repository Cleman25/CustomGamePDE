public static class GameManager {
  private boolean gameOver, paused, toggleObjectNames, toggleHitBoxes;
  private static final GameManager instance = new GameManager();
  public static GameManager Instance() {
    return instance;
  }
  
  void Init() {
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
