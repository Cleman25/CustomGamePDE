public static class PlayerControlManager {
<<<<<<< HEAD
  protected static final PlayerControlManager instance = new PlayerControlManager();
  protected ArrayList<PlayerControl> controls = new ArrayList<PlayerControl>();
=======
  private static final PlayerControlManager instance = new PlayerControlManager();
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  public static PlayerControlManager Instance() {
    return instance;
  }
  
  void Init() {
<<<<<<< HEAD
    println("Initializing " + this.getClass().getSimpleName());
    LoadControls();
  }
  
  void Update() {
    for(PlayerControl pc: controls) {
      pc.Update();
    }
  }

  private void LoadControls() {
    Scene activeScene = SceneManager.Instance().currentScene;
    if(activeScene != null) {
      for(GameObject g: activeScene.gameObjects) {
        if(g.tag == ObjectTag.Player) {
          if(g.Has(PlayerControl.class)) {
            controls.add(g.GetComponent(PlayerControl.class));
            LogManager.Instance().Log("Found PlayerControl for " + g.name + ". Control has been loaded");
          }
        }
      }
      LogManager.Instance().Log("Finished loading controls");
    } else {
      LogManager.Instance().Log("No active scene found, failed to load PlayerControls.");
    }
  }
  
  public void LoadControls(Scene scene) {
    for(GameObject g: scene.gameObjects) {
      if(g.tag == ObjectTag.Player) {
        if(g.Has(PlayerControl.class)) {
          controls.add(g.GetComponent(PlayerControl.class));
          LogManager.Instance().Log("Found PlayerControl for " + g.name + ". Control has been loaded");
        }
      }
    }
    LogManager.Instance().Log("Finished loading controls");
  }
  
  public PlayerControl GetControl(GameObject go) {
    for(PlayerControl pc: controls) {
      if (pc.gameObject == go) {
        return pc;
      }
    }
    LogManager.Instance().Log("Could not find the PlayerControl for " + go.name);
    return null;
  }
  
  public void UnloadControl(GameObject go) {
    controls.remove(GetControl(go));
    LogManager.Instance().Log("Unloaded PlayerControl for " + go.name);
  }
  
  public void UnloadControl(PlayerControl pc) {
    if(controls.contains(pc)) {
      controls.remove(pc);
    }
  }
  
  public void UnloadControls() {
    for(int i = 0; i < controls.size(); i++) {
      controls.remove(controls.get(i));
    }
  }
  
  public void UnloadControls(GameObject... gos) {
    for(GameObject go: gos) {
      UnloadControl(go);
    }
  }
  
  public void UnloadControls(PlayerControl... pcs) {
    for(PlayerControl pc: pcs) {
      UnloadControl(pc);
    }
  }
  
  public void ReloadControls(Scene scene) {
    UnloadControls();
    LoadControls(scene);
=======
  }
  
  void Update() {
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  }
  
}
