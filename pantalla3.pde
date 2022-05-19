PFont fuente3;
String mercury;
String orson;
PFont fuente4;
String by;
float x=-200;
float velx=4;
float y= 800;
float vely=3;
float tam=2;
float crecido=1;


void pantalla3(){
  
  background(0);
  
  //TEXTO
  mercury = "A MERCURY\n PRODUCTION";
  orson= "Orson Welles";
  fuente3 = loadFont("ImprintMT-Shadow-48.vlw");
  textFont(fuente3);
  fill(255);
  textSize(40);
  text(mercury,x, 75);
  textSize(70);
  text(orson, 490, y);
  
  by="by";
  fuente4 = loadFont("PalaceScriptMT-48.vlw");
  textFont(fuente4);
  textSize(tam);
  text(by, 300, 225);
  
  //ANIMACION TEXTO
  tam= tam + crecido;
  x=x + velx;
  y=y - vely;
  if(x >= 350){
    velx=0;}
    
  if (y<=350){
    vely=0;}
    
  if (tam>=140){
    crecido=0;}
}
