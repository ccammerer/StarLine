void keyPressed() {

  if (tList.textField.selected) {
    tList.textField.keyPressed(key, (int)keyCode);
    tList.update();
  }
  
  if(keyCode==LEFT && l.mouseOver()){
    l.prevPage();
  }
  else if(keyCode==RIGHT && l.mouseOver()){
    l.nextPage();
  }
  if(keyCode==LEFT && l2.mouseOver()){
    l2.prevPage();
  }
  else if(keyCode==RIGHT && l2.mouseOver()){
    l2.nextPage();
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
