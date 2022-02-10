public class SceneLayer extends PGraphics implements Comparable<SceneLayer> {
  public Layer layer;
  public int index = 0;
  public String name;
  public Scene scene;
  
  public SceneLayer(String nm, int id) {
    this.name = nm;
    this.index = id;
  }
  
  public SceneLayer(Layer l, String nm, int id) {
    this(nm, id);
    this.layer = l;
  }
  
  public int compareTo(SceneLayer sl) {
    if(this.index == sl.index)
      return 0;
    else if(this.index>sl.index)
      return 1;
    else
      return -1;
  }
}
