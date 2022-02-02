public class Component {
  String name;
  Component parentComponent;
  GameObject gameObject;
  private boolean canBeDuplicated = false; // if we want to allow multiple of this component type
  public Component() {
    LogManager.Instance().Log(this.getClass().getSimpleName() + " component has been created");
    AvailableComponents.add(this.getClass().getSimpleName());
  }
  
  public Component(String name) {
    this.name = name;
  }
  
  public void Update() {
  }
  
  protected void Log(String logStr) {
    LogManager.Instance().Log(logStr);
  }
  
  public boolean CanBeDuplicated() {
    return canBeDuplicated;
  }
}
