public class CircleCollider extends Collider {
  
  public PShape GetBounds() {
    return null;
  }
  
  boolean Collision(CircleCollider c) {
    float x = this.centerX - c.centerX;
    float y = this.centerY - c.centerY;
    float centerDistanceSq = x * x + y * y; // squared distance
    float radius = this.radius + this.radius;
    float radiusSq = radius * radius;
    return centerDistanceSq <= radiusSq;
}
}
