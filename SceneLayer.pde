public class SceneLayer extends PGraphics implements Comparable<SceneLayer> {
  public Layer layer;
  public int index = 0;
  public String name;
  public boolean hidden;
  public Scene scene;
  public color background = color(0,0,0,0);
  
  public SceneLayer() {
    createGraphics(width, height);
  }
  
  public SceneLayer(String nm, int id) {
    this();
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
