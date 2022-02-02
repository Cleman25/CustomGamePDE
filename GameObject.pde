public class GameObject implements CollisionEvents<Collision> {
  public boolean enabled = true,
         visible = true;
  public String name;
  protected ObjectTag tag;
  protected Layers layer;
  private ArrayList<Component> components = new ArrayList<>();
  protected GameObject parent;
  public GameObject() {
    this.Init();
  }
  
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
        LogManager.Instance().Log("Successfully added component");
      } else {
        LogManager.Instance().Log("Component cannot be duplicated");
      }
    }
  }
  
  public void SetTag(ObjectTag tag) {
    this.tag = tag;
  }
  
  public void SetLayer(Layer layer) {
    this.layer = layer;
  }
  
  private boolean CheckComponent(Component component) {
    boolean res = components.contains(component);
    if(res) {
      LogManager.Instance().Log("Component found");
    } else {
      LogManager.Instance().Log("Component does not exist in " + this.getClass().getSimpleName() + "'s components list");
    }
    return res;
  }
  
  public void RemoveComponent(Component component) {
    if (CheckComponent(component)) {
      if(components.remove(component)) {
        LogManager.Instance().Log("Component successfully removed");
      } else {
        LogManager.Instance().Log("Failed to delete component. Not Found");
      }
    }
  }
  
  public ArrayList<Component> GetComponents(Class<Component> component) {
    ArrayList<Component> found = new ArrayList<Component>();
    for(int i = 0; i < components.size(); i++) {
      Component c = components.get(i);
      if(c.getClass().isAssignableFrom(component)) {
        LogManager.Instance().Log("Component of type: " + c.getClass().getSimpleName() + " found!");
        found.add(c);
      }
    }
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
}
