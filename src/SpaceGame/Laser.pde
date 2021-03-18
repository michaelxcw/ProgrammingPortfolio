class Laser {
  
  int x,y,speed, rad;
  color c;
  
  Laser(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    speed = 6;
    rad = 3;
  }
  
  void display() {
    rectMode(CENTER);
    noStroke();
    fill(c);
    rect(x,y,3,6);
  }
  
  void fire() {
    y-=speed;
  }
  
  boolean reachedTop() {
    if(y<-10) {
      return true;
    } else {
      return false;
    }
  }
}
