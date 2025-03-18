//FOR FOREST
color forest_grass = color(46, 214, 0);
color oak = color(69, 59, 33);
color stone = color(100);
color birch = color(250);

//FOR WINTER
color snow = color(255);
color tree = color(163, 134, 57);

void generate_forest() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      float randT = int(random(1));
      if (randT < 0.85)world[x][y] = 0;
      else if (randT < 0.90)world[x][y] = 1;
      else if (randT < 0.95)world[x][y] = 2;
      else if (randT < 0.1)world[x][y] = 3;
    }
  }
}

void draw_forest() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0) tileColor = forest_grass;
      else if (world[x][y] == 1) tileColor = oak;
      else if (world[x][y] == 2) tileColor = stone;
      else if (world[x][y] == 3) tileColor = birch;

      fill(tileColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}

void generate_winter() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      float randT = int(random(1));
      if (randT < 0.85)world[x][y] = 0;
      else if (randT < 0.90)world[x][y] = 1;
      else if (randT < 0.95)world[x][y] = 2;
    }
  }
}

void draw_winter() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0) tileColor = snow;
      else if (world[x][y] == 1) tileColor = tree;
      else if (world[x][y] == 2) tileColor = stone;

      fill(tileColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}
