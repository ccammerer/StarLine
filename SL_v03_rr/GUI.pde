Button1 bUBIactual, bCONT, bCONFIG, bBACK, bUBI, bFYH ;
// Dimensions dels botons
int buttonH = 100, buttonW = 300;

// Creació dels elements de la GUI
void setGUI() {
  initButtons();
  initLabels();
  initCards();
  initSearch();
  initPics();
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
pc.setDimensions(rectObjectsX, rectObjectsY, rectObjectsSizeX, rectObjectsSizeY*5);



  pc.setData(infoCards);
  pc.setCards();
  
  
  //img = loadImage("data/images/jupiter16b.png");
  
  
  // Creació dels botons
  next = new Button1("NEXT", rectObjectsX, rectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, backSizeX, backSizeY);
  prev = new Button1("PREV", margin + rectObjectsSizeX, margin*1.5 + backSizeY, backSizeX, backSizeY);
  
}

void initSearch(){
tList = new TextList(listValues, width/8, height/12, tListW, tListH);
   
  // Creació del Botó
  search = new Button1("TRIA", 3*width/4, height/12, buttonW, buttonH);
}

void initPics(){
  sS = new PImage[8];
  for(int i = 0; i>= 8; i++){
  sS[i] = loadImage("ss/ss_"+ i + ".png");
  }
  logo = loadImage("logo_r.png");
}

void initFonts(){

}
