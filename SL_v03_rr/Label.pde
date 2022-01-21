class Label {

  String info1, info2;

  Label(String info1, String info2) {
    this.info1 = info1;
    this.info2 = info2;
  }

  void display(int x, int y, int w, int h) {
      
      noStroke();
      rect(x, y, w, h, roundness);
      
      pushStyle();
      fill(0);
      textSize(24);
      text(this.info1, x + margin*1.1, y + margin*0.75);
      text(this.info2, x + margin*1.1, y + margin*1.75);
      popStyle();
    }
  }
