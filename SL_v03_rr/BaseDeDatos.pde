import de.bezier.data.sql.*;

// Objecte de connexió a la BBDD
MySQL msql;

// Paràmetres de la connexió
String user     = "admin2";
String pass     = "12345";
String database = "stars";


// Connexió
void connexioBBDD() {

  msql = new MySQL( this, "localhost", database, user, pass );

  // Si la connexió s'ha establert
  if (msql.connect()) {
    // La connexió s'ha establert correctament
    println("Connexió establerta :)");
  } else {
    // La connexió ha fallat!!!
    println("Error de Connexió :(");
  }
}

int getNumRowsAstros() {
  String q = "SELECT COUNT(*) AS n FROM astro a, categoria c WHERE a.categoria=c.id ORDER BY a.nombre ASC";
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}


String[][] getInfoAstros() {
  int numFiles = getNumRowsAstros();
  String[][] info = new String[numFiles][5];
  String q = "SELECT a.id AS id, a.nombre AS nombre, c.nombre AS categoria, a.descripcion AS descripcion, a.f AS f "+
    "FROM astro a, categoria c WHERE a.categoria=c.id ORDER BY a.nombre ASC";
  msql.query(q);
  int nr=0;
  while (msql.next()) {
    info[nr][0] = msql.getString("nombre");
    info[nr][1] = msql.getString("categoria");
    info[nr][2] = msql.getString("descripcion");
    info[nr][3] = String.valueOf(msql.getInt("id"));
    info[nr][4] = String.valueOf(msql.getInt("f"));
    nr++;
  }
  return info;
}

int getNumRowsAstrosTipo(String categories) {
  String q = "SELECT COUNT(*) AS n FROM astro a, categoria c WHERE a.categoria=c.id AND c.nombre IN ("+categories+")";
  println(q);
  msql.query(q);
  msql.next();
  return msql.getInt("n");
}

String[][] getInfoAstrosTipo(String categories) {
  int numFiles = getNumRowsAstrosTipo(categories);
  String[][] info = new String[numFiles][5];
  String q = "SELECT a.id AS id,  a.nombre AS nombre, c.nombre AS categoria, a.descripcion AS descripcion, a.f AS f "+
    "FROM astro a, categoria c WHERE a.categoria=c.id AND c.nombre IN ("+categories+") ORDER BY a.nombre ASC";
  println(q);
  msql.query(q);
  int nr=0;
  while (msql.next()) {
    info[nr][0] = msql.getString("nombre");
    info[nr][1] = msql.getString("categoria");
    info[nr][2] = msql.getString("descripcion");
    info[nr][3] = String.valueOf(msql.getInt("id"));
    info[nr][4] = String.valueOf(msql.getInt("f"));
    nr++;
  }
  return info;
}


String[] getInfoAstro(int ida) {
  int numCols = 15;
  String[] info = new String[numCols];
  String q = "SELECT * FROM astro a WHERE a.id='"+ida+"'";
  msql.query(q);
  msql.next();
  info[0] = String.valueOf(msql.getInt("id"));
  info[1] = msql.getString("nombre");
  info[2] = msql.getString("descripcion");
  info[3] = msql.getString("hora_salida");
  info[4] = msql.getString("hora_puesta");
  info[5] = msql.getString("magn_aparente");
  info[6] = msql.getString("magn_absoluta");
  info[7] = msql.getString("distanciatierra");
  info[8] = msql.getString("distancia_sol");
  info[9] = msql.getString("duracion_dia");
  info[10] = msql.getString("duracion_ano");
  info[11] = msql.getString("radio");
  info[12] = msql.getString("ar");
  info[13] = msql.getString("dec");
  info[14] = String.valueOf(msql.getInt("f"));

  return info;
}


void printArray2D(String[][] dades) {
  for (int f=0; f<dades.length; f++) {
    for (int c=0; c<dades[f].length; c++) {
      print(dades[f][c]+" \t ");
    }
    println();
  }
}
