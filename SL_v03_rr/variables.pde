float width = 1600;
float height = 1100;
float roundness = 12;
float margin = width/40;

color w = color(232, 237, 238);
color bo = color(131, 181, 209);
color p = color(114, 110, 151);
color b = color(70, 144, 186);
color po = color(180, 171, 227);


float logoSize = 100;
float logoX = 910;
float logoY = margin*2.5;
float bannerX = 750;
float bannerY = 190;


float ubiActualSizeX = width/5.5;
float ubiActualSizeY = height/28;
float ubiActualX = ((width/2)-(ubiActualSizeX/2));
float ubiActualY = logoY + logoSize + margin*2;
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
float searchBarY = ubiActualY-margin/2;

float rectObjectsSizeX = searchBarSizeX;
float rectObjectsSizeY = height/10;
float rectObjectsX = searchBarX;
float rectObjectsY = searchBarY+ margin*2;
float imgRectObjectsSize = logoSize/1.4;
float imgRectObjectsX = rectObjectsX + margin/2;
float imgRectObjectsY = rectObjectsY + margin/2;

float objectsBottomX = width/2 - logoSize/2;
float objectsBottomY = height - margin*6;

float blackboardSizeX = ubiScrollSizeX;
float blackboardSizeY = dist(1, searchBarY, 1, (rectObjectsY + rectObjectsSizeY*3 + (margin/4)*3));
float blackboardX = margin*2;
float blackboardY = searchBarY;

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


String[][] info = { {"Titol 1", "Dada 1" }, {"Titol 1", "Dada 1" },
                    {"Titol 2", "Dada 2" }, {"Titol 2", "Dada 2" },
                    {"Titol 3", "Dada 3" }, {"Titol 3", "Dada 3" },
                    {"Titol 4", "Dada 4" }, {"Titol 4", "Dada 4" },
                    {"Titol 5", "Dada 5" }, {"Titol 5", "Dada 5" },
                    {"Titol 6", "Dada 6" }, {"Titol 6", "Dada 6" },
                  };
TableLabel t;

Button1 next, prev;
int numCardsPage = 4;
PagedCard pc;
String[][] infoCards = {
                     {"Títol 1", "Lloc 1", "Data 1", "Secció 1", "Descripció 1"},
                     {"Títol 2", "Lloc 2", "Data 2", "Secció 2", "Descripció 2"},
                     {"Títol 3", "Lloc 3", "Data 3", "Secció 1", "Descripció 3"},
                     {"Títol 4", "Lloc 4", "Data 4", "Secció 1", "Descripció 4"},
                     {"Títol 5", "Lloc 5", "Data 5", "Secció 2", "Descripció 5"},
                     {"Títol 6", "Lloc 6", "Data 6", "Secció 2", "Descripció 6"},
                     {"Títol 7", "Lloc 7", "Data 7", "Secció 1", "Descripció 7"},
                     {"Títol 8", "Lloc 1", "Data 1", "Secció 1", "Descripció 1"},
                     {"Títol 9", "Lloc 2", "Data 2", "Secció 2", "Descripció 2"},
                     {"Títol 10", "Lloc 3", "Data 3", "Secció 1", "Descripció 3"},
                     {"Títol 11", "Lloc 4", "Data 4", "Secció 1", "Descripció 4"},
                     {"Títol 12", "Lloc 5", "Data 5", "Secció 2", "Descripció 5"},
                     {"Títol 13", "Lloc 6", "Data 6", "Secció 2", "Descripció 6"},
                     {"Títol 14", "Lloc 7", "Data 7", "Secció 1", "Descripció 7"},
                  };
                  
Button1 search;         // Botons
TextList tList;   // Llista de textos

String[][] listValues = {{"0", "Alemania"},{"1", "Angola"},{"2", "Canada"},
                         {"3", "Brasil"}};
                         
String selectedText; 

// Dimensions del TextList i Botons
float tListW = 600, tListH = 60;


PImage img;
/*PImage jupiter;
PImage earth;
PImage saturn;
PImage mars;*/

PImage[] sS;
PImage[] con;
PImage[] es;
PImage[] sA;
PImage[] cP;
