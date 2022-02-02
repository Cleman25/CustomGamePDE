public class Transform extends Component {
  PVector position = new PVector(),
          lastPosition = new PVector(),
          velocity = new PVector(),
          acceleration = new PVector(),
          rotation = new PVector(),
          scale = new PVector(),
          gravity = new PVector(),
          delta = new PVector();
  public Transform() {
    gravity.set(0, 0.2);
    velocity.set(1,1);
    position.set(0,0);
  }
  
  public Transform(float x, float y) {
    this();
    position.set(x,y);
  }
}
