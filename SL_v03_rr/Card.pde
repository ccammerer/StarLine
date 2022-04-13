class Card {

  // Propietats
  PImage img;
  String title, place, date;
  String section;
  String description;
  int id;
  int f;

  // Dimensions
  float x, y, w, h, b;

  // Constructors

  Card() {
  }

  Card(String title, String place, String date, String section, String description) {
    this.title = title;
    this.place = place;
    this.date = date;
    this.section = section;
    this.description = description;
  }

  Card(String[] info) {
    this.title = info[0];
    this.place = info[1];
    this.date = info[2];
    this.id = Integer.valueOf(info[3]);
    this.f = Integer.valueOf(info[4]);
  }

  //Setters

  void setDimensions(float x, float y, float w, float h, float b) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.b = b;
  }

  void setImage() {
    //this.img = loadImage("fotos/"+this.title+".png");
  }

  // Dibuixa la Card

  void display(boolean selectedCard) {

    pushStyle();
    // Rectangle inferior
    if (selectedCard) {
      fill(go);
    } else if (this.mouseOver()) {
      stroke(goo);
      fill(g);
    } else {
      fill(g);
    }
    rect(x, y, w, h, b/2);

    // imatge descriptiva
    float imgW = h- b;
    float imgH = h - b;
    if (sS[this.f]!=null) {
      fill(b);
      rect(x + b/2, y + b/2, imgW, imgH, b/1.75);
      image(sS[this.f], x + b/2.25, y + b/2.25, imgW, imgH);
    } else {
      fill(50);
    }

    if (pantalla == PANTALLA.HOME) {
      // Títol
      fill(0);
      textSize(28);
      textAlign(CENTER);
      text(title, x + w/2 + imgW/2, y + h/3);
      // Lloc i data
      fill(0);
      textSize(18);
      textAlign(CENTER);
      text(place, imgW/2 + x + w/3, y + 2*h/3);

      // Secció
      fill(0);
      textSize(18);
      textAlign(CENTER);
      text(date, imgW/2 + x + 2*w/3, y + 2*h/3);
    } else {
      fill(0);
      textSize(18);
      textAlign(CENTER);
      text(title, x + w/2 + imgW/2, y + h/3);
    }





    popStyle();
  }

  boolean mouseOver() {
    return this.x < mouseX && mouseX < this.x + this.w &&
      this.y < mouseY && mouseY < this.y + this.h;
  }
}
