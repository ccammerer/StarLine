float width = 1600;
float height = 1100;
float roundness = 12;
float margin = width/40;


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
float backSizeX = (ubiActualSizeX/2);
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
float searchBarY = ubiActualY;

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

float bigImgSize = logoSize * 4;
float bigImgX = width/5;
float bigImgY = searchBarY+margin;

float rectObjectsSizeLX = ubiActualSizeX-margin*2;
float rectObjectsLX = margin;
float searchBarSizeLX = ubiActualSizeX-margin;
float searchBarLX = margin/2;
float imgRectObjectsLX = rectObjectsLX + margin/2;

float infoRectSizeX = bigImgSize;
float infoRectSizeY = margin*2;
float infoRectX = bigImgX + bigImgSize + margin/2;
float infoRectY = bigImgY-margin/2;
