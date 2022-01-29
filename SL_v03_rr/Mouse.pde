void mousePressed() {
  //UBI
  if (bUBIactual.mouseOverButton() && pantalla == PANTALLA.UBI && pantalla != PANTALLA.FYH) {
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
  if (next.mouseOverButton() && pantalla == PANTALLA.HOME) {
    pc.nextPage();
  }
  if (prev.mouseOverButton() && pantalla == PANTALLA.HOME) {
    pc.prevPage();
  } else {
    pc.checkCardSelection();
  }
  if (selected && mouseOverCards && pantalla == PANTALLA.HOME) {
    pantalla = PANTALLA.INFO;
  }
  
  
  

  // Pitjam sobre el botó de TRIA
  if (search.mouseOverButton() && search.enabled) {
    selectedText = tList.selectedValue;
  }

  // Pitjam damunt el textList
  tList.textField.isPressed();
  tList.buttonPressed();


  //INFO
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.INFO) {
    pantalla = PANTALLA.HOME;
  }
  if (nextMini.mouseOverButton() && pantalla == PANTALLA.INFO) {
    pcMini.nextPage();
  }
  if (prevMini.mouseOverButton() && pantalla == PANTALLA.INFO) {
    pcMini.prevPage();
  } else {
    pcMini.checkCardSelection();
  }
  if (selected && mouseOverCards && pantalla == PANTALLA.INFO) {
    pantalla = PANTALLA.INFO;
  }
}

void updateCursor() {
  if ((next.mouseOverButton() || prev.mouseOverButton() ) && pantalla == PANTALLA.HOME) {
    cursorHand = true;
  } else if ((search.mouseOverButton() || pc.checkMouseOver() ) && pantalla == PANTALLA.HOME) {
    cursorHand = true;
  } else if ((bBACK.mouseOverButton() || bCONT.mouseOverButton() ) && (pantalla == PANTALLA.UBI || pantalla == PANTALLA.FYH)) {
    cursorHand = true;
  } else if (bBACK.mouseOverButton() && pantalla == PANTALLA.HOME ) {
    cursorHand = true;
  }

  if (cursorHand) {
    cursor(HAND);
  }
  if (!cursorHand && !mouseText) {
    cursor(ARROW);
  }
  if (mouseText) {
    cursor(TEXT);
  }
}
