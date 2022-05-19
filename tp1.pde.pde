int tiempo=0;





void setup(){
  size(600, 450);
  
  antena = loadImage("antena2.jpg");
  nubes= loadImage("nubes.png");
}
 
 
void draw(){
  //background(0);
  tiempo+=1;
  if (tiempo < 300){
    pantalla1();
  }
  if ((tiempo>300) && (tiempo<700)){
    pantalla2();
  }
  if (tiempo>700 && tiempo<1100){
    pantalla3();
  }
  if (tiempo > 1100 && tiempo < 1550){
    pantalla4();
  }
  if (tiempo > 1550){
    pantalla5();    
  }
  println(tiempo);
  println(mouseX, mouseY);
}
