PImage antena;
PImage nubes;
PFont fuente2;
PFont fuenteTap;
String an;
String rko;
String radio;
String picture;
float r1 = 30;
float value;
float colorin;




void pantalla2(){
  
 image(antena, 0, 0, 600, 450);
 image(nubes, 0,0, width, height);
 
 //CIRCULO BOTON
  ellipseMode(CENTER);
  strokeWeight(4);
  fill(100, 28, 52);
  ellipse(299,52, 30,30);
  textSize(8);
  fuenteTap=loadFont("Calibri-Bold-15.vlw");
  textFont(fuenteTap);
  fill(0);
  text("TAP",311,54);
  
  //TEXTO
  an = "an";
  rko = "rko";
  radio = "radio";
  picture = "picture";
  fuente2=loadFont("Pristina-Regular-48.vlw");
  textFont(fuente2);
  fill(colorin);
  textSize(100);
  
  //ANIMACION TEXTO
  if(tiempo>350){
  text(an, 250, 150);}
  if(tiempo>400){
  text(rko, 450, 150);}
  
  if (tiempo>500){
  text(radio, 240, 250);}
  if (tiempo>580){
  text(picture, 590, 250);}
    
}


//BOTON Y EFECTITO (tiradisimo de los pelo)
void mouseClicked(){
  float d1 = dist(mouseX, mouseY, 299, 52);
  r1=r1+10;
  colorin=random(0,255);
  if (d1 < 30){
    noFill();
    strokeWeight(6);
    
   circle(299, 52, r1);
   circle(299, 52, (r1*1.5));
   circle(299, 52, (r1*2));
   circle(299, 52, (r1*2.5));
   circle(299, 52, (r1*3));
   circle(299, 52, (r1*3.5));
   circle(299, 52, (r1*4));
   circle(299, 52, (r1*4.5));
   circle(299, 52, (r1*5));
   circle(299, 52, (r1*5.5));
   circle(299, 52, (r1*6));
   circle(299, 52, (r1*6.5));
   circle(299, 52, (r1*7));  
  }

}
