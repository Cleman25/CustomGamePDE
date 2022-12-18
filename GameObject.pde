<<<<<<< HEAD
public class GameObject implements CollisionEvents {
  public boolean enabled = true,
    visible = true;
  public String name;
  protected ObjectTag tag;
  protected SceneLayer layer;
=======
public class GameObject implements CollisionEvents<Collision> {
  public boolean enabled = true,
         visible = true;
  public String name;
  protected ObjectTag tag;
  protected Layers layer;
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  private ArrayList<Component> components = new ArrayList<>();
  protected GameObject parent;
  public GameObject() {
    this.Init();
  }
<<<<<<< HEAD

  private void Init() {
    this.LoadDefaults();
    this.InitComponents();
  }

  private void InitComponents() {
    for (Component c : components) {
      InitComponent(c);
    }
  }

  private void InitComponent(Component component) {
    component.Init();
  }

  private void LoadDefaults() {
    AddComponent(new Transform());
    AddComponent(new Sprite());
    if (tag == ObjectTag.Player) {
      AddComponent(new PlayerControl());
    }
  }

  private void ObjectCollisions() {
    Scene activeScene = SceneManager.Instance().currentScene;
    //if (activeScene.gameObjects.contains(this) && enabled && visible) { // GameObject should already be in scene since only the currentScene is being updated
    if (enabled && visible) {
      Collision cl = GetComponent(Collision.class);
      if (cl != null) {
        for (GameObject g : activeScene.gameObjects) {
          Collider col = g.GetComponent(Collider.class);
          cl.IsCollidingWith(col);
          GetComponent(Collider.class).HandleCollision(col);
        }
      }
    }
  }

  public void Update() {
    ObjectCollisions();
  }

  public void Render() {
  }

  public void AddComponent(Component component) {
    if (CheckComponent(component)) {
      if (component.CanBeDuplicated()) {
        components.add(component);
        component.gameObject = this;
=======
  
  private void Init() {
     this.LoadDefaults();
     this.InitComponents();
  }
  
  private void InitComponents() {
  }
  
  private void InitComponent(Component component) {
    component.Init();
  }
  
  private void LoadDefaults() {
    AddComponent(new Transform());
  }
  
  public void Update() {
  }
  
  public void Render() {
  }
  
  public void AddComponent(Component component) {
    if(CheckComponent(component)) {
      if (component.CanBeDuplicated()) {
        components.add(component);
        component.Parent = this;
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
        LogManager.Instance().Log("Successfully added component");
      } else {
        LogManager.Instance().Log("Component cannot be duplicated");
      }
    }
  }
<<<<<<< HEAD

  public void SetTag(ObjectTag tag) {
    this.tag = tag;
  }

  public void SetLayer(SceneLayer layer) {
    this.layer = layer;
  }

  private boolean CheckComponent(Component component) {
    boolean res = components.contains(component);
    if (res) {
=======
  
  public void SetTag(ObjectTag tag) {
    this.tag = tag;
  }
  
  public void SetLayer(Layer layer) {
    this.layer = layer;
  }
  
  private boolean CheckComponent(Component component) {
    boolean res = components.contains(component);
    if(res) {
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
      LogManager.Instance().Log("Component found");
    } else {
      LogManager.Instance().Log("Component does not exist in " + this.getClass().getSimpleName() + "'s components list");
    }
    return res;
  }
<<<<<<< HEAD

  public void RemoveComponent(Component component) {
    if (CheckComponent(component)) {
      if (components.remove(component)) {
=======
  
  public void RemoveComponent(Component component) {
    if (CheckComponent(component)) {
      if(components.remove(component)) {
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
        LogManager.Instance().Log("Component successfully removed");
      } else {
        LogManager.Instance().Log("Failed to delete component. Not Found");
      }
    }
  }
<<<<<<< HEAD

  public ArrayList<Component> GetComponents(Class<Component> component) {
    ArrayList<Component> found = new ArrayList();

    for (int i = 0; i < this.components.size(); ++i) {
      Component c = (Component)this.components.get(i);
      if (c.getClass().isAssignableFrom(component)) {
=======
  
  public ArrayList<Component> GetComponents(Class<Component> component) {
    ArrayList<Component> found = new ArrayList<Component>();
    for(int i = 0; i < components.size(); i++) {
      Component c = components.get(i);
      if(c.getClass().isAssignableFrom(component)) {
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
        LogManager.Instance().Log("Component of type: " + c.getClass().getSimpleName() + " found!");
        found.add(c);
      }
    }
<<<<<<< HEAD

    if (found.isEmpty()) {
      LogManager.Instance().Log("Component: " + component.getSimpleName() + " not found for " + this.name);
    }

    return found;
  }

  public <T extends Component> T GetComponent(Class<T> component) {
    Iterator var3 = this.components.iterator();

    while (var3.hasNext()) {
      Component c = (Component)var3.next();
      if (c.getClass().isAssignableFrom(component)) {
        LogManager.Instance().Log("Component of type: " + c.getClass().getSimpleName() + " found!");
        return (T) c;
      }
    }

    LogManager.Instance().Log("Component: " + component.getSimpleName() + " not found for " + this.name);
    return null;
  }
  
  public Boolean Has(Class component) {
    return GetComponent(component) != null;
  }

  public void OnCollision(Collider col) {
  }
  public void OnCollisionUp(Collider col) {
  }
  public void OnCollisionDown(Collider col) {
  }
  public void OnCollisionLeft(Collider col) {
  }
  public void OnCollisionRight(Collider col) {
  }
  public void OnTriggerEnter(Collider col) {}
  public void OnTriggerExit(Collider col) {}
  public void OnCollisionEnter(Collider col) {}
  public void OnCollisionExit(Collider col) {}
=======
    return found;
  }
  
  public Collision OnCollision(Collision col) {
    return col;
  }
  public Collision OnCollisionUp(Collision col) {
    return col;
  }
  public Collision OnCollisionDown(Collision col) {
    return col;
  }
  public Collision OnCollisionLeft(Collision col) {
    return col;
  }
  public Collision OnCollisionRight(Collision col) {
    return col;
  }
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
}
