class PagedCard {


  String[][] cardsData;    // Dades de les Cards
  Card[] cards;            // Cards
  int numCards;            // Número total de Cards
  int numCardsPage;        // Número de Cards en 1 Pàgina

  int numPage;
  int numTotalPages;

  
  float hCard;
  float x, y, w, h;

  // Constructor
  PagedCard(int ncp) {
    this.numCardsPage = ncp;
    this.numPage = 0;
  }

  // Setters

  void setDimensions(float x, float y, float w, float h) {
    this.x = x; 
    this.y = y;
    this.w = w; 
    this.h = h;
  }

  void setData(String[][] d) {
    this.cardsData = d;
    this.numTotalPages = d.length / this.numCardsPage;
  }

  void setCards() {

    cards = new Card[this.cardsData.length];

    for (int np=0; np<=numTotalPages; np++) {
      
      int firstCardPage = numCardsPage*np;
      int lastCardPage  = numCardsPage*(np+1) - 1;
      hCard = h / (float) numCardsPage;
      float yCard = y;

      for (int i = firstCardPage; i <= lastCardPage; i++) {
        if (i<cards.length) {
          cards[i] = new Card(cardsData[i]);
          cards[i].setDimensions(x, yCard, w, hCard, roundness*1.75);
          yCard += hCard +margin/4;
        }
      }
    }
  }

 void setImages(PImage[] sS, PImage[] con) {
    for (int i=0; i<cards.length; i++) {
      if (cards[i].section=="Secció 1") {
        img = sS[i%8];
      } else {
        img = sS[i%8];
      }
      cards[i].setImage(img);
    }
  }

  void nextPage() {
    if (this.numPage<this.numTotalPages) {
      this.numPage++;
    }
  }

  void prevPage() {
    if (this.numPage>0) {
      this.numPage--;
    }
  }

  // Dibuixa taula
  void display() {
    pushStyle();
    // Dibuixa Cards corresponent a la Pàgina
    int firstCardPage = numCardsPage*numPage;
    int lastCardPage  = numCardsPage*(numPage+1) - 1;
    int nc = 0;
    for (int i = firstCardPage; i <= lastCardPage; i++) {
      if (i<cards.length && cards[i]!=null) {
        cards[i].display(i==selectedCard);
        nc++;
      }
    }

    // Informació de la Pàgina
    fill(n);
    textSize(18);
    text("Pag:"+(this.numPage+1)+"/"+(this.numTotalPages+1), x +margin+margin/2.2, y + hCard *nc + (margin/4)*7);
    popStyle();
  }
  
  void checkCardSelection(){
    int firstCardPage = numCardsPage*numPage;
    int lastCardPage  = numCardsPage*(numPage+1) - 1;
    for (int i = firstCardPage; i <= lastCardPage; i++) {
      if (i<cards.length && cards[i]!=null && cards[i].mouseOver()) {
        selectedCard = i;
        println("Selected Card: "+(i+1));
        selected = true;
        break;
      }
    }
    if(!selected){
      selectedCard = -1;
    }
    if (checkMouseOver()){
      mouseOverCards = true;
    }else {
    mouseOverCards = false;
    }
  }
  
  boolean checkMouseOver(){
    int firstCardPage = numCardsPage*numPage;
    int lastCardPage  = numCardsPage*(numPage+1) - 1;
    for (int i = firstCardPage; i <= lastCardPage; i++) {
      if (i<cards.length && cards[i]!=null && cards[i].mouseOver()) {
        return true;
      }
    }
    return false;
  }
  
  
}
