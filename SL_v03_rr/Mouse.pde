void mousePressed() {

  if (bUBIactual.mouseOverButton() && pantalla == PANTALLA.UBI) {
    pantalla = PANTALLA.FYH;
  } else if (bCONT.mouseOverButton() && pantalla == PANTALLA.UBI) {
    pantalla = PANTALLA.FYH;
  }
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.FYH) {
    pantalla = PANTALLA.UBI;
  } else if (bCONT.mouseOverButton() && pantalla == PANTALLA.FYH) {
    pantalla = PANTALLA.HOME;
  } else if (bFYH.mouseOverButton() && pantalla == PANTALLA.FYH) {
    pantalla = PANTALLA.HOME;
  }
  if (bCONFIG.mouseOverButton()) {
    pantalla = PANTALLA.CONFIG;
  }
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.HOME) {
    pantalla = PANTALLA.FYH;
    
  }else if(selectedCard != -1 && pantalla == PANTALLA.HOME){
  pantalla = PANTALLA.INFO;
  }
  
  
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.CONFIG) {
    pantalla = PANTALLA.HOME;
  }
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.INFO) {
    pantalla = PANTALLA.HOME;
  } else if (next.mouseOverButton()) {
    pc.nextPage();
  } else if (prev.mouseOverButton()) {
    pc.prevPage();
  }




  if (next.mouseOverButton() && next.enabled) {
    pc.nextPage();
  } else if (prev.mouseOverButton() && prev.enabled) {
    pc.prevPage();
  } else {
    pc.checkCardSelection();
  }
}
