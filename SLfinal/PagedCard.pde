class PagedCard {

  String[][] cardsData;    // Datos de las cards
  Card[] cards;            // Cards
  int numCards;            // Número total de Cards
  int numCardsPage;        // Número de Cards en 1 Página

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

  // Dibuija mesa
  void display() {
    pushStyle();
    // Dibuja Cards correspodientes a la Página
    int firstCardPage = numCardsPage*numPage;
    int lastCardPage  = numCardsPage*(numPage+1) - 1;
    int nc = 0;
    for (int i = firstCardPage; i <= lastCardPage; i++) {
      if (i<cards.length && cards[i]!=null) {
        //println(i);
        cards[i].display(i==selectedCard);
        nc++;
      }
    }
    // Información de la Página
    fill(n);
    textSize(18);
    text("Pag:"+(this.numPage+1)+"/"+(this.numTotalPages+1), x +margin+margin/2.2, y + hCard *nc + (margin/4)*7);
    popStyle();
  }
  
  void checkCardSelection(){
    int firstCardPage = numCardsPage*numPage;
    int lastCardPage  = numCardsPage*(numPage+1) - 1;
    selected = false;
    for (int i = firstCardPage; i <= lastCardPage; i++) {
      if (i<cards.length && cards[i]!=null && cards[i].mouseOver()) {
        selectedCard = i;
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
