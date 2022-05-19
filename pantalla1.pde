String titulo1;
String titulitod;
String titulitoi;
PFont fuenteNueva;

void pantalla1(){
  //TEXTO
  titulo1 = "THE\n MOVIE TITLE\n STILLS COLLECTION";
  titulitod = "COPYRIGHT MMXVII \n ANNAYS.COM \n ALL RIGHTS RESERVED";
  titulitoi = "TECHNICOLOR";
  
  //FUENTE
  fuenteNueva = loadFont("ClarendonBT-Black-48.vlw");
  textFont(fuenteNueva);
  
  background(0);
  fill(0, 0, 250);
  textAlign(CENTER);
  textSize(30);
  text(titulo1, 300, 200);
  textAlign(LEFT);
  textSize(10);
  text(titulitod, 150, 300);
  textAlign(RIGHT);
  textSize(10);
  text(titulitoi, 450, 300);


}
