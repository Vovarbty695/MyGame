int[][] world;

int x, y;

int tileSize = 35;
int worldWidth = 23;
int worldHeight = 18;

color tileColor;
color grass = color(0, 255, 0);
color water = color(0, 0, 255);
color dirt = color(140, 94, 36);
color tree1 = color(0, 100, 0);
color tree2 = color(255);

void setup() {
  size(800, 600);
  world = new int[worldWidth][worldHeight];
  generate_forest();
  frameRate(260);
}

void draw() {
  background(255);
  draw_forest();
  inventory();
  movement();
  fill(0);
  textSize(24);
  text("FPS: " + int(frameRate), 10, 30);
}
