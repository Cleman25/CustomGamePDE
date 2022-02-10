public class Map {
  private ArrayList<Sprite> platforms = new ArrayList<Sprite>();
  public int[] toplayer = null,
               bottomlayer = null,
               rates = {0,1,2},
               generationRatios = {60, 30, 10};
  public int[][] level;
  public int generationMax = 100;
  public Map() {
  }
  
  public Map(ArrayList<Sprite> platforms) {
    this.platforms = platforms;
  }
  
  public void Init() {
  }
  
  public void Generate(PVector size) {
    int x = (int) (width/size.x);
    int y = (int) (height/size.y);
    int[][] map = new int[x][y];
    for(int i = 0; i < map.length; i++) {
      for(int j = 0; j < map[i].length; j++) {
        int val = round(random(0, generationMax));
        if (i <= .6 * map.length) {
          map[i][j] = val < 60 ? 0 : 1;
        } else if (i >= .9 * map.length) {
          map[i][j] = val < 60 ? 1 : 0;
        } else {
          map[i][j] = val < 30 ? 0 : 1;
        }
      }
    }
    level = map;
    LogManager.Instance().Log("Sucessfully generated Map Level");
  }
  
  public void Fill() {
    if (level != null) {
      for(int i = 0; i < level.length; i++) {
        for(int j = 0; j < level[i].length; j++) {
          if(level[i][j] == 0) {
            
          }
        }
      }
    } else {
      LogManager.Instance().Log("Map level needs to be generated first. Run map.Generate(<PVector size>);");
    }
  }
}
