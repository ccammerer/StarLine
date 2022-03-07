float width = 1600;
float height = 1100;
float roundness = 6;
float margin = width/40;

color n = color(2, 4, 2);
color go = color(130, 140, 150);
color goo = color(100, 110, 120);
color gc = color(170, 180, 190);
color g = color(190, 200, 210);
color p = color(143, 129, 213);
color po = color(105, 87, 199);
color bl = color(150, 200, 230);
color bc = color(130, 180, 210);
color bo = color(100, 150, 180);


float bannerX = 750;
float bannerY = 100;
float logoSize = 100;
float logoX = bannerX +270;
float logoY = bannerY;


float ubiActualSizeX = width/5.5;
float ubiActualSizeY = height/28;
float ubiActualX = ((width/2)-(ubiActualSizeX/2));
float ubiActualY = logoY + logoSize + margin;
float ubiScrollX = ubiActualX;
float ubiScrollY = ubiActualY + margin + ubiActualSizeY;
float ubiScrollSizeX = ubiActualSizeX;
float ubiScrollSizeY = height/3;

float continueX = width/2;
float continueY = ubiScrollY + ubiScrollSizeY + margin;
float continueSizeX = ubiActualSizeX/2;
float continueSizeY = ubiActualSizeY;

float backX = margin;//(width/2) - continueSizeX;s
float backY = height-margin*2;//ubiScrollY + ubiScrollSizeY + margin;
float backSizeX = ubiActualSizeX/2;
float backSizeY = ubiActualSizeY;

float timeDateX = ubiScrollX;
float timeDateY = ubiScrollY;
float timeDateSizeX = ubiActualSizeX;
float timeDateSizeY = ubiActualSizeY;

float configSize = logoSize/1.5;
float configX = width-margin*4.5+configSize;
float configY = height-margin*4.5+configSize;

float searchBarSizeX = width/2.5;
float searchBarSizeY = height/28;
float searchBarX = (width/2)-(searchBarSizeX/2);
float searchBarY = ubiActualY-margin;

float rectObjectsSizeX = searchBarSizeX;
float rectObjectsSizeY = height/12;
float rectObjectsX = searchBarX;
float rectObjectsY = searchBarY+ margin*2;
float imgRectObjectsSize = logoSize/1.4;
float imgRectObjectsX = rectObjectsX + margin/2;
float imgRectObjectsY = rectObjectsY + margin/2;

float objectsBottomX = width/2 - logoSize/2;
float objectsBottomY = height - margin*5.5;

float blackboardSizeX = dist(0, 0, searchBarX, 0)-margin*4;
float blackboardSizeY = dist(1, searchBarY, 1, (rectObjectsY + rectObjectsSizeY*4 + (margin/4)*5)+2);
float blackboardX = margin*2;
float blackboardY = searchBarY+margin*2;

float bigImgSizeX = logoSize * 4;
float bigImgSizeY = bigImgSizeX + margin*13/4;
float bigImgX = width/5;
float bigImgY = searchBarY+margin;

float rectObjectsSizeLX = ubiActualSizeX-margin*2;
float rectObjectsLX = margin;
float searchBarSizeLX = ubiActualSizeX-margin;
float searchBarLX = margin/2;
float imgRectObjectsLX = rectObjectsLX + margin/2;

float infoRectSizeX = bigImgSizeX;
float infoRectSizeY = margin*2;
float infoRectX = bigImgX + bigImgSizeY;
float infoRectY = bigImgY-margin/2;


String[][] info = { {"Mercurio", "Dada 1" }, {"Titol 1", "Dada 1" },
  {"Sistema Solar", "Dada 2" }, {"Planeta", "Dada 2" },
  {"Titol 3", "Dada 3" }, {"Titol 3", "Dada 3" },
  {"Titol 4", "Dada 4" }, {"Titol 4", "Dada 4" },
  {"Titol 5", "Dada 5" }, {"Titol 5", "Dada 5" },
  {"Titol 6", "Dada 6" }, {"Titol 6", "Dada 6" },
};
TableLabel t;

Button1 next, prev, nextMini, prevMini;
int numCardsPage = 5;
PagedCard pc, pcMini;
int selectedCard = -1;
String[][] infoCards = {
  {"Mercury", "Planeta", "Sistema Solar", "Venus", "Descripció 1"},
  {"Venus",  "Planeta", "Sistema Solar", "Terra", "Descripció 2"},
  {"Earth",  "Planeta", "Sistema Solar", "Mart", "Descripció 3"},
  {"Mars",  "Planeta", "Sistema Solar", "Secció 1", "Descripció 4"},
  {"Jupiter",  "Planeta", "Sistema Solar", "Secció 2", "Descripció 5"},
  {"Saturn",  "Planeta", "Sistema Solar", "Secció 2", "Descripció 6"},
  {"Urane", "Planeta", "Sistema Solar", "Secció 1", "Descripció 7"},
  {"Neptune", "Planeta", "Sistema Solar", "Secció 1", "Descripció 1"},
  {"Títol 9", "Planeta", "Sistema Solar", "Secció 2", "Descripció 2"},
  {"Títol 10", "Planeta", "Sistema Solar", "Secció 1", "Descripció 3"},
  {"Títol 11", "Planeta", "Sistema Solar", "Secció 1", "Descripció 4"},
  {"Títol 12", "Lloc 5", "Data 5", "Secció 2", "Descripció 5"},
  {"Títol 13", "Lloc 6", "Data 6", "Secció 2", "Descripció 6"},
  {"Títol 14", "Lloc 7", "Data 7", "Secció 1", "Descripció 7"},
};

Button1 search, searchMini;         // Botons
TextList tList, tListMini;   // Llista de textos


String selectedText;

// Dimensions del TextList i Botons
float tListW = 600, tListH = 60;

boolean mouseOverCards = false;
boolean mouseText = false;
boolean cursorHand = false;
float txt;
boolean selected = false;



//UBI

Button1 select, ubiActual;
boolean ubiActualSelected;
TextList regions;
String[][] listCountries = {{"0", "Alemania(Berlín)"},
                            {"1", "Bélgica(Bruselas)"},
                            {"2", "Corea del Norte(Pionyang)"},
                            {"3", "España(Madrid)"},
                            {"4", "Estados Unidos(Washington D. C.)"},
                            {"5", "Francia(París)"},
                            {"6", "Russia(Moscú)"},
                           };
                           
float ListW = 600, ListH = 60;
float bW = 120, bH = 60;
String selectedCountry; 



String[] ajustes = {"Sistema Solar", "Constelaciones", "Estrellas", "Satelites Artificiales", "Cielo Profundo"};
CheckBoxList cbl;
