Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
String dVal, op;
boolean left;
float l, r, result;

void setup() {
  size(250, 300);
  dVal = "0.0";
  op = "";
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
  numButtons[0] = new Button(0, 250, 100, 50, "0", true);
  numButtons[1] = new Button(0, 200, 50, 50, "1", true);
  numButtons[2] = new Button(50, 200, 50, 50, "2", true);
  numButtons[3] = new Button(100, 200, 50, 50, "3", true);
  numButtons[4] = new Button(0, 150, 50, 50, "4", true);
  numButtons[5] = new Button(50, 150, 50, 50, "5", true);
  numButtons[6] = new Button(100, 150, 50, 50, "6", true);
  numButtons[7] = new Button(0, 100, 50, 50, "7", true);
  numButtons[8] = new Button(50, 100, 50, 50, "8", true);
  numButtons[9] = new Button(100, 100, 50, 50, "9", true);
  opButtons[0] = new Button(0, 50, 150, 50, "C", false);
  opButtons[1] = new Button(100, 250, 50, 50, ".", false);
  opButtons[2] = new Button(150, 250, 50, 50, "=", false);
  opButtons[3] = new Button(150, 200, 50, 50, "+", false);
  opButtons[4] = new Button(150, 150, 50, 50, "-", false);
  opButtons[5] = new Button(150, 100, 50, 50, "×", false);
  opButtons[6] = new Button(150, 50, 50, 50, "÷", false);
  opButtons[7] = new Button(200, 250, 50, 50, "?", false);
  opButtons[8] = new Button(200, 200, 50, 50, "?", false);
  opButtons[9] = new Button(200, 150, 50, 50, "?", false);
  opButtons[10] = new Button(200, 100, 50, 50, "?", false);
  opButtons[11] = new Button(200, 50, 50, 50, "±", false);
}

void draw() {
  background(0);
  updateDisplay();
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
}

void updateDisplay() {
  fill(255);
  rect(5, 5, width-10, 40);
  fill(0);
  textSize(20);
  textAlign(RIGHT);
  text(dVal, width-16, 35);
}

void mouseReleased() {
  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length()<20) {
      handleEvent(numButtons[i].val, true);
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].hover) {
      handleEvent(opButtons[i].val, false);
    }
  }
  println("L:" + l + "R:" + r + "Op:" + op);
  println("Result:" + result + "Left:" + left);
}

void keyPressed() {
  println("Key:" + key + "KeyCode:" +keyCode);

  if (key == '0') {
    handleEvent("0", true);
  } else  if (key == '0') {
    handleEvent("0", true);
  }
}

String handleEvent(String val, boolean num) {
  if (left && num) {
    if (dVal.equals("0.0")) {
      dVal = val;
      l = float(dVal);
    } else {
      dVal += val;
      l = float(dVal);
    }
  } else if (!left && num) {
    if (dVal.equals("0.0")) {
      dVal = val;
      r = float(dVal);
    } else {
      dVal += val;
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0.0";
    op = "";
    left = true;
    l = 0.0;
    r = 0.0;
  } else if (val.equals("+")) {
    if (!left) {
      performCalc();
    } else {
      op = "+";
      left = false;
      dVal = "0.0";
    }
  } else if (val.equals("-")) {
    if (!left) {
      performCalc();
    } else {
      op = "-";
      left = false;
      dVal = "0.0";
    } 
  } else if (val.equals("×")) {
    if (!left) {
      performCalc();
    } else {
      op = "×";
      left = false;
      dVal = "0.0";
    } 
  } else if (val.equals("÷")) {
    if (!left) {
      performCalc();
    } else {
      op = "÷";
      left = false;
      dVal = "0.0";
    } 
  } else if (val.equals("=")) {
      performCalc();
    }
  return val;
}

void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("×")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  }
  l = result;
  dVal = str(result);
  left = true;
}
