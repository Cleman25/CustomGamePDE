public class Collision extends Component {
  public ArrayList<Collider> collisions = new ArrayList<Collider>();
  public Collision() {
  }
  
  private boolean CheckCollision(Collider col) {
    Collider mycld = gameObject.GetComponent(Collider.class);
    if (col instanceof RectCollider) {
      if (mycld instanceof RectCollider) {
        return RectRectCollision(col);
      } else if (mycld instanceof CircleCollider) {
        return CircleRectCollision(col);
      }
    } else if (col instanceof CircleCollider) {
      if (mycld instanceof RectCollider) {
        return RectCircleCollision(col);
      } else if (mycld instanceof CircleCollider) {
        return CircleCircleCollision(col);
      }
    }
    return false;
  }
  
  protected boolean IsCollidingWith(Collider col) {
    boolean collided = CheckCollision(col);
    if (collided) {
      collisions.add(col);
      if (col.isTrigger) {
        gameObject.OnTriggerEnter(col);
      } else {
        gameObject.OnCollisionEnter(col);
      }
    } else {
      if(collisions.contains(col)) {
        collisions.remove(col);
        if (col.isTrigger) {
          gameObject.OnTriggerExit(col);
        }
      }
    }
    return collided;
  }
  
  private boolean CircleRectCollision(Collider col) {
    return false;
  }
  
  private boolean RectCircleCollision(Collider col) {
    return false;
  }
  
  private boolean RectRectCollision(Collider col) {
    float d1x = col.min.x - this.gameObject.GetComponent(Collider.class).max.x;
    float d1y = col.min.y - this.gameObject.GetComponent(Collider.class).max.y;
    float d2x = this.gameObject.GetComponent(Collider.class).min.x - col.max.x;
    float d2y = this.gameObject.GetComponent(Collider.class).min.y - col.max.y;
    
    if (d1x > 0.0f || d1y > 0.0f) {
      return true;
    }
    
    if (d2x > 0.0f || d2y > 0.0f) {
      return true;
    }
    return false;
  }
  
  private boolean CircleCircleCollision(Collider col) {
    Collider mycld = this.gameObject.GetComponent(Collider.class);
    float x = mycld.center.x - col.center.x;
    float y = mycld.center.y - col.center.y;
    float centerDistanceSq = x * x + y * y; // squared distance
    float radius = mycld.radius + mycld.radius;
    float radiusSq = radius * radius;
    return centerDistanceSq <= radiusSq;
  }
}
