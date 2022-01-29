class Label {

  String info1, info2;

  Label(String info1, String info2) {
    this.info1 = info1;
    this.info2 = info2;
  }

  void display(int x, int y, int w, int h) {
      rect(x, y, w, h, roundness);
      pushStyle();
      fill(n);
      textSize(24);
      textMode(RIGHT);
      text(this.info1, x + margin*1.75, y + margin*0.7);
      text(this.info2, x + margin*1.75, y + margin*1.7);
      popStyle();
    }
  }
