// Variable de Calendari
Calendari c;

String[][] datesClau = {{"2021-03-15", "CUMPLE"}, {"2021-03-28", "FESTA"}};

void setup() {
  size(1600, 1100);
  // Crea el Calendari
  c = new Calendari(int(ubiActualX), int(ubiScrollY), int(ubiActualSizeX), 240, datesClau);
}

void draw() {

  background(g);

  // Dibuixa el calendari
  c.display();
}

void keyPressed() {
  // Anar un mes enrere
  if (keyCode==LEFT) {
    c.prevMonth();
    println("PREV MONTH");
  }
  // Anar un mes endavant
  else if (keyCode==RIGHT) {
    c.nextMonth();
    println("PREV MONTH");
  }
}

void mousePressed() {
  // Comprovar si clicam sobre botons del Calendari
  c.checkButtons();
}
import java.util.Calendar;
