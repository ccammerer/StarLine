void mousePressed() {
  //UBI
  if ( pantalla == PANTALLA.UBI) {
    if (bUBIactual.mouseOverButton()) {
      pantalla = PANTALLA.FYH;
    }
    if (bCONT.mouseOverButton()) {
      pantalla = PANTALLA.FYH;
    }
  }


  //FYH
  else if ( pantalla == PANTALLA.FYH) {
    if (bBACK.mouseOverButton()) {
      pantalla = PANTALLA.UBI;
    }
    if (bCONT.mouseOverButton()) {
      pantalla = PANTALLA.HOME;
    }
    if (bFYH.mouseOverButton()) {
      pantalla = PANTALLA.HOME;
    }
  }


  //CONFIG
  if (bCONFIG.mouseOverButton()) {
    pantalla = PANTALLA.CONFIG;
  }
  if (bBACK.mouseOverButton() && pantalla == PANTALLA.CONFIG) {
    pantalla = PANTALLA.HOME;
  }
  cbl.checkMouse();


  //HOME
  if (pantalla == PANTALLA.HOME) {

    if (bBACK.mouseOverButton()) {
      pantalla = PANTALLA.FYH;
    }
    if (bBACK.mouseOverButton()) {
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
    if (selected && mouseOverCards) {
      pantalla = PANTALLA.INFO;
    }
  }




  // Pitjam sobre el botó de TRIA
  if (search.mouseOverButton() && search.enabled) {
    selectedText = tList.selectedValue;
  }

  // Pitjam damunt el textList
  tList.textField.isPressed();
  tList.buttonPressed();


  //INFO
  if (pantalla == PANTALLA.INFO) {

    if (bBACK.mouseOverButton()) {
      pantalla = PANTALLA.HOME;
    }
    if (nextMini.mouseOverButton()) {
      pcMini.nextPage();
    }
    if (prevMini.mouseOverButton()) {
      pcMini.prevPage();
    } else {
      pcMini.checkCardSelection();
    }
    if (selected && mouseOverCards) {
      pantalla = PANTALLA.INFO;
    }
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
  } else if ((search.mouseOverButton() || pc.checkMouseOver() ) && pantalla == PANTALLA.HOME) {
    cursorHand = true;
  } else if ((searchMini.mouseOverButton() || pcMini.checkMouseOver() ) && pantalla == PANTALLA.INFO) {
    cursorHand = true;
  }
}

void mouseUbi() {

  // Pitjam sobre el botó de TRIA
  if (select.mouseOverButton() && select.enabled) {
    selectedCountry = regions.selectedValue + "("+regions.selectedId+")";
  }

  // Pitjam damunt el textList
  regions.textField.isPressed();
  regions.buttonPressed();

  if (regions.textField.selected) {
    regions.update();
  } else {
    regions.buttons.clear();
  }


  if (regions.textField.selected) {
    regions.textField.keyPressed(key, (int)keyCode);
    regions.update();
  }
}
