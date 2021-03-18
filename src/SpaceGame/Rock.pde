class Rock {

  int x, y, health, speed, rad;
  color c;
  PImage rock;

  Rock(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    speed = int(random(3, 9));
    health = 75;
    rock = loadImage("rock.png");
    rad = 25;
  }

  void display() {
    image(rock,x,y);
  }

  void move() {
    y+=speed;
  }
  
  boolean laserIntersection(Laser laser) {
    float distance = dist(x,y,laser.x,laser.y);
    if(distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }

  boolean reachedBottom() {
    if (y> height+50) {
      return true;
    } else {
      return false;
    }
  }
}
