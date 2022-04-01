class TableLabel {

  int numRows;
  Label[] labels;

  TableLabel(int nr) {
    this.numRows = nr;
    this.labels = new Label[nr];

    
  }


  void setLabelsInfo(String[][] info) {
    for (int i=0; i<info.length; i++) {
      this.labels[i] = new Label(info[i][0], info[i][1]);
    }
  }

  void display(int x, int y, int w, int h) {
    pushStyle();
    textMode(LEFT);
    for (int i=0; i<labels.length; i++) {
      int px = x + ((i%2==0)? 0 : int(w/2 + margin/4));
      int py = y + (i/2)* int((h/6 + margin/4));
      if (i%2==0) {
        fill(g);
      } else {
        fill(p);
      }
      labels[i].display(px, py, w/2, h/6);
    }
    popStyle();
  }

  void display2(int x, int y, int w, int h) {
    pushStyle();
    textMode(LEFT);
    for (int i=0; i<labels.length; i++) {
      int px = x;
      int py = y + (i/2)* int((h/6 + margin/4));
      if (i%2==0) {
        fill(g);
      } else {
        fill(p);
      }
      labels[i].display2();
    }
    popStyle();
  }

  boolean checkMouseOver() {
    for (int i = 0; i <= labels.length; i++) {
      if (labels[i].mouseOver()) {
        return true;
      }
    }
    return false;
  }
}
