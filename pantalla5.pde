String finalcredits;
String datafinal;
String fin;
int xx = 500;
int yy = 380;
int ancho= 100;
int alto=60;
float m=250;
float velm=0;
float n=630;
float o=910;


void pantalla5(){
  background(0);
  
   m=m - velm;
  n=n - velm;
  o=o- velm;
    
  //TEXTO
  fin="The end";
  textFont(fuente4);
  fuente4 = loadFont("PalaceScriptMT-48.vlw");
  textSize(200);
  textAlign(CENTER);
  fill(255);
  text(fin, 300, m);
   
  //TEXTO FINAL
  textFont(fuenteNueva);
  
  finalcredits = "Music composed and conducted by \n BERNARD HERRMAN \n Special Effects....VERNON L. WALKER, a.s.c \n Art Director....VAN NEST POLGLASE \n Associate........PERRY FERGUSON \n Editing.............ROBERT WISE \n Recording........  JAMES G. STEWART \n Costumes........EDWARD STEVENSON";
  datafinal= "Distirbuted by RKO Radio Pictures. Inc \n SOUND SYSTEM \n COPYRIGHT MCMXLI RKO RADIO PICTURES,INC. \n ALL RIGHT RESERVED ";
  
  textSize(24);
  text(finalcredits, 300, n);
  textSize(15);
  text(datafinal, 300, o);
  
  
  //ANIMACION TEXTO
  if(tiempo>1650){
    velm=1;
  }
 if (tiempo>2200){
   velm=0;
 }
  
  
  //BOTON REINICIO
  fill(0,250,0);
  rect(xx, yy, ancho, alto, 28);
  textSize(55);
  fill(0);
  text("<<", 545, 430);
  
  
}

void mousePressed(){ 
  if ((mouseX>xx) && (mouseX<xx+ancho) && (mouseY>yy) && (mouseY< yy+alto)){
    tiempo = 0;
    r1=30;
    m=250;
    n=630;
    o=910;
  }
}
