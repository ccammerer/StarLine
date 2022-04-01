enum PANTALLA {
  UBI, FYH, HOME, INFO, CONFIG
};

PANTALLA pantalla = PANTALLA.HOME;

void setup() {
  size(1600, 1100);
  frameRate(20);
  textAlign(CENTER);
  textSize(18);
  strokeWeight(3);
  setGUI();
  textFont(general);
}

void draw() {
  background(g);

  switch(pantalla) {
  case UBI:
    drawPantallaUBI();
    break;
  case FYH:
    drawPantallaFYH();
    break;
  case HOME:
    drawPantallaHOME();
    break;
  case INFO:
    drawPantallaINFO();
    break;
  case CONFIG:
    drawPantallaCONFIG();
    break;
    
  }
  updateCursor();
  pushStyle();
  fill(255);
  textSize(24);
  textAlign(RIGHT);
  text("PANTALLA ", width-50, 60);
  text("X: "+mouseX+", Y:"+mouseY, width-50, 100);
  popStyle();
}
