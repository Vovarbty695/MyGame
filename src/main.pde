int[][] world;

int x, y;

int tileSize = 35;
int worldWidth = 23;
int worldHeight = 18;

color tileColor;


void setup() {
  size(800, 600);
  world = new int[worldWidth][worldHeight];
  generate_map();
  frameRate(260);
}

void draw() {
  background(255);
  draw_map();
  inventory();
  movement();
  fill(0);
  textSize(24);
  text("FPS: " + int(frameRate), 10, 30);
}
