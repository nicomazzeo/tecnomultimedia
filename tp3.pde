//https://www.youtube.com/watch?v=RVeF8zH4-dk&ab_channel=Ch1m3rik4l


int cantRocas = 5;

PImage fondo;
PImage navesita;
PImage enemigo;
PImage enter;
PImage flechitas;
PImage spacebar;
PImage navesita_muerta;
PImage tefuiste;

int puntos;

float posFondo;
float velG = 6;
float posGX, posGY; 
float[] enemX, enemY, enemV; 

PFont fuente;
String estado;

float m=-250;
float velm=1;

void setup(){
  estado = "inicio";  
  
  fondo = loadImage("fondo.jpg");
  enemigo = loadImage ("meteorito.png");
  navesita = loadImage("navesita.png"); 
  enter = loadImage("enter.jpg");
  flechitas = loadImage("flechitas.jpg");
  navesita_muerta = loadImage("navesita_muerta.png");
  tefuiste = loadImage("tefuiste.png");
  
  
  enemX = new float[cantRocas];
  enemY = new float[cantRocas];
  enemV = new float[cantRocas];
  size(500 , 700);
  posGX = width / 2;
  posGY = height / 2 + 200;
  posFondo = height / 2;
  generarRocas();
  
   
}

void draw(){
  textAlign(CENTER);
  fuente= loadFont("ClarendonBT-Black-48.vlw");
  
  
  if ( estado.equals("inicio") ) {
    background( 0 );
    textFont (fuente);
    textSize(50);
    text( "VUELA VUELA", width/2, height/2-200 );
    textSize(20);
    text( "presione ENTER\n ", width/2, height/2-100 ); 
    text( " para continuar", width/2, height/2-60 );
    textSize(10);
    text("PRESIONA EL BOTON ROJO \n PARA VER LOS CREDITOS",width/2, height/2+260 );
    
    image(enter, width/2-75,height/2 , 150, 150 );
    
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+300) <= 25 ) {
      fill( 0, 200, 0 );
    } else {
      fill( 200, 0, 0 );
    }
    ellipse( width/2, height/2+300, 50, 50 );
    popStyle();
   } 
   
   
   else if ( estado.equals("instrucciones") ) {
    background( 0 );
    textSize(40);
    text( "INSTRUCCIONES", width/2, height/2-300 );
    textSize (20);
    text( "Presiona las flechitas para mover el personaje", width/2, height/2-200 );
    text( "esquiva los meteoritos o sino moris :)", width/2, height/2-170 );
    text( "CONSEGUI 1500 PTS PARA GANAR", width/2, height/2-130 );
    
    image(flechitas, width/2-75,height/2-100 , 150, 150 );
    
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
      fill( 0, 200, 0 );
    } else {
      fill( 200, 0, 0 );
    }
    ellipse( width/2, height/2+100, 50, 50 );
    popStyle();    
    text("GO",width/2, height/2+100);   
  } 
  
  
  else if ( estado.equals("jugando") ) {
   background(0);
  image(fondo, 0, posFondo, width, height);
  image(fondo, 0, posFondo - height, width, height);
  image(navesita, posGX - 90, posGY - 60, 180, 120 );
  fill(255);  
  hacerMeteorito();
  bajarMeteorito();
  
  if (chocaste()) {
      estado = "perder";
    }
  if (posFondo >= height){
    posFondo = 0;
  }
  textSize(20);
  text("Puntos: " + puntos, 80, 50);
  if (puntos >= 1500){
    estado = "ganar";
  }
}
    
  else if ( estado.equals("ganar") ) {
    background (0) ;
    textSize(50);
    text( "FELICIDADES!! ", width/2, height/2 -280 );
    textSize(20);
    text( "Lograste esquivar la lluvia de meteoritos \n que va a arrazar la humanidad para \n morir solo y congelado en tu nave espacial \n luego de comer sopa 1 mes!! ", width/2, height/2-200 );  
    text( "PRESIONA ENTER PARA VOLVER AL INICIO", width/2, height/2+150 ); 
    
    posGX = width / 2;
    posGY = height / 2 + 200;
    posFondo = height / 2;
    generarRocas();
    puntos=0;
    
    image(tefuiste,width/2-100,height/2-100, 220,220);
    image(enter, width/2-75,height/2+170 , 150, 150 );    
    } 
    
    
    else if ( estado.equals("perder") ) {
    background(0 );
    textSize(50);
    text( "TE MORISTE :( ", width/2, height/2-280 );
    textSize(25);
    text( "intentalo denuevo! \n vos podes, yo se que si <3", width/2, height/2-200 );
    textSize(20);
    text( "PRESIONA ENTER PARA VOLVER AL INICIO", width/2, height/2+130 );
    
    posGX = width / 2;
    posGY = height / 2 + 200;
    posFondo = height / 2;
    generarRocas();
    puntos=0;
    
    image(navesita_muerta,width/2-100,height/2-150, 230,230);
    image(enter, width/2-75,height/2+170 , 150, 150 );   
  }
  
  
  else if ( estado.equals("creditos") ) {
   background(0);
   textSize(20);
   textAlign(CENTER);
   fill(255);
   m=m + velm;
   text("Materia...Tecnologia multimedial 1 \n \n Alumno....Nicolás Mazzeo \n \n Profesor....Matias Jauregui \n \n TP no 3 \n \n tryhardeando un videojuego ", width/2, m);
   textSize(15);
   text("PRESIONA EL BOTON ROJO \n PARA VOLVER AL INICIO",width/2, height/2+260 );
   
   pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+300) <= 25 ) {
      fill( 0, 200, 0 );
    } else {
      fill( 200, 0, 0 );
    }
    ellipse( width/2, height/2+300, 50, 50 );
    popStyle();
}
} 


