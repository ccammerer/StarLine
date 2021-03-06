// Components de la GUI
// Botons d'Imatge

// Botons de la GUI
ImageButton ib;

// Icones dels botons
PImage img1, img2;

// Dimensions dels botons
float buttonW = 340;
float buttonH = 100;

// Color de fons de l'App
color bgColor = color(255);

void setup(){
  
  size(800, 800);      // Dimensions de la Pantalla
  
  // Carregar de les imatges (icones);
  img1 = loadImage("button01.png");
  img2 = loadImage("button02.png");
  PImage[] buttonImages = {img1, img2};
  
  // Creació dels botons
  ib = new ImageButton(buttonImages, width/4, height/3, buttonW, buttonH);
  
}

void draw(){
  
  // Fons de la finestra
  background(bgColor);
  
  // Dibuixa els botons
  ib.display();
  
  // Actualitza forma del cursor
  updateCursor();
}

// En cas de pitjar el ratolí
void mousePressed(){
  
  if(ib.mouseOverButton3()){
    bgColor = color(random(255), random(255), random(255));
    
  }
    
}


// Modifica el cursor
void updateCursor(){
  
  if((ib.mouseOverButton3())){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
}
