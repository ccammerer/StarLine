void drawFyH() {
  pushStyle();
  bFYH.display(p, po);
  /*fill(114, 110, 151);
   rect(ubiActualX, ubiActualY, ubiActualSizeX, ubiActualSizeY, roundness);
   fill(232, 237, 238);
   textSize(26);
   text("Fecha y hora del sistema", width/2, ubiActualY + ubiActualSizeY/1.333);*/
  fill(p);
  /*rect(timeDateX, timeDateY, timeDateSizeX, timeDateSizeY, roundness);
   rect(timeDateX, timeDateY + margin + timeDateSizeY, timeDateSizeX, timeDateSizeY, roundness);*/
  c.display();
  pushStyle();
  if (selectedText!=null) {
    pushStyle();
    textAlign(RIGHT);
    fill(n);
    text(selectedText, width/2, height/2);
    popStyle();
  }

  h.display();
  m.display();
  popStyle();
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
  fill(p);
  tList.display();
}

void drawObjectsBottom() {
  fill(p);
  /*rect(objectsBottomX, objectsBottomY, logoSize, logoSize, roundness);
   rect(objectsBottomX + logoSize*2, objectsBottomY, logoSize, logoSize, roundness);
   rect(objectsBottomX + logoSize*4, objectsBottomY, logoSize, logoSize, roundness);
   rect(objectsBottomX + logoSize*6, objectsBottomY, logoSize, logoSize, roundness);
   rect(objectsBottomX + logoSize*8, objectsBottomY, logoSize, logoSize, roundness);*/
  // Dibuixa els botons
  sfa.display();

  // Actualitza forma del cursor
  updateCursor();
}

void drawBlackboards() {

  fill(p);
  l.display();
  l2.display();
}

void drawInfo() {

  fill(n);
  rect(bigImgX, bigImgY-margin/2, bigImgSizeX, bigImgSizeY, roundness);
  fill(g);

  tMer.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
  /*else if (selectedCard == 1) {
   tVen.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
   } else if (selectedCard == 2) {
   tTie.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
   } else if (selectedCard == 3) {
   tMar.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
   } else if (selectedCard == 4) {
   tJup.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
   } else if (selectedCard == 5) {
   tSat.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
   } else if (selectedCard == 6) {
   tUra.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
   } else if (selectedCard == 7) {
   tNep.display(int(infoRectX-margin*3), int(infoRectY+1), int(infoRectSizeX*2), int( bigImgSizeY - margin*1.25));
   }*/
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
  textAlign(CORNER);
  textSize(24);
  text("Mostrar solo:", width/3, height/2.1, 50);
  cbl.display();
  cbl3.display();
  updateCursor();
  popStyle();
}

void drawData() {
  if (selectedValueUbi != null) {
    pushStyle();
    textAlign(CORNER);
    fill(n);
    textSize(18);
    text("Ubicación: " + selectedValueUbi, margin/2, 2*margin);
    popStyle();
  }
  if (c.selectedDay != 0) {
    pushStyle();
    textAlign(CORNER);
    fill(n);
    textSize(18);
    text("Fecha: " + c.selectedDay + "/" + c.selectedMonth + "/" + c.selectedYear, margin/2, 3*margin);
    popStyle();
  }
  if (h.text != "" && m.text != "") {
    pushStyle();
    textAlign(CORNER);
    fill(n);
    textSize(18);
    text("Hora: " + h.text +  ":" + m.text, margin/2, 4*margin);
    popStyle();
  }
}
