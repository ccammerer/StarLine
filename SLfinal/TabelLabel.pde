class TableLabel {

  int numRows;
  Label[] labels;
  int f;

  TableLabel(int nr) {
    this.numRows = nr;
    this.labels = new Label[nr];
  }


  /*void setLabelsInfo(String[][] info, PImage foto) {
   this.foto = foto;
   for (int i=0; i<info.length; i++) {
   this.labels[i] = new Label(info[i][0], info[i][1], foto);
   }
   }*/

  void setLabelsInfo(String[] info, String[] titols, int f) {
    this.f = f;
    for (int i=0; i<14; i++) {
      this.labels[i] = new Label(titols[i], info[i], f);
    }
  }

  void display(int x, int y, int w, int h) {
    pushStyle();
    textAlign(LEFT);
    for (int i=0; i<14; i++) {
      int px = x + ((i%2==0)? 0 : int(w/2 + margin/4));
      int py = y + (i/2)* int((h/6 + margin/4));
      if (i%2==0) {
        fill(g);
      } else {
        fill(p);
      }
      //if (labels[i]!=null) {
        labels[i].display(px, py, w/2, h/6);
      //}
    }
    popStyle();
  }

  void display2(int x, int y, int w, int h) {
    pushStyle();
    textAlign(LEFT);
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
