public class PlayerControl extends Component {
  private HashMap<String, Character> controls = new HashMap<String, Character>(); // ["fire", F] press F to fire 
  public PlayerControl() {
  
  }
  
  public void Update() {
  }
  
  public void AddControl(String control_name, Character kCode) {
    if(!CheckControl(control_name)) {
      controls.put(control_name, kCode);
    } else {
      // log handler control found, something something, click tochange/update control
    }
  }
  
  public void ChangeControl(String control_name, Character kCode) {
    if (CheckControl(control_name)) {
        controls.replace(control_name, kCode);
    } else {
      // log handler control not found, something something, click to add
    }
  }
  
  public void RemoveControl(String control_name) {
    if (CheckControl(control_name)) {
      controls.remove(control_name);
    } else {
      // log handler control not found, something something, click to add
    }
  }
  
  public boolean CheckControl(String control_name) {
    boolean found = controls.containsKey(control_name);
    return found;
  }
  
  public void ShowAllControls() {
    // too lazy rn, so print all controls
  }
}
