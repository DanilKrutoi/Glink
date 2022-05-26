color fillVal = color(126);
int x = 0; 
int y = 0;
void setup(){
  size(1600, 1600);
  background(#248749);
  frameRate(24);  
}
void draw() {
  fill(fillVal);
  rect(x, y, 50, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y -= 10;
    }
    if (keyCode == DOWN) {
      y += 10;
    }
    if (keyCode == LEFT) {
      x -= 10;
    }
    if (keyCode == RIGHT) {
      x += 10;
    }
   
}
}
