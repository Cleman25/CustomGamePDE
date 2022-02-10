abstract class Collider extends Component {
  public boolean isTrigger, useGravity, moveable, passThroughLeft, passThroughRight, passThroughTop, passThroughBottom;
  public float mass;
  public abstract PShape GetBounds();
  float x, y, radius;
  PVector min, max, center;
  
  public boolean Collision(Collider c) {
    float d1x = c.min.x - this.max.x;
    float d1y = c.min.y - this.max.y;
    float d2x = this.min.x - c.max.x;
    float d2y = this.min.y - c.max.y;
    
    if (d1x > 0.0f || d1y > 0.0f)
      return false;
      
    if (d2x > 0.0f || d2y > 0.0f)
      return false;
      
    return true;
  }
  
  PVector Support(PVector[] vertices, int count, PVector d) {
    float highest = -Float.MAX_VALUE;
    PVector support = new PVector();
    for(int i = 0; i < count; i++) {
      PVector v = vertices[i];
      float dot = v.dot(d);
      if(dot > highest) {
        highest = dot;
        support = v;
      }
    }
    return support;
  }
  
  public void Init() {
    super.Init();
    dimension();
  }
  
  public void Update() {
    dimension();
  }
  
  protected void HandleCollision(Collider col) {
    
  }
  
  protected void dimension() {
    Transform transform = gameObject.GetComponent(Transform.class);
    min.set(transform.position.x, transform.position.y);
    max.set(min.x+width, min.y+width);
    center.set((min.x+max.x)/2, (min.y+max.y)/2);
  }
}
