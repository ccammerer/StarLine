

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
  //mouseUbi();
  pushStyle();
  bUBIactual.display(p, po);
  ubi.display();
  /*regions.display();
   select.display(g,go);
   updateCursor();
   
   // Mostra la informació seleccionada
   if (selectedCountry!=null) {
   pushStyle();
   textAlign(CENTER);
   fill(go);
   text("PAIS:"+selectedCountry, width/2, height/2);
   popStyle();
   }*/
  fill(go);
  //rect(ubiScrollX, ubiScrollY, ubiScrollSizeX, ubiScrollSizeY, roundness);
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
  configuracion.display();
}

void drawObjectList() {
  updateCursor();
  fill(p);
  tList.display();
  search.display(p, po);
  if (selectedText!=null) {
    pushStyle();
    textAlign(RIGHT);
    fill(n);
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
  l.display();
  l2.display();  
  
}

void drawInfo() {

  fill(p);
  rect(bigImgX, bigImgY-margin/2, bigImgSizeX, bigImgSizeY, roundness);
  fill(g);

  t.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
}

void drawObjectListInfo() {
  pushStyle();
  tListMini.display();
  searchMini.display(p, po);
  //rect(searchBarLX, searchBarY, searchBarSizeLX, searchBarSizeY, roundness);
  pcMini.display();
  nextMini.display(g, go);
  prevMini.display(p, po);
  popStyle();
}

void drawConfig() {
  pushStyle();
  text("Mostrar solo:", width/2, 2*height/3, 50);
  cbl.display();
  updateCursor();
  popStyle();
}
