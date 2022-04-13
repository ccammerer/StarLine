void mousePressed() {
  //UBI
  if ( pantalla == PANTALLA.UBI) {
    if (bUBIactual.mouseOverButton()) {
      pantalla = PANTALLA.FYH;
    }
    if (bCONT.mouseOverButton()) {
      pantalla = PANTALLA.FYH;
    }
    if (ubi.mouseOverSelect() && ubi.enabled) {
      if (!ubi.collapsed) {
        ubi.update();      // Actualitzar valor
        updateUbi();    // Fer acció amb valor
      }
      ubi.toggle();        // Plegar o desplegar
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
    c.checkButtons();
    h.isPressed();
    m.isPressed();
  }


  // CONFIG
  else if (pantalla == PANTALLA.CONFIG) {
    if (bBACK.mouseOverButton()) {
      pantalla = PANTALLA.HOME;
      selected = false;
    }
    cbl.checkMouse();
    cbl3.checkMouse();
  }


  //HOME
  else if (pantalla == PANTALLA.HOME) {
    
    pc.checkCardSelection();
      if (selectedCard!=-1) {
        id = pcMini.cards[selectedCard].id;
        initLabels(id);
        pantalla = PANTALLA.INFO;
      }
      
      sfa.updateFilters();
      if(sfa.getNumSelected()>0){
        printArray(sfa.getSelectedValues());
      updateCards(sfa.getSelectedValuesIn());
      }

    if (bBACK.mouseOverButton()) {
      pantalla = PANTALLA.FYH;
    } else if (bBACK.mouseOverButton()) {
      pantalla = PANTALLA.FYH;
    } else if (next.mouseOverButton()) {
      pc.nextPage();
    } else if (prev.mouseOverButton()) {
      pc.prevPage();
    } else if (!tList.textField.selected) {
      
    } else if (selected && mouseOverCards) {
      pantalla = PANTALLA.INFO;
      selected = false;
      selectedCard= -1;
    }
    // Pitjam sobre el botó de TRIA
    else if (search.mouseOverButton() && search.enabled) {
      selectedText = tList.selectedValue;
    } 
      
      // Pitjam damunt el textList
      tList.textField.isPressed();
      tList.buttonPressed();
      
      if (next.mouseOverButton()) {
      pc.nextPage();
    } 
      

      // Actualitzam els filtres
      

      
    
    //}
  }



  //INFO
  else if (pantalla == PANTALLA.INFO) {

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
      //int n = selectedCard + 1;
      if (pcMini.checkMouseOver()) {
        id = pcMini.cards[selectedCard].id;
        println("ID SELECTED CARD: "+id);
        initLabels(id);
      }
    }
    if (selected && mouseOverCards) {
      pantalla = PANTALLA.INFO;
    }

    // Actualitzam els filtres
    sfa.updateFilters();
    if (sfa.updateCursor()) {
      updateCards(sfa.getSelectedValuesIn());
    }
  }

  //CONFIG
  if (configuracion.mouseOverButton()) {
    pantalla = PANTALLA.CONFIG;
  } else if (search.mouseOverButton() && search.enabled) {
    selectedText = tList.selectedValue;
  }
  // Pitjam damunt el textList
  tListMini.textField.isPressed();
  tListMini.buttonPressed();
  l.checkClicks();
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
  } else  if (sfa.updateCursor()) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
