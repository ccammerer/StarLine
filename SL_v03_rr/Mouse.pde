void mousePressed() {
  //UBI
  if (bUBIactual.mouseOverButton() && pantalla == PANTALLA.UBI) {
    pantalla = PANTALLA.FYH;
  }
  if (bCONT.mouseOverButton() && pantalla == PANTALLA.UBI) {
    pantalla = PANTALLA.FYH;
  }
  
  
  //FYH
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.FYH) {
    pantalla = PANTALLA.UBI;
  }
  if (bCONT.mouseOverButton() && pantalla == PANTALLA.FYH) {
    pantalla = PANTALLA.HOME;
  }
  if (bFYH.mouseOverButton() && pantalla == PANTALLA.FYH) {
    pantalla = PANTALLA.HOME;
  }
  
  
  //CONFIG
  if (bCONFIG.mouseOverButton()) {
    pantalla = PANTALLA.CONFIG;
  }
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.CONFIG) {
    pantalla = PANTALLA.HOME;
  }
  
  
  //HOME
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.HOME) {
    pantalla = PANTALLA.FYH;
  }
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.HOME) {
    pantalla = PANTALLA.FYH;
  }
  if (next.mouseOverButton()) {
    pc.nextPage();
  }
  if (prev.mouseOverButton()) {
    pc.prevPage();
  } else {
    pc.checkCardSelection();
  }
  if(bBACK.mouseOverButton() && pantalla == PANTALLA.HOME){
  }
  
  
  
  
  //INFO
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.INFO) {
    pantalla = PANTALLA.HOME;
  }
}
