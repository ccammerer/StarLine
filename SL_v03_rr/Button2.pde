class Button1 {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions
  // Colors de contorn, farciment, actiu i desactiu
  color fillColor1, fillColor2, strokeColor;
  color fillColorOver, fillColorOver2, fillColorDisabled;
  String textBoto;  // Text
  boolean enabled;  // Abilitat / desabilitat
  color base;
  color over;

  // Mètode Constructor
  Button1(String text, float x, float y, float w, float h) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuixa el botó
  void display(color base, color over) {
    this.base = base;
    this.over = over;

    if (!enabled) {
      fill(fillColorDisabled);  // Color desabilitat
    } else if (mouseOverButton()) {
      fill(over);      // Color quan ratolí a sobre
    } else {
      fill(base);          // Color actiu però ratolí fora
    }
    stroke(strokeColor);
    strokeWeight(2);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h, 10);    // Rectangle del botó

    // Text (color, alineació i mida)
    fill(b);
    textAlign(CENTER);
    textSize(20);
    text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }

  void updateCursor() {

    if (mouseOverButton()) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  }
}
