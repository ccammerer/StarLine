class Label {

  String info1, info2;
  PImage foto;
  float x, y, w, h;
  int f;

  Label(String info1, String info2,int f) {
    this.info1 = info1;
    this.info2 = info2;
    this.f = f;
  }

  void setDimensions(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display(int x, int y, int w, int h) {

    pushStyle();
    rectMode(CORNER);
    rect(x, y, w, h, roundness);
    image(sS[this.f], bigImgX, bigImgY+margin, bigImgSizeX, bigImgSizeX);
    fill(n);
    textSize(24);
    textAlign(CENTER);
    text(this.info1, x + w/2, y + margin*0.7);
    if (this.info2!=null) {
      text(this.info2, x + w/2, y + margin*1.7);
    }
    popStyle();
  }

  void display2() {
    pushStyle();
    rectMode(CORNER);
    rect(x, y, w, h, roundness);
    fill(n);
    textSize(24);
    textAlign(CENTER);
    text(this.info1, x + w/2, y + margin*0.7);
    text(this.info2, x + w/2, y + margin*1.7);
    popStyle();
  }

  boolean mouseOver() {
    return this.x < mouseX && mouseX < this.x + this.w &&
      this.y < mouseY && mouseY < this.y + this.h;
  }
}
