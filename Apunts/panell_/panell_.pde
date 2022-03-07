// Components GUI
// Panells d'informació

// Panell d'informació
Panell p;

// Tipografia del panell
PFont font1, font2;

// Textos Panell
String titolPanell = "Informació";
String textPanell  = "Trivio és una app educativa per a l'aprenentage de la Informàtica. El seu format de joc pretén que sigui divertida i bla bla bla";

void setup(){
  
  size(800, 800);      // Dimensions pantalla
  
  // Panell
  p = new Panell(titolPanell, textPanell, 70, 100, 650, 660);
  p.setIcona("img.png");
  
  // Carregar tipografies
  font1 = createFont("text.ttf", 32);
  font2 = createFont("txt2.fon", 28);
}

void draw(){
  
  background(255, 100, 100);
  
  // Dibuixa el panell
  p.display();
  
}
