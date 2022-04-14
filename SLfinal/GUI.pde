Button1 bUBIactual, bCONT, bCONFIG, bBACK, bUBI, bFYH ;
// Dimensions dels botons
int buttonH = 100, buttonW = 300;

// Creació dels elements de la GUI
void setGUI() {
  initPics();
  initFonts();
  initLabels(1);
  initCards();
  initSearch();
  initButtons();
  initSwitchFilterArray();
  initUbis();
  initLinkList();
  initFYHSistema();
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


void initLabels(int n) {
  tMer = new TableLabel(14);
  String[] infoAstro = getInfoAstro(id);
  //printArray(infoAstro);
  //printArray(titols);
  tMer.setLabelsInfo(infoAstro, titols, Integer.valueOf(infoAstro[14]));
}

void filtraCards(String tipo) {
  pc = new PagedCard(numCardsPage);
  pc.setDimensions(rectObjectsX, rectObjectsY, rectObjectsSizeX, rectObjectsSizeY*5);
  String[][] infoAstros = getInfoAstrosTipo(tipo);
 printArray2D(infoAstros);
  pc.setData(infoAstros);
  pc.setCards();
  //pc.setImages();
}

void updateCards(String categories) {
  pc = new PagedCard(numCardsPage);
  pc.setDimensions(rectObjectsX, rectObjectsY, rectObjectsSizeX, rectObjectsSizeY*5);
  String[][] infoAstros = getInfoAstrosTipo(categories);
 printArray2D(infoAstros);
  pc.setData(infoAstros);
  pc.setCards();

  next = new Button1("NEXT", (rectObjectsX+backSizeX+margin/4)+rectObjectsSizeX-backSizeX*2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX, backSizeY);
  prev = new Button1("PREV", (rectObjectsX)+rectObjectsSizeX-backSizeX*2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX, backSizeY);

  pcMini = new PagedCard(numCardsPage);
  pcMini.setDimensions(rectObjectsLX, rectObjectsY, rectObjectsSizeLX, rectObjectsSizeY*5);
  pcMini.setData(infoAstros);
  pcMini.setCards();

  nextMini = new Button1(">", rectObjectsLX+rectObjectsSizeLX-backSizeX/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX/4-margin/8, backSizeY);
  prevMini = new Button1("<", rectObjectsLX+rectObjectsSizeLX-backSizeX/2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX/4-margin/8, backSizeY);
}


void initCards() {
  pc = new PagedCard(numCardsPage);
  pc.setDimensions(rectObjectsX, rectObjectsY, rectObjectsSizeX, rectObjectsSizeY*5);
  String[][] infoAstros = getInfoAstros();
  //printArray2D(infoAstros);
  pc.setData(infoAstros);
  pc.setCards();
 // pc.setImages();

  next = new Button1("NEXT", (rectObjectsX+backSizeX+margin/4)+rectObjectsSizeX-backSizeX*2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX, backSizeY);
  prev = new Button1("PREV", (rectObjectsX)+rectObjectsSizeX-backSizeX*2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX, backSizeY);

  pcMini = new PagedCard(numCardsPage);
  pcMini.setDimensions(rectObjectsLX, rectObjectsY, rectObjectsSizeLX, rectObjectsSizeY*5);
  pcMini.setData(infoAstros);
  pcMini.setCards();
  //pcMini.setImages();

  nextMini = new Button1(">", rectObjectsLX+rectObjectsSizeLX-backSizeX/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX/4-margin/8, backSizeY);
  prevMini = new Button1("<", rectObjectsLX+rectObjectsSizeLX-backSizeX/2-margin/4, rectObjectsY + rectObjectsSizeY*5 + (margin/4)*5, backSizeX/4-margin/8, backSizeY);
}

void initSearch() {
  tList = new TextList(infoCards, searchBarX, searchBarY, searchBarSizeX - backSizeX - margin/4, searchBarSizeY);
  search = new Button1("SEARCH", searchBarX + searchBarSizeX - backSizeX, searchBarY, backSizeX, backSizeY);

  tListMini = new TextList(infoCards, searchBarLX, searchBarY, searchBarSizeLX-backSizeX/4 -margin/4, searchBarSizeY);
  searchMini = new Button1(">", searchBarLX + searchBarSizeLX - backSizeX/4, searchBarY, backSizeX/4, backSizeY);

  cbl= new CheckBoxList(ajustes, width/3, height/2, 50, 50);
  cbl2 = new CheckBoxList(ajustes, objectsBottomX, objectsBottomY, logoSize, logoSize);
  cbl3= new CheckBoxList(ajustes2, width/3, height/4.5, 50, 50);

  c = new Calendario(int(ubiActualX), int(ubiScrollY+2*margin/3), int(ubiActualSizeX), 240, datesClau);


  h = new TextField(int(ubiActualX), int(height/2 + margin/2), int(ubiActualSizeX/2 - margin/8), int(ubiActualSizeY));
  m = new TextField(int(ubiActualX + ubiActualSizeX/2 + margin/4), int(height/2 + margin/2), int(ubiActualSizeX/2 - margin/8), int(ubiActualSizeY));
}

void initSwitchFilterArray() {
  sfa = new SwitchFilterArray(int(objectsBottomX + 50), int(objectsBottomY), int(8*logoSize), int(logoSize));


  aj = new PImage[5];
  ajb = new PImage[5];

  for (int i = 0; i< aj.length; i++) {
    aj[i] = loadImage("filter/SS"+ i + ".png");
    ajb[i] = loadImage("filter/SSb"+ i + ".png");
  }

  // Establim les etiquetes (noms) dels filtres
  sfa.setData(ajustes);
}


void initPics() {
  sS = new PImage[nomsFotos.length];
  fondo = loadImage("fondo.png");
  println("hola");
  for (int i = 0; i< sS.length; i++) {
    sS[i] = loadImage("fotos/"+nomsFotos[i] + ".png");
  }



  //println("NOM FOTO: "+msql.getString("nombre"));
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
  ubi = new Select(listCountries, width/2 - ubiActualSizeX/2, ubiActualY + ubiActualSizeY + margin/2, ubiActualSizeX, ubiActualSizeY);
}

void initLinkList() {
  l = new ListLink(3, int(blackboardX), int(blackboardY), int(blackboardSizeX), int(blackboardSizeY));
  l.setData(info3);

  l2 = new ListLink(3, int(width-blackboardX-blackboardSizeX), int(blackboardY), int(blackboardSizeX), int(blackboardSizeY));
  l2.setData(info2);
  desktop = Desktop.getDesktop();
}

void initFYHSistema() {
  Calendar c = Calendar.getInstance();

  int any = c.get(Calendar.YEAR);
  int mes = c.get(Calendar.MONTH) + 1;
  int dia = c.get(Calendar.DATE);

  println(dia+"/"+mes+"/"+any);

  int hora = c.get(Calendar.HOUR);
  int minuts = c.get(Calendar.MINUTE);

  println(hora+":"+ minuts);
}
