
// Selects de la GUI
Select hora, dia, mes, any;

// Valors dels Selects
String[] dies = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"};
String[] hores = {"Alemania(Berlín)", "Bélgica(Bruselas)", "Italia(Roma)", "España(Mallorca)", "Suiza(Berna)", "Francia(París)"};
String[] dies = {"Alemania(Berlín)", "Bélgica(Bruselas)", "Italia(Roma)", "España(Mallorca)", "Suiza(Berna)", "Francia(París)"};


// Valor numèric
int ubiNum = 0;

void setup() {

  size(1600, 1100);      // Dimensions de la Pantalla

  // Creació dels selects
  hora = new Select(listCountries, width/2-margin/4, height/2, margin/4, ubiActualSizeY);
  dia = new Select(listCountries, width/2, height/2, margin/4, ubiActualSizeY);
  any = new Select(listCountries, width/2+margin/4, height/2, margin/4, ubiActualSizeY);
}

void draw() {

  // Fons de la finestra
  background(255);

  // Dibuixa els selects
  ubi.display();

  // Actualitza forma del curs
  // Dibuixa número n
  fill(0);
  textSize(38);
  text(ubiNum, 50, 50);
}

// En cas de pitjar el ratolí
void mousePressed() {

  // Si pitjam sobre el select 1
  if (ubi.mouseOverSelect() && ubi.enabled) {
    if (!ubi.collapsed) {
      ubi.update();      // Actualitzar valor
      updateUbi();    // Fer acció amb valor
    }
    ubi.toggle();        // Plegar o desplegar
  }

  // Si pitjam sobre el select 2
}

// Modifica el color segons Select 1
void updateUbi() {
  if (ubi.selectedValue=="Alemania(Berlín)") {
    ubiNum = 1;
  } else if (ubi.selectedValue=="Bélgica(Bruselas)") {
    ubiNum = 2;
  } else if (ubi.selectedValue=="Italia(Roma)") {
    ubiNum = 3;
  } else if (ubi.selectedValue=="España(Mallorca)") {
    ubiNum = 4;
  } else if (ubi.selectedValue=="Suiza(Berna)") {
    ubiNum = 5;
  } else if (ubi.selectedValue=="Francia(París)") {
    ubiNum = 6;
  }
}
