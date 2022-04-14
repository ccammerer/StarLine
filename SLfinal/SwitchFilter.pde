class SwitchFilter {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions
  boolean enabled;  // Abilitat / desabilitat
  String name;
  PImage f, fb;

  // Mètode Constructor
  SwitchFilter(String name, float x, float y, float w, float h) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
  }

  void setImageF(PImage img, PImage img2) {
    this.f = img;
    this.fb = img2;
  }

  boolean getEnabled() {
    return enabled;
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  void setName(String n) {
    this.name = n;
  }

  void toggle() {
    this.enabled = !this.enabled;
  }


  // Dibuixa el filtre
  void display() {

    pushStyle();

    fill(0);
    textAlign(CENTER);
    textSize(24);
    text(this.name, this.x + this.w/2, this.y + this.w + 20);

    rectMode(CENTER);
    textAlign(CENTER);
    textSize(24);
    if (this.enabled) {
      image(f, x, y, w, w);
    } else {
      image(fb, x, y, w, w);
    }

    popStyle();
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.w);
  }
}
