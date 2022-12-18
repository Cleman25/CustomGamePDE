public static class SceneManager {
<<<<<<< HEAD
  private HashMap<String, Scene> scenes = new HashMap<String, Scene>();
  protected static final SceneManager instance = new SceneManager();
  public int mapGenerations = 0;
  public Scene currentScene = null,
=======
  private static HashMap<Scene, GameObject> gameObjects = new HashMap<Scene, GameObject>();
  private static HashMap<Scene, Component> components = new HashMap<Scene, Component>();
  private static HashMap<String, Scene> scenes = new HashMap<String, Scene>();
  private static final SceneManager instance = new SceneManager();
  public int mapGenerations = 0;
  public static Scene currentScene = null,
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
         lastScene = null;
  
  public static SceneManager Instance() {
    return instance;
  }
  
  void Init() {
<<<<<<< HEAD
    println("Initializing " + this.getClass().getSimpleName());
    // Get gameObjects from Scene
    currentScene = new Scene("Start");
=======
    // Get gameObjects from Scene
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
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
<<<<<<< HEAD
    lastScene = currentScene;
    currentScene = sc;
    PlayerControlManager.Instance().ReloadControls(currentScene);
=======
    lastScene = sc;
    currentScene = sc;
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
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
