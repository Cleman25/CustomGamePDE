public class CircleCollider extends Collider {
  
  public PShape GetBounds() {
    return null;
  }
<<<<<<< HEAD
=======
  
  boolean Collision(CircleCollider c) {
    float x = this.centerX - c.centerX;
    float y = this.centerY - c.centerY;
    float centerDistanceSq = x * x + y * y; // squared distance
    float radius = this.radius + this.radius;
    float radiusSq = radius * radius;
    return centerDistanceSq <= radiusSq;
}
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
}
