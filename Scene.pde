public class Scene {
  String name;
  int index = 0;
  public ArrayList<SceneLayer> sceneLayers = new ArrayList<SceneLayer>();
  private ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
  private ArrayList<Component> components = new ArrayList<Component>();
  private Map levelMap;
  public Scene(String sc_name) {
    this.name = sc_name;
    sceneLayers.add(new SceneLayer(Layer.Nothing, "Nothing", 0));
    sceneLayers.add(new SceneLayer(Layer.Background, "Background", 1));
    sceneLayers.add(new SceneLayer(Layer.Center, "center", 2));
    sceneLayers.add(new SceneLayer(Layer.Nothing, "Foreground", -1));
    
    
  //Background,
  //Foreground,
  //Center,
  //Everything,
  //Nothing
  }
  
  public Scene(String sc_name, SceneLayer... slayers) {
    this(sc_name);
    for(SceneLayer sl: slayers) {
      sceneLayers.add(sl);
      sl.scene = this;
    }
  }
  
  public void Init() {
    Collections.sort(sceneLayers);
  }
  
  public void Draw() {
    // Do scene stuff here like you would in a simple draw() method
    for(GameObject go: gameObjects) {
      // load each go in its scene layer
    }
  }
  
  public void LoadMap(Map map) {
  }
  
  public SceneLayer GetLayer(String nm) {
    if(HasLayer(nm)) {
      for (SceneLayer sl: sceneLayers) {
        if (sl.name.equals(nm)) {
          return sl;
        }
      }
    }
    return null;
  }
  
  public boolean HasLayer(String nm) {
    for(SceneLayer sl: sceneLayers) {
      if (sl.name.equals(nm)) {
        return true;
      }
    }
    return false;
  }
  
  public SceneLayer GetLayerByLayer(Layer l) {
    for(SceneLayer sl: sceneLayers) {
      if (sl.layer.equals(l)) {
        return sl;
      }
    }
    return null;
  }
  
  
}
