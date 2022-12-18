public class Component {
  String name;
  Component parentComponent;
  GameObject gameObject;
<<<<<<< HEAD
  protected boolean canBeDuplicated = false; // if we want to allow multiple of this component type
=======
  private boolean canBeDuplicated = false; // if we want to allow multiple of this component type
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  public Component() {
    LogManager.Instance().Log(this.getClass().getSimpleName() + " component has been created");
    AvailableComponents.add(this.getClass().getSimpleName());
  }
  
  public Component(String name) {
    this.name = name;
  }
  
<<<<<<< HEAD
  public void Init() {
  }
  
=======
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  public void Update() {
  }
  
  protected void Log(String logStr) {
    LogManager.Instance().Log(logStr);
  }
  
  public boolean CanBeDuplicated() {
    return canBeDuplicated;
  }
}
