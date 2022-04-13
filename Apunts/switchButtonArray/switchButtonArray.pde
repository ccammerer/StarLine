// Components de la GUI
// Array de Filtres

// Filtres de la GUI
SwitchFilterArray sfa;

// Dimensions de la zona de filtres
int sfW = 400;
int sfH = 100;

// Dades dels filtres
String[] info = {"Sistema Solar", "Constelaciones", "Estrellas", "Satelites artificailes", "Cielo profundo"};

// Color de fons de l'App


void setup(){
  
  size(1600, 1100); // Dimensions de la Pantalla
  
  // Creació dels filtres de switch
  sfa = new SwitchFilterArray(int(objectsBottomX + 50), int(objectsBottomY), int(8*logoSize), int(logoSize));
  
 
  aj = new PImage[5]; 
  ajb = new PImage[5];

  for (int i = 0; i< aj.length; i++) {
    aj[i] = loadImage("SS"+ i + ".png");
    println("SS"+ i + ".png");
    ajb[i] = loadImage("SSb"+ i + ".png");
  }
  
  // Establim les etiquetes (noms) dels filtres
  sfa.setData(info);

}

void draw(){
  
  // Fons de la finestra
  background(g);
  
  // Dibuixa els botons
  sfa.display();
  
  // Actualitza forma del cursor
  updateCursor();

}

// En cas de pitjar el ratolí
void mousePressed(){
  // Actualitzam els filtres
  sfa.updateFilters();
}


// Modifica el cursor
void updateCursor(){
  if(sfa.updateCursor()){
    cursor(HAND);
  }
  else {
    cursor(ARROW);
  }
}
