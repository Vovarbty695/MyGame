int[] items = {0, 1, 2};
int selected = 0;

void inventory() {

  if (keyPressed) {
    if (key == '1')selected = 0;
    if (key == '2')selected = 1;
    if (key == '3')selected = 2;
  }

  if (mousePressed) {
    if (selected == 0) {
      blockColor = forest_grass;
    }
    if (selected == 1) {
      blockColor = water;
    }
    if (selected == 2) {
      blockColor = oak;
    }
  }

  fill(0);
  text("Item: " + selected, 400, 350);
}

void mousePressed() {
  int x = mouseX / tileSize;
  int y = mouseY / tileSize;

  if (x >= 0 && x < worldWidth && y >= 0 && y < worldHeight) {
    world[x][y] = selected;
  }
}
