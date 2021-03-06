
class Select {

  float x, y, w, h;          // Posició i dimensions
  String[] texts;            // Valors possibles
  String selectedValue;      // Valor Seleccionat
  
  boolean collapsed = true;  // Plegat / Desplegat
  boolean enabled;           // Abilitat / desabilitat

  float lineSpace = 15;      // Espai entre línies

  Select(String[] texts, float x, float y, float w, float h) {

    this.texts = texts;
    this.selectedValue = "";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.collapsed = true;
  }

  void display() {
    pushStyle();
    stroke(0);
    strokeWeight(2);
    textAlign(CORNER);
    if (!this.collapsed) {

      fill(go);
      stroke(0);
      rect(x, y+h-5, w, (h + lineSpace)*texts.length, roundness);

      for (int i=0; i<texts.length; i++) {

        if (i== clickedOption()) {
          pushStyle();
          fill(gc);
          noStroke();
          rect(x+4, y+4 + h + (h + lineSpace)*i - 2, w -8, h + lineSpace - 8, roundness);
          popStyle();
        }

        fill(0);
        textSize(18);
        text(texts[i], x + 5, y + h + 25 + (h + lineSpace)*i);
      }
    }
    fill(g);
    rect(x, y, w, h, margin/5.5);

    fill(go);
    rect(x + w - 25, y, 25, h, margin/6);

    fill(0);
    stroke(0);
    triangle(x + w - 20, y+5, x + w - 12.5, y + 14, x + w - 5, y+5);

    fill(0);
    textSize(18);
    text(selectedValue, x + 5, y + 28);

    
    popStyle();
    selectedValueUbi = selectedValue;
  }

  void setCollapsed(boolean b) {
    this.collapsed = b;
  }

  void toggle() {
    this.collapsed = !this.collapsed;
  }


  void update() {
    int option = clickedOption();
    selectedValue = texts[option];
  }

  // Indica si el cursor està sobre el select
  boolean mouseOverSelect() {
    if (this.collapsed) {
      return (mouseX >= x) &&
        (mouseX <= x + w) &&
        (mouseY >= y) &&
        (mouseY <= y + h);
    } else {
      return (mouseX>= x) &&
        (mouseX<= x + w) &&
        (mouseY>= y) &&
        (mouseY<= y + h + (h + lineSpace)*texts.length);
    }
  }

  int clickedOption() {
    int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*texts.length,
      0, texts.length);
    return i;
  }
}
