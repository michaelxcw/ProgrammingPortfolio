class Button {
  // Member Variables
  int x, y, w, h;
  String val;
  boolean hover, isNumber;
  color c1, c2, c3, c4;

  // Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, boolean isNumber) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    val = tempVal;
    hover = false;
    c1 = #000000;
    c2 = #404040;
    c3 = #FF6400;
    c4 = #CE4F00;
    this.isNumber = isNumber;
  }

  // Display the Button
  void display() {
    noStroke();
    if (isNumber == true) {
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    } else {
      if (hover) {
        fill(c3);
      } else {
        fill(c4);
      }
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    }
  }

  // Edge Detection
  void hover() {
    hover = mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;
  }
}
