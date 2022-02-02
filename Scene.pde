public class Scene {
  String name;
  int index = 0;
  private ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
  private ArrayList<Component> components = new ArrayList<Component>();
  private Map levelMap;
  public Scene(String sc_name) {
    this.name = sc_name;
  }
  
  public void Init() {
  }
  
  public void Draw() {
    // Do scene stuff here like you would in a simple draw() method
  }
  
  public void LoadMap(Map map) {
  }
  
  
}
