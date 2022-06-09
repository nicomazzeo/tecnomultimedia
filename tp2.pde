//link al video: https://www.youtube.com/watch?v=NknWlN9lAQk&ab_channel=Ch1m3rik4l

int cant=5;
float tam;
float r=0;
float b=0;

void setup(){
  size(600,600);  
  tam =width/cant;
  ellipseMode(RADIUS);  
}

void draw(){
  background(0);
  tam = width/cant;
    
  for(int x=0; x<cant; x++){
    for(int y=0; y<cant; y++){
      float distancia = dist(mouseX, mouseY, x*tam, y*tam);
      float tono = distancia*255/dist(width, height, 0, 0);
       
      ellipse(x*tam, y*tam, tam, tam);
      if(r>125){
        b=r/2;}
        else{
          b=150;
      }
      fill(r,215,b,tono);
    }
  }
  
}

void mousePressed(){
  cant++;
  r= random(0,250);
}


void keyPressed(){ 
 cant=5;
 r=0;
}
  
