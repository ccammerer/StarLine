
void drawFyH() {
  pushStyle();
  bFYH.display(p,po);
  /*fill(114, 110, 151);
   rect(ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY, roundness);
   fill(232, 237, 238);
   textSize(26);
   text("Fecha y hora del sistema", width/2, ubiActualY + ubiActualSizeY/1.333);*/
  fill(131, 181, 209);
  rect(timeDateX, timeDateY, timeDateSizeX, timeDateSizeY, roundness);
  rect(timeDateX, timeDateY + margin + timeDateSizeY, timeDateSizeX, timeDateSizeY, roundness);
  rect(continueX, continueY, continueSizeX, continueSizeY, roundness);
  popStyle();
}

void drawBanner() {
  pushStyle();
  fill(131, 181, 209);
  rect(logoX, logoY, logoSize, logoSize, roundness);
  textSize(90);
  fill(232, 237, 238);
  text("StarLine", bannerX, bannerY);
  popStyle();
}

void drawUbi() {
  pushStyle();
  bUBIactual.display(p,po);
  fill(114, 110, 151);
   rect(ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY, roundness);
   fill(232, 237, 238);
   /*textSize(26);
   text("Ubicación actual", width/2, ubiActualY + ubiActualSizeY/1.333);
   fill(131, 181, 209);
   rect(ubiScrollX, ubiScrollY, ubiScrollSizeX, ubiScrollSizeY, roundness);*/
  popStyle();
}

void drawCont() {
  pushStyle();
  //bCONT.displayB();
  /*rect(continueX, continueY, continueSizeX, continueSizeY, roundness);
   fill(232, 237, 238);
   textSize(26);
   text("Continuar", continueX + continueSizeX/2, continueY + continueSizeY/1.333);*/
  popStyle();
}
void drawBack() {
  pushStyle();
  //bBACK.displayB();
  /*rect(backX, backY, backSizeX, backSizeY, roundness);
   fill(232, 237, 238);
   textSize(26);
   text("Atrás", backX + backSizeX/2, backY + backSizeY/1.333);*/
  popStyle();
}

void configButt() {
  /*fill(114, 110, 151);
   rect(configX, configY, configSize, configSize, roundness);*/
  bCONFIG.display(p,po);
}

void drawObjectList() {
  fill(114, 110, 151);
  rect(searchBarX, searchBarY, searchBarSizeX, searchBarSizeY, roundness);

  /*fill(131, 181, 209);
   rect(rectObjectsX, rectObjectsY, rectObjectsSizeX, rectObjectsSizeY, roundness);
   fill(114, 110, 151);
   rect(imgRectObjectsX, imgRectObjectsY, imgRectObjectsSize, imgRectObjectsSize, roundness);
   fill(114, 110, 151);
   rect(rectObjectsX, rectObjectsY + rectObjectsSizeY + margin/4, rectObjectsSizeX, rectObjectsSizeY, roundness);
   fill(131, 181, 209);
   rect(imgRectObjectsX, imgRectObjectsY + rectObjectsSizeY + margin/4, imgRectObjectsSize, imgRectObjectsSize, roundness);
   fill(131, 181, 209);
   rect(rectObjectsX, rectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, rectObjectsSizeX, rectObjectsSizeY, roundness);
   fill(114, 110, 151);
   rect(imgRectObjectsX, imgRectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, imgRectObjectsSize, imgRectObjectsSize, roundness);
   fill(114, 110, 151);
   rect(rectObjectsX, rectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, rectObjectsSizeX, rectObjectsSizeY, roundness);
   fill(131, 181, 209);
   rect(imgRectObjectsX, imgRectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, imgRectObjectsSize, imgRectObjectsSize, roundness);*/
   //b16.displayB());
   
   pc.display(50, 50, cardsW, cardsH);
  
  // Dibuixa els botons
  b1.display(b,bo);
  b2.display(p,po);
  
 }

void drawObjectsBottom() {
  fill(131, 181, 209);
  rect(objectsBottomX, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX + logoSize*2, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX + logoSize*4, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX - logoSize*2, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX - logoSize*4, objectsBottomY, logoSize, logoSize, roundness);
}

void drawBlackboards() {
  fill(131, 181, 209);
  rect(blackboardX, blackboardY, blackboardSizeX, blackboardSizeY, roundness);
  rect(width-blackboardX-blackboardSizeX, blackboardY, blackboardSizeX, blackboardSizeY, roundness);
}

void drawInfo() {

  fill(p);
  rect(bigImgX, bigImgY-margin/2, bigImgSizeX, bigImgSizeY, roundness);
  fill(b);
  /*fill(131, 181, 209);
   rect(infoRectX, infoRectY, infoRectSizeX, infoRectSizeY, roundness);
   fill(114, 110, 151);
   rect(infoRectX+infoRectSizeX+ margin/2, infoRectY, infoRectSizeX, infoRectSizeY, roundness);
   
   fill(114, 110, 151);
   rect(infoRectX, infoRectY + infoRectSizeY + margin/4, infoRectSizeX, infoRectSizeY, roundness);
   fill(131, 181, 209);
   rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY + margin/4, infoRectSizeX, infoRectSizeY, roundness);
   
   fill(131, 181, 209);
   rect(infoRectX, infoRectY + infoRectSizeY*2 + (margin/4)*2, infoRectSizeX, infoRectSizeY, roundness);
   fill(114, 110, 151);
   rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*2 + (margin/4)*2, infoRectSizeX, infoRectSizeY, roundness);
   
   fill(114, 110, 151);
   rect(infoRectX, infoRectY + infoRectSizeY*3 + (margin/4)*3, infoRectSizeX, infoRectSizeY, roundness);
   fill(131, 181, 209);
   rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*3 + (margin/4)*3, infoRectSizeX, infoRectSizeY, roundness);
   
   fill(131, 181, 209);
   rect(infoRectX, infoRectY + infoRectSizeY*4 + (margin/4)*4, infoRectSizeX, infoRectSizeY, roundness);
   fill(114, 110, 151);
   rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*4 + (margin/4)*4, infoRectSizeX, infoRectSizeY, roundness);
   
   fill(114, 110, 151);
   rect(infoRectX, infoRectY + infoRectSizeY*5 + (margin/4)*5, infoRectSizeX, infoRectSizeY, roundness);
   fill(131, 181, 209);
   rect(infoRectX+infoRectSizeX+ margin/2, infoRectY + infoRectSizeY*5 + (margin/4)*5, infoRectSizeX, infoRectSizeY, roundness);*/

    t.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
}

void drawObjectListInfo() {
  pushStyle();
  fill(p);
  rect(searchBarLX, searchBarY, searchBarSizeLX, searchBarSizeY, roundness);

  fill(b);
  rect(rectObjectsLX, rectObjectsY, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(p);
  rect(imgRectObjectsLX, imgRectObjectsY, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(p);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY + margin/4, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(b);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY + margin/4, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(b);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(p);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(p);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(b);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, imgRectObjectsSize, imgRectObjectsSize, roundness);


  popStyle();
}
