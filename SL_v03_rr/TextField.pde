class TextField {

  // Propietats del camp de text
  int x, y, h, w;

  int borderWeight = 3;

  // Text del camp
  String text = "";
  int textLength = 0;
  int textSize = 28;
  boolean selected = false;

  // Constructor
  TextField(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  // Dibuixa el Camp de Text
  void display() {
    pushStyle();
    if (selected) {
      fill(p);
      stroke(bo);
    } else if (mouseOverTextField()) {
      fill(p);
      stroke(go);
    } else {
      fill(p);
      stroke(n);
    }

    strokeWeight(borderWeight);
    rect(x, y, w, h, roundness);
    fill(n);
    textSize(textSize);
    textAlign(LEFT);
    text(text, x + margin/4, y + textSize + margin/12);
    if (!selected && !mouseOverTextField()){
    txt = 0;
    }
    //textCursor();
    popStyle();
    
    /*text1 = h.text;
    //text2 = m.text;
    println(text1);*/
  }

  // Afegeix, lleva el text que es tecleja
  void keyPressed(char key, int keyCode) {
    if (selected) {
      if (keyCode == (int)BACKSPACE) {
        removeText();
      } else if (keyCode == 32) {
        addText(' '); // SPACE
      } else {

        boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
        boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
        boolean isKeyNumber = (key >= '0' && key <= '9');

        if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
          addText(key);
        }
      }
    }
  }

  // Afegeix la lletra c al final del text
  void addText(char c) {
    if (textWidth(this.text + c) < 2*w) {
      this.text += c;
      textLength++;
      txt = txt + 23.3333;
    }
  }

  // Lleva la darrera lletra del text
  void removeText() {
    if (textLength - 1 >= 0) {
      text = text.substring(0, textLength - 1);
      txt = txt - 23.3333;
      textLength--;
    }
  }

  // Indica si el ratolí està sobre el camp de text
  boolean mouseOverTextField() {
    if (mouseX >= this.x && mouseX <= this.x + this.w) {
      if (mouseY >= this.y && mouseY <= this.y + this.h) {
        return true;
      }
    }
    return false;
  }

  // Selecciona el camp de text si pitjam a sobre
  // Deselecciona el camp de text si pitjam a fora
  void isPressed() {
    if (mouseOverTextField() && mousePressed) {
      selected = true;
    } else {
      selected = false;
    }
  }

  /*void textCursor() {
    int m = millis();
    
    if (selected && (m%2 == 0)) {
      pushStyle();
      stroke(n);
      line(x+5 +txt, y+5, x+5+txt, y+30);
      popStyle();
    }
  }*/
}
