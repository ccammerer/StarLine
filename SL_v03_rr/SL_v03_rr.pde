//int numPantalla = 2;


enum PANTALLA {
  UBI, FYH, HOME, INFO, CONFIG
};

PANTALLA pantalla = PANTALLA.HOME;

void setup() {
  size(1600, 1100);
  textAlign(CENTER);
  textSize(18);
  noStroke();
  setGUI();
}

void draw() {
  background(17, 11, 50);

  /*if (numPantalla==1) {
   drawPantalla01();
   } else if (numPantalla == 2) {
   drawPantalla02();
   } else if (numPantalla == 3) {
   drawPantalla03();
   } else if (numPantalla == 4) {
   drawPantalla04();
   }*/

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


  pushStyle();
  fill(255);
  textSize(36);
  textAlign(RIGHT);
  text("PANTALLA ", width-50, 60);
  text("X: "+mouseX+", Y:"+mouseY, width-50, 100);
  popStyle();
  

}
