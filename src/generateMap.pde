int biomeType;

void draw_map() {
  if (biomeType == 0)draw_forest();
  if (biomeType == 1)draw_winter();
}


void generate_map() {
  float randV = int(random(1));

  if (randV < 0.3) {
    biomeType = 0;
    generate_forest();
  }
  else{
    biomeType = 1;
    generate_winter();
  }
}
