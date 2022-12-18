public class Animation extends Component {
  int animationKey = 0,
      startAt = 0,
      numFrames = 0,
      imageW, imageH;
  float previousTime = 0, frameSpeed = 150; // controls the speed it takes to switch frames
  boolean loop = true,
          isFinished = false,
          isStarted;
  String name;
  color tintValue;
  Sprite currentFrame;
  private ArrayList<Sprite> frames = new ArrayList<Sprite>();
  public Animation() {
    canBeDuplicated = true;
  }
  
  public Animation(String name) {
    this();
    this.name = name;
  }
  
  public Animation(String name, Sprite... sprites) {
    this(name);
    this.AddFrames(sprites);
  }
  
  public Animation(String name, ArrayList<Sprite> m_frames) {
    this(name);
    frames = m_frames;
  }
  
  public void Run() {
    animationKey = numFrames - 1 < animationKey ? 0 : animationKey;
    currentFrame = GetFrameByIndex(animationKey);
    tint(tintValue);
    Render();
    if (millis() > previousTime + frameSpeed) {
      animationKey++;
      if (animationKey > numFrames - 1) {
        animationKey = 0;
      }
      previousTime = millis();
    }
  }
  
  public void Render() {
    if(currentFrame != null) {
      pushMatrix();
      //scale(); // get sibling transform data vvelocity  x < 0 ? -1 : 1, 1
      float imageX = GetFrameDimensions(currentFrame).x; //
      float imageY = GetFrameDimensions(currentFrame).y;
      image(currentFrame.image, imageX, imageY);
      popMatrix();
      if (GameManager.Instance().toggleObjectNames) {
        textAlign(CENTER);
        textMode(CENTER);
        textSize(13);
        fill(255,0,0);
        pushMatrix();
        // fix below to get sibling data
        //scale(gameObject.transform.vel.x < 0 ? -1 : 1, 1); // set the scale
        //rotate(PI);
        // fix below with sibling transform position;
        //text(gameObject.name, gameObject.transform.pos.x + currentFrame.image.width/2, gameObject.transform.pos.y-10);
        popMatrix();
      }
    }
  }
  
  private PVector GetFrameDimensions(Sprite spr) {
    return spr.size;
  }
  
  public void AddFrame(Sprite spr) {
    frames.add(spr);
    numFrames++;
  }
  
  public void AddFrames(Sprite... sprites) {
    for (Sprite sprt : sprites) {
      AddFrame(sprt);
    }
  }
  
  public void RemoveFrame(Sprite spr) {
    frames.remove(spr);
    numFrames--;
  }
  
  public void RemoveFrames(Sprite... sprites) {
    for (Sprite sprt : sprites) {
      RemoveFrame(sprt);
    }
  }
  
  public ArrayList<Sprite> GetFrames() {
    return frames;
  }
  
  public Sprite GetFrameByIndex(int i) {
    Sprite res = null;
    for(int x = 0; x < numFrames; x++) {
      if(x == i) {
        res = frames.get(x);
        break;
      }
    }
    if(res == null) {
      this.Log("No Frame found at index " + i + " for animation: " + this.name);
    }
    return res;
  }
  
  public Sprite GetFrameBySprite(Sprite sp) {
    Sprite res = null;
    for(Sprite spr: frames) {
      if (spr == sp) {
        res = spr;
        break;
      }
    }
    if(res == null) {
      this.Log("No Frame found that matches the Sprite: " + sp + " for animation: " + this.name);
    }
    return res;
  }
  
  public Sprite GetFrameByName(String spr_name) {
    Sprite res = null;
    for(Sprite spr: frames) {
      if(spr.name == spr_name) {
        res = spr;
        break;
      }
    }
    if(res == null) {
      this.Log("No Frame found with the name: " + spr_name + " for animation: " + this.name);
    }
    return res;
  }
  
}
