import uibooster.*;
import uibooster.components.*;
import java.util.*;


float previousTime, deltaTime;
ArrayList<String> AvailableComponents = new ArrayList<String>();

void setup() {
  //size(displayWidth,displayHeight);
  size(1080,720);
  //fullScreen();
  smooth();
  surface.setTitle("Custom Game Engine");
  surface.setResizable(true);
  //surface.setLocation(0,0);
  deltaTime = 150;
  previousTime = 0;
  // GameManager Init
  GameManager.Instance().Init();
  //for(int i = 0; i < 1000; i++) {
  //  LogManager.Instance().Log("Log manager limit test iteration: " + i);
  //}
  LogManager.Instance().Log("Available Components: " + max(AvailableComponents.size(), 0) + ": " + AvailableComponents);
}

void draw() {
  // GameManager Update
  GameManager.Instance().Update();
}

void keyPressed() {
  PlayerControlManager.Instance().Update();
}
