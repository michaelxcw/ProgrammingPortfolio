class Spaceship {
  int x, y, health, lives, ammo, rad;
  PImage spaceship;
  
  Spaceship() {
    x = 0;
    y = 0;
    health = 100;
    lives = 3;
    ammo = 1000;
    rad = 25;
    spaceship = loadImage("spaceship.png");
  }
  
  void display(int x, int y) {
    fill(128,0);
    noStroke();
    this.x = x;
    this.y = y;
    rectMode(CENTER);
    stroke(80);
    rect(x-15, y+10, 7, 7);
    rect(x+15, y+10, 7, 7);
    ellipse(x, y, 20, 70);
    image(spaceship,x-50,y-50);
  }
  
  boolean rockIntersection(Rock rock) {
    float distance = dist(x,y,rock.x,rock.y);
    if(distance < rad + rock.rad) {
      return true;
    } else {
      return false;
    }
  }
}
