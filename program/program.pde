Game theGame = new Game();
ArrayList<GoodBullet> daBullets = new ArrayList<GoodBullet>();
ArrayList<BadBullet> daBadBullets = new ArrayList<BadBullet>();
ArrayList<Enemy> actors = new ArrayList<Enemy>();
Glorp mainMan = new Glorp(601, 500);
int timer;
float angle = 0;
PImage img1, img2, img3, img4;
int[][] hi = {
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1} 

};
board ello = new board(hi);


Controller keyboardInput;
void keyPressed() {
  keyboardInput.press(keyCode);
}

void keyReleased() {
  keyboardInput.release(keyCode);
}

void mousePressed() {
  mainMan.shoot();
}

void setup() {  
  Glick bambino = new Glick(1000000, 100000000);
  size(1281, 800);
  background(#248749);
  keyboardInput = new Controller();
  img1 = loadImage("water1.png");
  img2 = loadImage("darkGrass1.png");
  img3 = loadImage("grass1.png");
  img4 = loadImage("road1.png");
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

  boolean isPressed(int code) {
    return inputs[code];
  }

  void press(int code) {
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



class board {
  int[][] daBoard;
  public board(int[][] bkrnd) { 
    daBoard = bkrnd;
  }
  public int getChord(int daX, int daY) {
    return daBoard[daY][daX];
  }
}


class Actor {
  int x, y;
  boolean isDead;
  int health;
  public Actor(int daX, int daY) {
    x = daX;
    y = daY;
    isDead = false;
  }

  public int getX() {
    return x;
  }
  public int getY() {
    return y;
  }  
  public void die() {
    x = 100000;
    y = 100000;
    actors.remove(this);
  }
}

class Glorp extends Actor {
  int points;
  public Glorp(int daX, int daY) {
    super(daX, daY);
    points = 0;
    health = 10;
  }
  public void moveRight() {
    if (x < 1220) 
      this.x += 10;
  }
  public void moveLeft() {
    if (x > 20)
      this.x -= 10;
  }
  public void moveUp() {
    if (y > 20)
      this.y -= 10;
  }
  public void moveDown() {
    if (y < 740)
      this.y += 10;
  }
  public void shoot() {
    GoodBullet newBullet = new GoodBullet(mainMan);
    daBullets.add(newBullet);
  }
  public boolean detectCollision() {
    for (BadBullet i : daBadBullets) {
      if (i.x > x - 20 && i.x < x + 20 && i.y > y - 20 && i.y < y + 20) {
        return true;
      }
    }
    return false;
  }
  public void touchBadGuy() {
    for (Enemy i : actors) {
      float distance = dist(x, y, i.x, i.y);
      if (distance < 60) {
        health --;
        actors.remove(i);
        break;
      }
    }
    if (health <= 0) {
      isDead = true;
    }
  }
}
class Enemy extends Actor {
  int agression;
  public Enemy(int daX, int daY) {
    super(daX, daY);
  }
  public void move() {
    float dx = mainMan.getX() + 20;
    float dy = mainMan.getY() + 20;
    float angle = atan2(dy - y, dx-x);
    float newX = cos(angle) * 2;
    float newY = sin(angle) * 2;
    x += newX;
    y += newY;
  }
  public boolean checkAlive() {
    for (GoodBullet i : daBullets) {
      float distance = dist(x, y, i.x, i.y);
      if (distance < 60) {
        daBullets.remove(i);
        return true;
      }
    }
    return false;
  }
}
class Glick extends Enemy {
  public Glick(int daX, int daY) {
    super(daX, daY);
    agression = 1;
  }
}
class Glack extends Enemy {
  public Glack(int daX, int daY) {
    super(daX, daY);
    agression = 2;
  }
  public void move() {
  }
}
class Gleck extends Enemy {
  public Gleck(int daX, int daY) {
    super( daX, daY);
    agression = 3;
  }
  public void move() {
  }
}
class Glock extends Enemy {
  public Glock(int daX, int daY) {
    super(daX, daY);
    agression = 0;
  }
  public void move() {
  }
  public void shoot() {
  }
}
class Gluck extends Enemy {
  public Gluck(int daX, int daY) {
    super(daX, daY);
    agression = 1;
  }
  public void move() {
  }
  //alot of health
}

class Projectile {
  float x, y, size;
  public Projectile(int a, int b) {
    x = a;
    y = b;
  }
}
class GoodBullet extends Projectile {
  float dx, dy;

  public GoodBullet(Glorp daMan) {
    super(daMan.getX() + 25, daMan.getY() + 25);    
    size = 10;
    dx = mouseX - daMan.getX();
    dy = mouseY - daMan.getY();
  }
  public void move() {
    ellipse(x, y, 21, 20);
    float distance = sqrt(((dx*dx) + (dy*dy)));
    x += dx / distance * 20;
    y += dy / distance * 20;
  }
}
class BadBullet extends Projectile {
  float dx, dy;

  public BadBullet(Enemy daMan, Glorp daHomie) {
    super(daMan.getX() + 25, daMan.getY() + 25);    
    size = 10;
    dx = daHomie.getX();
    dy = daHomie.getY();
  }
  public void move() {
    ellipse(x, y, 21, 20);
    float distance = sqrt(((dx*dx) + (dy*dy)));
    x += dx / distance * 20;
    y += dy / distance * 20;
  }
}



class Game {

  boolean started;

  public void drawBackground() {
    for (int i = 0; i < 25; i++) {
      for (int j = 0; j < 60; j++) {
        if (ello.getChord(i, j) == 0) {
          image(img1, j*32, i*32);
        } else if (ello.getChord(i, j) == 1) {
          image(img2, j*32, i *32);
        } else if (ello.getChord(i, j) == 2) {
          image(img3, j*32, i *32);
        } else if (ello.getChord(i, j) == 3) {
          image(img4, j*32, i *32);
        }
      }
    }
  }
  public void run() {
  }
  public void displayStats() {
    textSize(15);
    fill(0);
    text("HP: " + mainMan.health, mainMan.getX(), mainMan.getY() - 5);
    text("Points: " + mainMan.points, 1201, 20);
  }
  public void displayMenu() {
  }
  public void displayGameOver() {
  }
  public void displayChars() {

    for (Enemy b : actors) {
      fill(color(226));
      ellipse(b.x, b.y, 40, 40);
      if (b.checkAlive()) {
        actors.remove(b);
        mainMan.points ++;
        break;
      }
      b.move();
    }
    fill(color(126));
    rect(mainMan.getX(), mainMan.getY(), 51, 50);
  }
  public void displayBullets() {
    for (GoodBullet o : daBullets) {
      o.move();
    }
  }
}

void draw() {
  mainMan.touchBadGuy();
  if (keyboardInput.isPressed(Controller.P1_LEFT)) {
    mainMan.moveLeft();
  }
  //check if the button P1_RIGHT is being pressed:
  if (keyboardInput.isPressed(Controller.P1_RIGHT)) {
    mainMan.moveRight();
  }
  if (keyboardInput.isPressed(Controller.P1_UP)) {
    mainMan.moveUp();
  }
  if (keyboardInput.isPressed(Controller.P1_DOWN)) {
    mainMan.moveDown();
  } 
  theGame.drawBackground();
  theGame.displayBullets();
  theGame.displayChars();
  if (millis() - timer >= 300) {
    //println(random(255));
    //shoot
    if (int(random(0, 2)) == 0) {
      Glick glickarino = new Glick(int(random(0, 300)), int(random(0, 800)));
      actors.add(glickarino);
    } else {
      Glick glickarino = new Glick(int(random(1000, 1300)), int(random(0, 800)));  
      actors.add(glickarino);
    }

    timer = millis();
  }
  theGame.displayStats();
  if (mainMan.isDead == true) {
    background(#248749);
    textSize(100);
    fill(255);
    text("game over", 500, 500);
  }
  if (mainMan.points >= 100 && mainMan.isDead != true){
    background(#248749);
    textSize(100);
    fill(255);
    text("You win!", 500, 500);
  }
  
}
