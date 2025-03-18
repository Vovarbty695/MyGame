boolean key_w, key_s, key_a, key_d, key_shift;
float speed = 1;
float runSpeed = 1.5;


void keyPressed() {
  if (key == 'w' || key == 'W')key_w = true;
  if (key == 's' || key == 'S')key_s = true;
  if (key == 'a' || key == 'A')key_a = true;
  if (key == 'd' || key == 'D')key_d = true;
  if (keyCode == SHIFT)key_shift = true;
}


void keyReleased() {
  if (key == 'w' || key == 'W')key_w = false;
  if (key == 's' || key == 'S')key_s = false;
  if (key == 'a' || key == 'A')key_a = false;
  if (key == 'd' || key == 'D')key_d = false;
  if (keyCode == SHIFT)key_shift = false;
}


void movement() {
  
  float currentSpeed = key_shift ? runSpeed : speed;

  
  if (key_w) y -= currentSpeed;
  if (key_s) y += currentSpeed;
  if (key_a) x -= currentSpeed;
  if (key_d) x += currentSpeed;

  fill(230, 0, 0);
  rect(x, y, tileSize/1.5, tileSize/1.5);
}
