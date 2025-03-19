int biomeType;

void generate_map() {
  int randV = int(random(6));

  if (randV == 0) {
    biomeType = 1;
    generate_winter();
  } else if (randV == 1) {
    biomeType = 2;
    generate_river();
  } else if (randV == 2) {
    biomeType = 3;
    generate_birch();
  } else if (randV == 3) {
    biomeType = 4;
    generate_field();
  } else if (randV == 4) {
    biomeType = 5;
    generate_steppe();
  } else if (randV == 5) {
    biomeType = 6;
    generate_pine();
  } else {
    biomeType = 0;
    generate_forest();
  }
}

void draw_map() {
  if (biomeType == 0)draw_forest();
  if (biomeType == 1)draw_winter();
  if (biomeType == 2)draw_river();
  if (biomeType == 3)draw_birch();
  if (biomeType == 4)draw_field();
  if (biomeType == 5)draw_steppe();
  if (biomeType == 6)draw_pine();
}
