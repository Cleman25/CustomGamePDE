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
}
