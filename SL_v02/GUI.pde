Button1 bUBIactual, bCONT, bCONFIG, bBACK, bUBI, bFYH, b1, b2, b3, b4, b5, b6, b7, b8;
Button1[] bINFO = {b1, b2, b3, b4, b5, b6, b7, b8};
// Dimensions dels botons
int buttonH = 100, buttonW = 300;

// Creació dels elements de la GUI
void setGUI() {
  initButtons();
  initLabels();
  initCards();
}

// Creació dels botons de la GUI
void initButtons() {
  bUBIactual     = new Button1("Ubicación actual", ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY);
  bCONT     = new Button1("Continuar", continueX, continueY, continueSizeX, continueSizeY);
  bCONFIG = new Button1(" ", configX, configY, configSize, configSize);
  bBACK   = new Button1("Atrás", backX, backY, backSizeX, backSizeY);
  bUBI     = new Button1("UBI", ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY);
  bFYH      = new Button1("Fecha y hora del sistema", ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY);
}

void enableButtons() {
  bUBIactual.setEnabled(true);
  bCONT.setEnabled(true);
  bCONFIG.setEnabled(true);
  bBACK.setEnabled(true);
  bUBI.setEnabled(true);
  bFYH.setEnabled(true);
}

void initLabels() {
  t = new TableLabel(12);
  t.setLabelsInfo(info);
}

void initCards(){
pc = new PagedCard(numCardsPage);
  pc.setData(infoCards);
  pc.setCards();
  
  // Creació dels botons
  b1 = new Button1("NEXT", 100 + cardsW, 80, buttonW, buttonH);
  b2 = new Button1("PREV", 100 + cardsW, 100 + buttonH, buttonW, buttonH);
  
}
