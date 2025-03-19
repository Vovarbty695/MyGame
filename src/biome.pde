//General

color blockColor;


//FOR FOREST
color forest_grass = color(46, 214, 0);
color oak = color(69, 59, 33);
color stone = color(100);
color birch = color(250);
color water = color(130, 193, 255);

//FOR WINTER
color snow = color(255);
color tree = color(163, 134, 57);
color ice = color(191, 223, 255);

//FOR RIVER

color river_grass = color(163, 255, 120);

//FOR BIRCH

color birch_grass = color(179, 255, 117);

//FOR FIELD

color wheat = color(242, 239, 75);

//FOR STEPPE

color steppe_grass = color(236, 250, 155);

//FOR PINE
color pine_grass = color(97, 148, 86);
color pine = color(84, 52, 0);

void generate_forest() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      int randT = int(random(100));
      if (randT < 1.5)world[x][y] = 2; // stone
      else if (randT < 3)world[x][y] = 4; //water
      else if (randT < 5)world[x][y] = 3; //birch
      else if (randT < 10)world[x][y] = 1;//oak
      else if (randT < 85)world[x][y] = 0;//forest_grass
    }
  }
}

void draw_forest() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0) blockColor = forest_grass;
      else if (world[x][y] == 1) blockColor = oak;
      else if (world[x][y] == 2) blockColor = stone;
      else if (world[x][y] == 3) blockColor = birch;
      else if (world[x][y] == 4) blockColor = water;

      fill(blockColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}

void generate_winter() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      int randT = int(random(100));
      if (randT < 1.5)world[x][y] = 2; //stone
      else if (randT < 5)world[x][y] = 3;//ice
      else if (randT < 10)world[x][y] = 1;//tree
      else if (randT < 85)world[x][y] = 0;//snow
    }
  }
}

void draw_winter() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0) blockColor = snow;
      else if (world[x][y] == 1) blockColor = tree;
      else if (world[x][y] == 2) blockColor = stone;
      else if (world[x][y] == 3) blockColor = ice;

      fill(blockColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}

void generate_river() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      int randT = int(random(100));
      if (randT < 2) world[x][y] = 2; // oak
      else if (randT < 50)world[x][y] = 1;//water
      else if (randT < 70)world[x][y] = 0;//river_grass
    }
  }
}

void draw_river() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0)blockColor = river_grass;
      else if (world[x][y] == 1)blockColor = water;
      else if (world[x][y] == 2)blockColor = oak;

      fill(blockColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}

void generate_birch() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      int randT = int(random(100));
      if (randT < 2)world[x][y] = 2;//stone
      else if (randT < 5)world[x][y] = 1;//water
      else if (randT < 30)world[x][y] = 3;//birch
      else if (randT < 70)world[x][y] = 0;//birch_grass
    }
  }
}

void draw_birch() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0)blockColor = birch_grass;
      else if (world[x][y] == 1)blockColor = water;
      else if (world[x][y] == 2)blockColor = stone;
      else if (world[x][y] == 3)blockColor = birch;

      fill(blockColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}

void generate_field() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      int randT = int(random(100));
      if (randT < 5)world[x][y] = 1; // water
      else if (randT < 90)world[x][y] = 0; // wheat
    }
  }
}

void draw_field() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0)blockColor = wheat;
      else if (world[x][y] == 1)blockColor = water;

      fill(blockColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}

void generate_steppe() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      int randT = int(random(100));
      if (randT < 1)world[x][y] = 1; //stone
      else if (randT < 5)world[x][y] = 2;//water
      else if (randT < 80)world[x][y] = 0;//steppe_grass
    }
  }
}

void draw_steppe() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 2) blockColor = water;
      else if (world[x][y] == 1) blockColor = stone;
      else if (world[x][y] == 0) blockColor = steppe_grass;

      fill(blockColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}


void generate_pine() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      int randT = int(random(4));
      if(randT < 2.5) world[x][y] = 2;//stone
      else if(randT < 4)world[x][y] = 3; //water
      else if(randT < 10)world[x][y] = 1;//pine
      else if(randT < 80)world[x][y] = 0;//pine_grass
    }
  }
}

void draw_pine() {
  for (int x = 0; x < worldWidth; x++) {
    for (int y = 0; y < worldHeight; y++) {
      if (world[x][y] == 0)blockColor = pine_grass;
      else if (world[x][y] == 1)blockColor = pine;
      else if (world[x][y] == 2)blockColor = stone;
      else if (world[x][y] == 3)blockColor = water;

      fill(blockColor);
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}
