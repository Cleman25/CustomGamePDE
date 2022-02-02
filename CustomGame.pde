import uibooster.*;
import uibooster.components.*;
import java.util.*;


public enum LogMode {
  DEBUG,
  PROD
}

public enum ObjectTag {
  Projectile,
  Player,
  Platform,
  Collectible
}

public enum Layers {
  Background,
  Foreground,
  Center,
  Everything,
  Nothing
}

float previousTime, deltaTime;
ArrayList<String> AvailableComponents = new ArrayList<String>();

void setup() {
  deltaTime = 150;
  previousTime = 0;
  // GameManager Init
  GameManager.Instance().Init();
  
  LogManager.Instance().Log(Arrays.toString(AvailableComponents.toArray()));
}

void draw() {
  // GameManager Update
}
