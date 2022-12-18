<<<<<<< HEAD
public interface CollisionEvents {
  public void OnCollision(Collider col);
  public void OnCollisionUp(Collider col);
  public void OnCollisionDown(Collider col);
  public void OnCollisionLeft(Collider col);
  public void OnCollisionRight(Collider col);
  public void OnTriggerEnter(Collider col);
  public void OnTriggerExit(Collider col);
  public void OnCollisionEnter(Collider col);
  public void OnCollisionExit(Collider col);
=======
public interface CollisionEvents<Collision> {
  public Collision OnCollision(Collision col);
  public Collision OnCollisionUp(Collision col);
  public Collision OnCollisionDown(Collision col);
  public Collision OnCollisionLeft(Collision col);
  public Collision OnCollisionRight(Collision col);
>>>>>>> 95f78d881a5aea8163ac29e68dd3323392cdb399
}
