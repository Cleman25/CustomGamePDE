public class Platform extends GameObject {
  Sprite sprite;
  public Platform() {
  }
  
  public Platform(Sprite sprite) {
    this();
    this.sprite = sprite;
  }
  
  public Platform(Sprite sprite, PVector size){
    this(sprite);
  }
}
