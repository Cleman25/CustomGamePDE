public static class SceneManager {
  private HashMap<String, Scene> scenes = new HashMap<String, Scene>();
  protected static final SceneManager instance = new SceneManager();
  public int mapGenerations = 0;
  public Scene currentScene = null,
         lastScene = null;
  
  public static SceneManager Instance() {
    return instance;
  }
  
  void Init() {
    println("Initializing " + this.getClass().getSimpleName());
    // Get gameObjects from Scene
    for(HashMap.Entry<String, Scene> sc: scenes.entrySet()) {
      sc.getValue().Init();
    }
    // Get components from GameObjects
  }
  
  void Update() {
    // Update current scene items
    DrawScene(currentScene);
  }
  
  private void DrawScene(Scene scene) {
    scene.Draw();
  }
  
  public Scene GetScene(String sc_name) {
    if(CheckScene(sc_name)) {
      return scenes.get(sc_name);
    }
    return null;
  }
  
  public void ChangeScene(Scene sc) {
    lastScene = currentScene;
    currentScene = sc;
    PlayerControlManager.Instance().ReloadControls(currentScene);
    LogManager.Instance().Log("Scene changed from " + lastScene.name + " to " + currentScene.name);
  }
  
  public void AddScene(String sc_name, Scene scene) {
    if (CheckScene(sc_name)) {
      LogManager.Instance().Log("Scene already exists.");
    } else {
      scenes.put(sc_name, scene);
      LogManager.Instance().Log("Scene Added.");
    }
  }
  
  public boolean CheckScene(String sc_name) {
    boolean found = scenes.containsKey(sc_name);
    LogManager.Instance().Log("Scene not found.");
    return found;
  }
}
