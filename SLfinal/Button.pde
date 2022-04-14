class Button1 {

  // Propiedades de un botón:
  float x, y, w, h;  // Posición i dimensiones
  // Colores de contorno, farcimento, activo i desactivo
  color fillColor1, fillColor2, strokeColor;
  color fillColorOver, fillColorOver2, fillColorDisabled;
  String textBoto;  // Texto
  boolean enabled;  // Abilitado / desabilitado
  color base;
  color over;

  // Método Constructor
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

  // Dibuija el botón
  void display(color base, color over) {
    this.base = base;
    this.over = over;
    updateCursor();
    if (!enabled) {
      fill(fillColorDisabled);  // Color desabilitado
    } else if (mouseOverButton()) {
      fill(over);      // Color quando raton encima
    } else {
      fill(base);          // Color activo pero raton fuera
    }
    stroke(strokeColor);
    strokeWeight(2);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h, 6);    // Rectangle del botó

    // Text (color, alineació i mida)
    fill(n);
    textAlign(CENTER);
    textSize(24);
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
      cursorHand = true;
    } else {
      cursorHand = false;
    }
  }
}
