Button1 bUBIactual, bCONT, bCONFIG, bBACK, bUBI, bFYH ;
// Dimensions dels botons
int buttonH = 100, buttonW = 300;

// Creació dels elements de la GUI
void setGUI() {
  initPics();
  initFonts();
  initLabels();
  initCards();
  initSearch();
  initButtons();
  initUbis();
  initLinkList();
  updateCursor();
}

// Creació dels botons de la GUI
void initButtons() {
  bUBIactual     = new Button1("Ubi. actual", ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY);
  bCONT     = new Button1("Continue", continueX, continueY, continueSizeX, continueSizeY);
  bBACK   = new Button1("Back", backX, backY, backSizeX, backSizeY);
  bUBI     = new Button1("UBI", ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY);
  bFYH      = new Button1("Fecha y hora del sistema", ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY);
}


void initLabels() {
  t = new TableLabel(12);
  t.setLabelsInfo(info);
}

void initCards() {
  pc = new PagedCard(numCardsPage);
  pc.setDimensions(rectObjectsX, rectObjectsY, rectObjectsSizeX, rectObjectsSizeY*5);
  pc.setData(infoCards);
  pc.setCards();
  pc.setImages(sS, con);

  next = new Button1("NEXT", (rectObjectsX+backSizeX+margin/4)+rectObjectsSizeX-backSizeX*2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX, backSizeY);
  prev = new Button1("PREV", (rectObjectsX)+rectObjectsSizeX-backSizeX*2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX, backSizeY);

  pcMini = new PagedCard(numCardsPage);
  pcMini.setDimensions(rectObjectsLX, rectObjectsY, rectObjectsSizeLX, rectObjectsSizeY*5);
  pcMini.setData(infoCards);
  pcMini.setCards();
  pcMini.setImages(sS, con);

  nextMini = new Button1(">", rectObjectsLX+rectObjectsSizeLX-backSizeX/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX/4-margin/8, backSizeY);
  prevMini = new Button1("<", rectObjectsLX+rectObjectsSizeLX-backSizeX/2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX/4-margin/8, backSizeY);
}

void initSearch() {
  tList = new TextList(infoCards, searchBarX, searchBarY, searchBarSizeX - backSizeX - margin/4, searchBarSizeY);
  search = new Button1("SEARCH", searchBarX + searchBarSizeX - backSizeX, searchBarY, backSizeX, backSizeY);

  tListMini = new TextList(infoCards, searchBarLX, searchBarY, searchBarSizeLX-backSizeX/4 -margin/4, searchBarSizeY);
  searchMini = new Button1(">", searchBarLX + searchBarSizeLX - backSizeX/4, searchBarY, backSizeX/4, backSizeY);

  /*regions = new TextList(listCountries, searchBarX+searchBarX/2, searchBarY + margin, searchBarSizeX/2 - backSizeX - margin/4, searchBarSizeY);
   select = new Button1("ELEGIR", 3*width/4, height/12, buttonW, buttonH);*/

  cbl= new CheckBoxList(ajustes, width/3, height/4, 50, 50);
  regions = new CheckBoxList(ajustes, width/3, height/4, 50, 50);
}

void initPics() {
  sS = new PImage[8];
  println("hola");
  for (int i = 0; i< sS.length; i++) {
    sS[i] = loadImage("ss/ss_"+ i + ".png");
  }

  println("hola");
  logo = loadImage("logo_br.png");

  on = loadImage("on.png");
  off = loadImage("off.png");

  config = loadImage("config.png");
  configg = loadImage("configg.png");
  PImage[] buttonImages = {config, configg};
  configuracion = new ImageButton(buttonImages, configX, configY, configSize, configSize);
}

void initFonts() {
  banner = createFont("banner.TTF", 100);
  general = createFont("text.ttf", 100);
}

void initUbis() {
  ubi = new Select(listCountries, width/2 - ubiActualSizeX/2, ubiActualY + ubiActualSizeY, ubiActualSizeX, ubiActualSizeY);
}

void initLinkList() {
  l = new ListLink(3, int(blackboardX), int(blackboardY), int(blackboardSizeX), int(blackboardSizeY));
  l.setData(info3);

  l2 = new ListLink(3, int(width-blackboardX-blackboardSizeX), int(blackboardY), int(blackboardSizeX), int(blackboardSizeY));
  l2.setData(info2);
  desktop = Desktop.getDesktop();
}
