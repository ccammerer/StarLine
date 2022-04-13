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
  connexioBBDD();
  setGUI();
  textFont(general);
}

void draw() {
    image(fondo, 0, 0, 1600, 1100);
  

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
}
