int numPantalla = 4;

void setup() {
  size(1600, 1100);
  textAlign(CENTER);
  textSize(18);
  noStroke();
}

void draw() {
  background(17, 11, 50);

  if (numPantalla==1) {
    drawPantalla01();
  } else if (numPantalla == 2) {
    drawPantalla02();
  } else if (numPantalla == 3) {
    drawPantalla03();
  } else if (numPantalla == 4) {
    drawPantalla04();
  }else if (numPantalla == 5) {
    drawPantalla05();
  }

}

void keyPressed() {
  if (keyCode==RIGHT) {
    numPantalla++;
  } else if (keyCode==LEFT) {
    numPantalla--;
  }
  numPantalla = constrain(numPantalla, 1, 5);
}
