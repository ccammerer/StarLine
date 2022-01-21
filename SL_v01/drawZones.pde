
void drawFyH() {
  pushStyle();
  fill(114, 110, 151);
  rect(ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY, roundness);
  fill(232, 237, 238);
  textSize(26);
  text("Fecha y hora del sistema", width/2, ubiActualY + ubiActualSizeY/1.333);
  fill(187, 199, 206);
  rect(timeDateX, timeDateY, timeDateSizeX, timeDateSizeY, roundness);
  rect(timeDateX, timeDateY + margin + timeDateSizeY, timeDateSizeX, timeDateSizeY, roundness);
  rect(continueX, continueY, continueSizeX, continueSizeY, roundness);
  popStyle();
}

void drawBanner() {
  pushStyle();
  fill(187, 199, 206);
  rect(logoX, logoY, logoSize, logoSize, roundness);
  textSize(90);fill(232, 237, 238);
  text("StarLine", bannerX, bannerY);
  popStyle();
}

void drawUbi() {
  pushStyle();
  fill(114, 110, 151);
  rect(ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY, roundness);
  fill(232, 237, 238);
  textSize(26);
  text("Ubicación actual", width/2, ubiActualY + ubiActualSizeY/1.333);
  fill(187, 199, 206);
  rect(ubiScrollX, ubiScrollY, ubiScrollSizeX, ubiScrollSizeY, roundness);
  popStyle();
}

void drawCont() {
  pushStyle();
  fill(114, 110, 151);
  rect(continueX, continueY, continueSizeX, continueSizeY, roundness);
  fill(232, 237, 238);
  textSize(26);
  text("Continuar", continueX + continueSizeX/2, continueY + continueSizeY/1.333);
  popStyle();
}
void drawBack() {
  pushStyle();
  fill(114, 110, 151);
  rect(backX, backY, backSizeX, backSizeY, roundness);
  fill(232, 237, 238);
  textSize(26);
  text("Atrás", backX + backSizeX/2, backY + backSizeY/1.333);
  popStyle();
}

void configButt() {
  fill(114, 110, 151);
  rect(configX, configY, configSize, configSize, roundness);
}

void drawObjectList() {
  fill(114, 110, 151);
  rect(searchBarX, searchBarY, searchBarSizeX, searchBarSizeY, roundness);

  fill(187, 199, 206);
  rect(rectObjectsX, rectObjectsY, rectObjectsSizeX, rectObjectsSizeY, roundness);
  fill(114, 110, 151);
  rect(imgRectObjectsX, imgRectObjectsY, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(114, 110, 151);
  rect(rectObjectsX, rectObjectsY + rectObjectsSizeY + margin/4, rectObjectsSizeX, rectObjectsSizeY, roundness);
  fill(187, 199, 206);
  rect(imgRectObjectsX, imgRectObjectsY + rectObjectsSizeY + margin/4, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(187, 199, 206);
  rect(rectObjectsX, rectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, rectObjectsSizeX, rectObjectsSizeY, roundness);
  fill(114, 110, 151);
  rect(imgRectObjectsX, imgRectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(114, 110, 151);
  rect(rectObjectsX, rectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, rectObjectsSizeX, rectObjectsSizeY, roundness);
  fill(187, 199, 206);
  rect(imgRectObjectsX, imgRectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, imgRectObjectsSize, imgRectObjectsSize, roundness);
}

void drawObjectsBottom() {
  fill(187, 199, 206);
  rect(objectsBottomX, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX + logoSize*2, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX + logoSize*4, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX - logoSize*2, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX - logoSize*4, objectsBottomY, logoSize, logoSize, roundness);
}

void drawBlackboards() {
  fill(187, 199, 206);
  rect(blackboardX, blackboardY, blackboardSizeX, blackboardSizeY, roundness);
  rect(width-blackboardX-blackboardSizeX, blackboardY, blackboardSizeX, blackboardSizeY, roundness);
}

void drawInfo() {
  rect(bigImgX, bigImgY-margin/2, bigImgSize, bigImgSize + margin*13/4, roundness);

  fill(187, 199, 206);
  rect(infoRectX, infoRectY, infoRectSizeX, infoRectSizeY, roundness);
  fill(114, 110, 151);
  rect(infoRectX+infoRectSizeX+ margin/2, infoRectY, infoRectSizeX, infoRectSizeY, roundness);

  fill(114, 110, 151);
  rect(infoRectX, infoRectY + infoRectSizeY + margin/4, infoRectSizeX, infoRectSizeY, roundness);
  fill(187, 199, 206);
  rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY + margin/4, infoRectSizeX, infoRectSizeY, roundness);

  fill(187, 199, 206);
  rect(infoRectX, infoRectY + infoRectSizeY*2 + (margin/4)*2, infoRectSizeX, infoRectSizeY, roundness);
  fill(114, 110, 151);
  rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*2 + (margin/4)*2, infoRectSizeX, infoRectSizeY, roundness);

  fill(114, 110, 151);
  rect(infoRectX, infoRectY + infoRectSizeY*3 + (margin/4)*3, infoRectSizeX, infoRectSizeY, roundness);
  fill(187, 199, 206);
  rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*3 + (margin/4)*3, infoRectSizeX, infoRectSizeY, roundness);

  fill(187, 199, 206);
  rect(infoRectX, infoRectY + infoRectSizeY*4 + (margin/4)*4, infoRectSizeX, infoRectSizeY, roundness);
  fill(114, 110, 151);
  rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*4 + (margin/4)*4, infoRectSizeX, infoRectSizeY, roundness);

  fill(114, 110, 151);
  rect(infoRectX, infoRectY + infoRectSizeY*5 + (margin/4)*5, infoRectSizeX, infoRectSizeY, roundness);
  fill(187, 199, 206);
  rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*5 + (margin/4)*5, infoRectSizeX, infoRectSizeY, roundness);
}

void drawObjectListInfo() {
  fill(114, 110, 151);
  rect(searchBarLX, searchBarY, searchBarSizeLX, searchBarSizeY, roundness);

  fill(187, 199, 206);
  rect(rectObjectsLX, rectObjectsY, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(114, 110, 151);
  rect(imgRectObjectsLX, imgRectObjectsY, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(114, 110, 151);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY + margin/4, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(187, 199, 206);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY + margin/4, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(187, 199, 206);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(114, 110, 151);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(114, 110, 151);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(187, 199, 206);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, imgRectObjectsSize, imgRectObjectsSize, roundness);
}
