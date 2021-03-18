Spaceship s1;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
ArrayList<Star> stars;
Timer timer;
int score;

void setup() {
  size(400, 400);
  s1 = new Spaceship();
  lasers = new ArrayList();
  rocks = new ArrayList();
  stars = new ArrayList();
  timer = new Timer(int(random(500, 3000)));
  score = 0;
  timer.start();
}

void draw() {
  background(0);
  stars.add(new Star(int(random(width)), int(random(height))));
  for (int i = 0; i < stars.size(); i++) {
    Star star = stars.get(i);
    star.display();
    star.move();
    if (star.reachedBottom()) {
      stars.remove(star);
    }
  }

  if (timer.isFinished()) {
    rocks.add(new Rock(int(random(width)), -50, color(128)));
    timer.start();
  }

  for (int i = 0; i < rocks.size(); i++) {
    Rock rock = rocks.get(i);
    rock.display();
    rock.move();
    if(s1.rockIntersection(rock)){
      s1.health-=rock.health;
      rocks.remove(rock);
      score+=25;
    }
    if (rock.reachedBottom()) {
      rocks.remove(rock);
    }
  }

  for (int i = 0; i <lasers.size(); i++) {
    Laser laser = lasers.get(i);
    laser.display();
    laser.fire();
    for (int j = 0; j < rocks.size(); j++) {
      Rock rock = rocks.get(j);
      if(rock.laserIntersection(laser)) {
        rock.health-=25;
        lasers.remove(laser);
        if(rock.health<1){
          rocks.remove(rock);
          score+=rock.health;
        }
      }
    }
    
    if (laser.reachedTop()) {
      lasers.remove(laser);
    }
  }
  infoPanel();
  s1.display(mouseX, mouseY);
}

void mousePressed() {
  if (s1.ammo > 0) {
    lasers.add(new Laser(mouseX, mouseY, color(255, 0, 0)));
    s1.ammo--;
  }
}

void keyPressed() {
}

void infoPanel() {
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(255, 128);
  text("Health:" + s1.health, 20, height-20);
  text("Ammo:" + s1.ammo, 100, height-20);
  text("Lives:" + s1.lives, 200, height-20);
  text("Score:" + score, 300, height-20);
}
