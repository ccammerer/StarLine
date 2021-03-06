float width = 1600;
float height = 1100;
float roundness = 6;
float margin = width/40;

color n = color(2, 4, 2);
color go = color(130, 140, 150);
color goo = color(100, 110, 120);
color gc = color(170, 180, 190);
color g = color(190, 200, 210);
color p = color(140, 130, 215);
color po = color(105, 90, 200);
color bl = color(150, 200, 230);
color bc = color(130, 180, 210);
color bo = color(100, 150, 180);


float bannerX = 750;
float bannerY = 100;
float logoSize = 100;
float logoX = bannerX + 270;
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

float objectsBottomX = width/2 - logoSize/2- 400;
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

String[] titols = {"id","Nombre","Descripci??n","Hora de salida","Hora de la puesta","Magnitud aparente","Magnitud absoluta","Distancia a la tierra","Distancia al sol","Duraci??n del d??a","Duraci??n del a??o","Radio","AR", "DEC",};

String[] nomsFotos = {"Mercurio", "Osa Menor", "Venus", "Marte", "Jupiter", "Saturno", "Urano",
                      "Neptuno", "Osa Mayor","EEI", "Alfa Centauri A", "Andromeda", "Orion",
                      "Arturo", "Betelgeuse", "Canopus", "Casiopea", "Cisne", "Cumulo de Hercules",
                      "Draco", "Iridium", "Sirio", "Starlink",
                    };


TableLabel tMer, tVen, tTie, tMar, tJup, tSat, tUra, tNep;

Button1 next, prev, nextMini, prevMini;
int numCardsPage = 5;
PagedCard pc, pcMini;
int selectedCard = 2;
//demanar a nene toni si puc fer que me filtri per dades, es a dir, que pugui triar sa info que se mostra.
String[][] infoCards = {
  {"Mercury", "Planeta", "Sistema Solar"},
  {"Venus", "Planeta", "Sistema Solar"},
  {"Earth", "Planeta", "Sistema Solar"},
  {"Mars", "Planeta", "Sistema Solar"},
  {"Jupiter", "Planeta", "Sistema Solar"},
  {"Saturn", "Planeta", "Sistema Solar"},
  {"Urane", "Planeta", "Sistema Solar"},
  {"Neptune", "Planeta", "Sistema Solar"},
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
CheckBoxList regions;
String[] listCountries = {"Alemania(Berl??n)", "B??lgica(Bruselas)", "Italia(Roma)", "Espa??a(Mallorca)", "Suiza(Berna)", "Francia(Par??s)"};

float ListW = 600, ListH = 60;
float bW = 120, bH = 60;
String selectedCountry;
Select ubi;
String selectedValueUbi;

String[] ajustes = {"Sistema Solar", "Constelaciones", "Estrellas", "Satelites Artificiales", "Cielo Profundo"};
CheckBoxList cbl, cbl2, cbl3;


Button1 searchUbi;
ImageButton configuracion;

int ubiNum = 0;



String[][] info3 = { {"Google Sky",
  "https://www.google.com/sky/"},
  {"Oc??ano Estelar",
  "https://bit.ly/3xvGN0J"},
  {"Astronomy lab",
  "http://www.astronomylab.net/"},
  {"AstroYepes",
  "https://bit.ly/369DReH"},
};
String[][] info2 = { {"Lluvia de estrellas",
  "20/07/22"},
  {"Satelite Hubble",
  "03/08/22"},
  {"SpaceX launch",
  "04/09/22"}
};

ListLink l, l2;

String[] ajustes2 = {"M??sica", "Utilizar ubicai??n del sistema siempre", "Utilizar fecho y hora del sistema siempre"};

int dia1, mes1, any1;
Calendario c;
String[][] datesClau = {{"2022-04-15", "Eclipse"}, {"2000-04-15", ""}};

PImage[] aj, ajb;
SwitchFilterArray sfa;
int hora, minuts;
TextField h, m;
String[][] hores = {{"",""}};
String textHora, text2;


int id;
