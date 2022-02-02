public class Sprite extends Component {
  PImage image;
  String name, filename, imageFile, path;
  PVector size =  new PVector();
  public Sprite() {};
  public Sprite(String obj) {
    this();
    path = obj;
    init();
  }
  
  private void init() {
    SetFileName();
    imageFile = path;
    image = loadImage(imageFile);
    size.set(image.width, image.height);
  }
  
  public Sprite(String name, String obj) {
    this(obj);
    this.SetName(name);
  }

  void OnUpdate() {
    size.set(image.width, image.height);
  };
  void OnCreate() {
  };
  void OnDestroy() {
  };
  
  private String GetFileName() {
    if(path == null) {
      println("Missing path for sprite");
    } else {
      String[] parts = path.split("/");
      return parts[parts.length - 1];
    }
    return null;
  }
  
  private void SetFileName() {
    filename = GetFileName();
  }
  
  private void SetName(String nm) {
    this.name = nm;
  }
  
  public String GetName() {
    return this.name;
  }
  
  public void MovePath(String loc) {
    path = loc;
    init();
  }
  
  public float GetX() {
    return size.x;
  }
  
  public float GetY() {
    return size.y;
  }
}
