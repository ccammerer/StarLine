
void drawFyH() {
  pushStyle();
  bFYH.display(p, po);
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
  textFont(banner);
  image(logo, logoX, 15+40, logoSize, logoSize);
  textSize(85);
  fill(n);
  text("StarLine", bannerX, bannerY+40);
  popStyle();
}

void drawUbi() {
  pushStyle();
  bUBIactual.display(p, po);

  /*fill(114, 110, 151);
   rect(ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY, roundness);
   fill(232, 237, 238);
     /*textSize(26);
   text("Ubicación actual", width/2, ubiActualY + ubiActualSizeY/1.333);
   */fill(g);
   rect(ubiScrollX, ubiScrollY, ubiScrollSizeX, ubiScrollSizeY, roundness);
  popStyle();
}

void drawCont() {
  pushStyle();
  bCONT.display(g, go);
  popStyle();
}
void drawBack() {
  pushStyle();
  bBACK.display(g, go);
  popStyle();
}

void configButt() {
  bCONFIG.display(p, po);
}

void drawObjectList() {
  
  fill(p);
  tList.display();
  search.display(p,po);
  if(selectedText!=null){
    pushStyle();
    textAlign(RIGHT); fill(n);
    text(selectedText, width/2, height/2);
    popStyle();
  }
  pc.display();
  next.display(g, go);
  prev.display(p, po);
}

void drawObjectsBottom() {
  fill(p);
  rect(objectsBottomX, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX + logoSize*2, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX + logoSize*4, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX - logoSize*2, objectsBottomY, logoSize, logoSize, roundness);
  rect(objectsBottomX - logoSize*4, objectsBottomY, logoSize, logoSize, roundness);
}

void drawBlackboards() {
  fill(p);
  rect(blackboardX, blackboardY, blackboardSizeX, blackboardSizeY, roundness);
  rect(width-blackboardX-blackboardSizeX, blackboardY, blackboardSizeX, blackboardSizeY, roundness);
}

void drawInfo() {

  fill(p);
  rect(bigImgX, bigImgY-margin/2, bigImgSizeX, bigImgSizeY, roundness);
  fill(g);
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
  tListMini.display();
  searchMini.display(p,po);
  //rect(searchBarLX, searchBarY, searchBarSizeLX, searchBarSizeY, roundness);
  pcMini.display();
  nextMini.display(g, go);
  prevMini.display(p, po);
  /*
  fill(g);
  rect(rectObjectsLX, rectObjectsY, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(p);
  rect(imgRectObjectsLX, imgRectObjectsY, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(p);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY + margin/4, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(g);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY + margin/4, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(g);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(p);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY*2 + (margin/4)*2, imgRectObjectsSize, imgRectObjectsSize, roundness);
  fill(p);
  rect(rectObjectsLX, rectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, rectObjectsSizeLX, rectObjectsSizeY, roundness);
  fill(g);
  rect(imgRectObjectsLX, imgRectObjectsY + rectObjectsSizeY*3 + (margin/4)*3, imgRectObjectsSize, imgRectObjectsSize, roundness);

  */
  popStyle();
}