void generarRocas(){
  for (int i = 0; i < cantRocas; i++){
    enemX[i] = random(width - 30);
    enemY[i] = -random(height);
    enemV[i] = random(6) + 3;
  }
}

  
  boolean chocaste(){
  boolean toco = false;
  for (int i = 0; i < cantRocas; i++){
    if (dist(enemX[i], enemY[i], posGX - 30, posGY) < 60)
      toco = true;
  }
  return toco;
}



void bajarMeteorito(){
   if ( estado.equals("jugando")){
  for (int i = 0; i < cantRocas; i++){
    enemY[i] += velG;
  }
  posFondo += velG;
  puntos += (int) (velG / 3);
}
}

void hacerMeteorito(){
   if ( estado.equals("jugando"))  {
  for (int i = 0; i < cantRocas; i++){
    enemY[i] += enemV[i];
    if (enemY[i] > (height + 30)){
      enemX[i] = random(width - 30);
      enemY[i] = -random(height);
      enemV[i] = random(3) + 2; 
    }
    image (enemigo,enemX[i], enemY[i], 60, 60);
  }
 }   
}

void mousePressed() {
  //evento que cambia entre algunas pantallas
  if ( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
    estado = "jugando";
  }
  else if ( estado.equals("inicio") && dist( mouseX, mouseY, width/2, height/2+300) <= 25 ) {
    estado = "creditos";
    m=-200;
  }
  else if ( estado.equals("creditos") && dist( mouseX, mouseY, width/2, height/2+300) <= 25 ) {
    estado = "inicio";
  }
}

//evento que cambia entre algunas pantallas y evento de dinamica de juego.
void keyPressed(){
   if ( estado.equals("inicio") && keyCode == ENTER ) {
    estado = "instrucciones";
  }
  //condicion para reiniciar
  if ( keyCode == ENTER ) {
    if ( estado.equals("perder") || estado.equals("ganar") ) {
      reiniciar();
      estado = "inicio";
    }
  }
    
  if ( estado.equals("jugando")){  
  if (keyCode == UP){
    if (posGY > height/2)
      posGY -= velG;
    else
      bajarMeteorito();
  }
  if (keyCode == DOWN){
    posGY += velG;
  }
  if (keyCode == LEFT){
    posGX -= velG;
  }
  if (keyCode == RIGHT){
    posGX += velG;
  }
  posGX = constrain(posGX, 25, width - 25);
  posGY = constrain(posGY, 0, height - 60);
  }
}

  
 void reiniciar() {
  estado = "inicio";  
}
