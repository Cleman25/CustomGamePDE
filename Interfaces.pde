public interface CollisionEvents<Collision> {
  public Collision OnCollision(Collision col);
  public Collision OnCollisionUp(Collision col);
  public Collision OnCollisionDown(Collision col);
  public Collision OnCollisionLeft(Collision col);
  public Collision OnCollisionRight(Collision col);
}
