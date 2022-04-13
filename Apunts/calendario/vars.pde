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
color po = color(105, 90, 200);
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

int dia1, mes1, any1;
