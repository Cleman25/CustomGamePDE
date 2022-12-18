import uibooster.*;
import uibooster.components.*;
import java.util.*;


<<<<<<< HEAD
=======
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

>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
float previousTime, deltaTime;
ArrayList<String> AvailableComponents = new ArrayList<String>();

void setup() {
<<<<<<< HEAD
  //size(displayWidth,displayHeight);
  size(1080,720);
  //fullScreen();
  smooth();
  surface.setTitle("Custom Game Engine");
  surface.setResizable(true);
  //surface.setLocation(0,0);
=======
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
  deltaTime = 150;
  previousTime = 0;
  // GameManager Init
  GameManager.Instance().Init();
<<<<<<< HEAD
  //for(int i = 0; i < 1000; i++) {
  //  LogManager.Instance().Log("Log manager limit test iteration: " + i);
  //}
  LogManager.Instance().Log("Available Components: " + max(AvailableComponents.size(), 0) + ": " + AvailableComponents);
=======
  
  LogManager.Instance().Log(Arrays.toString(AvailableComponents.toArray()));
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
}

void draw() {
  // GameManager Update
<<<<<<< HEAD
  GameManager.Instance().Update();
}

void keyPressed() {
  PlayerControlManager.Instance().Update();
=======
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
}
