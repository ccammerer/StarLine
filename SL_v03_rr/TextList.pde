class TextList {

  float x, y, w, h;          // Posició i dimensions
  String[][] texts;          // Valors possibles

  TextField textField;       // Camp de text

  int selectedIndex;         // Fila seleccionada
  String selectedId;         // Id Seleccionat
  String selectedValue;      // Valor Seleccionat

  boolean enabled;           // Abilitat / desabilitat

  int numMatchs = 0;
  ArrayList<Button1> buttons;

  TextList(String[][] texts, float x, float y, float w, float h) {

    this.texts = texts;
    this.selectedId = "";
    this.selectedValue = "";
    this.x = x; 
    this.y = y;
    this.w = w; 
    this.h = h;
    this.enabled = true;

    this.textField = new TextField((int)x, (int)y, (int)w, (int)h);
    this.buttons = new ArrayList<Button1>();
  }

  void display() {
    pushStyle();
    textField.display();

    for(Button1 search: buttons){
      search.display(g,go);
    }
    popStyle();
  }

  void update() {

    String searchFor = this.textField.text;
    println("SEARCH FOR: "+searchFor);
    
    this.numMatchs = 0;
    this.buttons = new ArrayList<Button1>();
    
    if (searchFor.length() > 0) {
      for (int i=0; i<texts.length; i++) {
        if (texts[i][1].startsWith(searchFor)) {
          Button1 search= new Button1(texts[i][1], x + 10, y + h + 50 + (h + 50)*numMatchs, w, h);
          buttons.add(search);
          this.numMatchs++;
          if (this.numMatchs==5) {
            break;
          }
        }
      }
    }
  }
  
  boolean mouseOverButtons(){
    for(Button1 search: buttons){
      if(search.mouseOverButton()){
         return true;
       }
    }
    return false;
  }
  
  void buttonPressed(){
    boolean pressed = false;
     for(Button1 search: buttons){
       if(search.mouseOverButton()){
         textField.text = search.textBoto;
         this.selectedValue = search.textBoto;
         pressed = true;
       }
     }
     if(pressed){
       buttons.clear();
     }
   }
}
