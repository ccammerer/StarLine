void keyPressed() {

  if (tList.textField.selected) {
    tList.textField.keyPressed(key, (int)keyCode);
    tList.update();
    println("SI");
  }
  if (tListMini.textField.selected) {
    tListMini.textField.keyPressed(key, (int)keyCode);
    tListMini.update();
    println("SI");
  }
   if (h.selected) {
    h.keyPressed(key, (int)keyCode);
    println(h.text);
  }
   if (m.selected) {
    m.keyPressed(key, (int)keyCode);
    println("SI");
  }

  if (keyCode==LEFT && l.mouseOver()) {
    l.prevPage();
  } else if (keyCode==RIGHT && l.mouseOver()) {
    l.nextPage();
  }
  if (keyCode==LEFT && l2.mouseOver()) {
    l2.prevPage();
  } else if (keyCode==RIGHT && l2.mouseOver()) {
    l2.nextPage();
  }

  if (pantalla == PANTALLA.FYH) {
    if (keyCode==LEFT) {
      c.prevMonth();
      println("PREV MONTH");
    }
    // Anar un mes endavant
    else if (keyCode==RIGHT) {
      c.nextMonth();
      println("PREV MONTH");
    }
  }
}


void updateUbi() {
  if (ubi.selectedValue=="Alemania(Berlín)") {
    ubiNum = 1;
  } else if (ubi.selectedValue=="Bélgica(Bruselas)") {
    ubiNum = 2;
  } else if (ubi.selectedValue=="Italia(Roma)") {
    ubiNum = 3;
  } else if (ubi.selectedValue=="España(Mallorca)") {
    ubiNum = 4;
  } else if (ubi.selectedValue=="Suiza(Berna)") {
    ubiNum = 5;
  } else if (ubi.selectedValue=="Francia(París)") {
    ubiNum = 6;
  }
}
