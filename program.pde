int x = 700;
int y = 600;
color fillVal = color(126);
float angle1 = 0;



Controller keyboardInput;

void keyPressed() {
  keyboardInput.press(keyCode);
}

void keyReleased() {
  keyboardInput.release(keyCode);
}
/*
void mouseClicked() {
  Orb newOrb = new Orb(mouseX, mouseY, 5, 0, 30);
  orbList.add(newOrb);

}
*/
void setup() {  
  size(1400, 1000);
  background(#248749);
  keyboardInput = new Controller();
}

//Visualize which keys are being held down...
void draw() {
  background(#248749);

  //check if the button P1_LEFT is being pressed:
  if (keyboardInput.isPressed(Controller.P1_LEFT)) {
    x -= 10;
  }
  //check if the button P1_RIGHT is being pressed:
  if (keyboardInput.isPressed(Controller.P1_RIGHT)) {
    x+=10;
  }
  if (keyboardInput.isPressed(Controller.P1_UP)) {
    y -= 10;
  }
  if (keyboardInput.isPressed(Controller.P1_DOWN)) {
    y += 10;
  }  
  if(x > 1380){x = -30;}
  if(x < -30){x = 1380;}
  if(y > 980){y = -30;}
  if(y < -30){y = 980;}
  float dx = mouseX - x;
  float dy = mouseY - y;
  float angle1 = atan2(dy, dx);
  
  pushMatrix();
  translate(x + 25, y + 25);
  rotate(angle1 - 25);
  line(0, 0, 100, 0);
  popMatrix();
  
  fill(fillVal);
  rect(x, y, 50, 50);
}

class Controller {
  static final int P1_LEFT = 0;
  static final int P1_RIGHT = 1;
  static final int P1_UP = 2;
  static final int P1_DOWN = 3;

  boolean [] inputs;

  public Controller() {
    inputs = new boolean[4];//2 valid buttons
  }

  /**@param code: a valid constant e.g. P1_LEFT
   */
  boolean isPressed(int code) {
    return inputs[code];
  }

  void press(int code) {
    println(code);
    if (code == 'A')
      inputs[P1_LEFT] = true;
    if (code == 'D')
      inputs[P1_RIGHT] = true;
    if (code == 'W')
      inputs[P1_UP] = true;
    if (code == 'S')
      inputs[P1_DOWN] = true;
  }
  void release(int code) {
    if (code == 'A')
      inputs[P1_LEFT] = false;
    if (code == 'D')
      inputs[P1_RIGHT] = false;
    if (code == 'W')
      inputs[P1_UP] = false;
    if (code == 'S')
      inputs[P1_DOWN] = false;
  }
}
