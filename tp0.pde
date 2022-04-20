//variables
float miStrellas = random(5,8);

void setup() {
  size(600, 600);
  background(37, 40, 80);
}

void draw() {
  background(37, 40, 80);
  miStrellas = random(5,8);
 
  //cuerpa
  stroke(0);
  strokeWeight(3);
  fill(255);
   
  //cabeza
  ellipse(300, 160, 75, 65);
  ellipse(300, 230, 150, 100);
  ellipse(300, 350, 250, 200);
  
  //brazitous
  stroke(137,107, 63);
  strokeWeight(3);
  //derecho
  line(226, 230, 174, 250);
  line( 174, 250, 201, 287);
  line(195, 278, 213, 278);
  //izquierdo
  line(374, 230, 422, 210);
  line(422, 210, 419, 149);
  line(419, 161, 405,152);
  line(420, 161, 428, 156);
   
  //monte
  stroke(0);
  strokeWeight(3);
  fill(17, 82, 53);
  ellipse(300, 600, 700, 400);
  
  //caripela
  strokeWeight(1);
  fill(255, 128, 0);
  triangle(300, 155, 300, 165, 330, 161);
  
  //ojota
  strokeWeight(1);
  fill(0);
  ellipse(290, 145, 8, 15);
  ellipse(310, 145, 8, 15);
  fill(255);
  circle(292, 147, 6);
  circle(312, 147, 6);
  
   //sombrero
  fill(0);
  strokeWeight(1);
  ellipse(300, 130, 85, 10);
  rect(275, 60, 50, 70);
  stroke(255, 0, 0);
  strokeWeight(8);
  line(277, 120, 323, 120);
  
  //bufanda
  fill(0, 100, 150);
  stroke(0);
  strokeWeight(2);
  ellipse(330, 210, 15, 65);
  ellipse(300, 180, 75, 15);
  
  //botones
  stroke(0);
  strokeWeight(3);
  fill(137,107, 63);
  circle(300, 200, 8);
  circle(300, 220, 9);
  circle(300, 240, 10);
  circle(300, 270, 12);
  circle(300, 300, 13);
  circle(300, 330, 14);
  circle(300, 360, 15);
  
  //estrellas
  fill(229, 190, 1);
  stroke(0);
  strokeWeight(1);
  circle(50,50,miStrellas);
  circle(50,150,miStrellas);
  circle(50,250,miStrellas);
  circle(50,400,miStrellas);
  circle(100,100,miStrellas);
  circle(100,200,miStrellas);
  circle(150,300,miStrellas);
  circle(200,50,miStrellas);
  circle(200,100,miStrellas);
  circle(200,200,miStrellas);
  circle(300,50,miStrellas);
  circle(400,100,miStrellas);
  circle(400,200,miStrellas);
  circle(450,50,miStrellas);
  circle(450,150,miStrellas);
  circle(450,300,miStrellas);
  circle(500,100,miStrellas);
  circle(500,200,miStrellas);
  circle(500,400,miStrellas);
  circle(550,50,miStrellas);
  circle(550,150,miStrellas);
  circle(550,300,miStrellas);
  
  //position
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
 
}
