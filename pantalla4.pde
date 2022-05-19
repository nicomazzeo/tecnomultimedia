float tamanio=3000;
float toychikito= 30;
String citizen;

void pantalla4(){

  background(15);
  
  //TEXTO
  textFont(fuente3);
  fuente3 = loadFont("ImprintMT-Shadow-48.vlw");
  citizen = "CITIZEN \n KANE";
  textAlign(CENTER);
  textSize( tamanio);
  text(citizen, 300, 200);
  
  //ANIMACION TEXTO
  tamanio= tamanio - toychikito;
  if(tamanio <=125){
    toychikito=0;
  }
  
}
  
 
