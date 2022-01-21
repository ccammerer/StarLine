/*
  void display(String name, float x, float y, float w, float h) {
 for (int i=0; i<buttons.length; i++) {
 int px =int(rectObjectsX);
 int py = int(rectObjectsY + rectObjectsSizeY + (margin/4)*i);
 if (i%2== 0) {
 buttons[i].displayB(name, px, py, w, h);
 } else {
 buttons[i].displayP(name, px, py, w, h);
 }
 }
 }
 }*/

class ButtonList {

  int numBut;
  Button1[] buttons;

  ButtonList(int nb) {
    this.numBut = nb;
    this.buttons = new Button1[nb];
  }

  void setButtonsInfo(String[][] infoB) {
   for (int i=0; i<infoB.length; i++) {
   this.buttons[i] = new Button1("",rectObjectsX, rectObjectsY + rectObjectsSizeY*i + (margin/4)*i, rectObjectsSizeX, rectObjectsSizeY);
   }
   }

  void display(int x, int y, int w, int h) {
    for (int i=0; i<buttons.length; i++) {
      int py = y + (i/2)* (h/6 +5);
      buttons[i].display(b,bo);
    }
  }
}
