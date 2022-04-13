class DayButton {
  
  // Dimensions del botó
  float x, y, w, h;
  
  // Data representativa
  int dia, mes, any;
  
  // Estats del botó
  boolean selected, selected2, enabled;
  
  String info;
  
  // Constructor
  DayButton(float x, float y, float w, float h, int d, int m, int a){
    this.x = x; this.y=y; this.w = w; this.h = h;
    this.dia = d; this.mes = m; this.any = a;
    this.selected = false;
    this.selected2 = false;
    this.enabled = true;
  }
  
  // Setters
  
  void setEnabled(boolean b){
    this.enabled = b;
  }
  
  void setSelected(boolean b){
    this.selected = b;
  }
  
  void setSelected2(boolean b){
    this.selected2 = b;
  }
  
  void setInfo(String info){
    this.info = info;
  }
  
  
  // Dibuixa el botó
  void display(){
    pushStyle();
    if(enabled){
      fill(g); 
    }
    else{
      fill(goo); 
    }
    stroke(0); strokeWeight(1);
    rect(x, y, w, h, 5);
    if(selected){
      fill(p); noStroke();
      ellipse(x + w/2, y+h/2, 35, 35);
    }
    if(selected2){
      fill(bl); noStroke();
      ellipse(x + w/2, y+h/2, 35, 35);
      fill(200);  textSize(10); textAlign(CENTER);
      text(info, x + w/2, y+h/1.25);
    }
    fill(0); textSize(24); textAlign(CENTER);
    text(dia, x + w/2, y + h/2 + 10);
    popStyle();
    dia1 = dia;
    mes1 = mes;
    any1 = any;
  }
  
  // Ratolí sobre el botó
  boolean mouseOver(){
    return mouseX>=this.x && mouseX<=this.x+this.w &&
           mouseY>=this.y && mouseY<=this.y+this.h;
  }
  
  
}
