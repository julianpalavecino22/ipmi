// palavecino julian 

PImage img1;
PImage img2;
PImage img3;


PFont tipografia;
PFont tipografia2;
PFont tipografia3;

int contador;

String titulo;
String creacion;
String jugabilidad;


float posX = -100; 
float velocidad = 1;
float opacidad = 0;
float posY2 = 500;

void setup(){
  
size (640, 480);
img1 = loadImage("imagen1.jpg");
img2 = loadImage("imagen2.jpg");
img3 = loadImage("imagen3.jpg");
tipografia = loadFont ("tipografia.vlw");
contador = 0;
titulo = "PING PONG";
creacion = "Cuando se creo? \nEl ping pong o tenis de mesa se originó en Inglaterra \na fines del siglo XIX, comenzó como una versión de salón\n del tenis tradicional y fue reconocido oficialmente \ncomo deporte por la International Table Tennis \nFederation (ITTF) en 1926. Este es un deporte\n olímpico desde 1988.";
jugabilidad = "Qué es el Ping Pong? El Ping Pong, también conocido  \ncomo tenis de mesa, es un juego rápido y dinámico donde \n dos jugadores se enfrentan golpeando una pequeña pelota \n con paletas.¿Cómo se juega?Cada jugador controla una paleta  \ny debe evitar que la pelota cruce su lado. El objetivo es devolverla \n hacia el oponente sin que pueda alcanzarla.Si la pelota pasa  \ntu paleta, el rival gana un punto.";
noStroke ();
tipografia2 = loadFont ("tipografia2.vlw");
tipografia3 = loadFont ("tipografia3.vlw");
background (255); 
}

void draw(){
  
  // frame 1
 contador ++;
 if (contador<=400){
   image(img1,0,0,width, height);
   fill (200, opacidad);
   textFont (tipografia);
   textSize (45);
   textAlign(CENTER);
   text (titulo,320, 110);
   fill (0);
   textAlign(LEFT);
   textSize (40);
   fill(255,0,0);
   textSize(15);
   fill (255);
   opacidad += 2;
   posX =-500;
   
   
   
   
   
   }
   
   // frame 2
 else if (contador> 400 && contador<=1000){
   image (img2, 0, 0, width, height); 
   textFont(tipografia2);
   fill(255);
   textSize(20);
   text(creacion,posX, 150,640,200);
 
  if (posX <= 90) {
    posX +=3;
    
    }
  } 
    

   // frame 3
   else if (contador > 1000) {
  image(img3, 0, 0, width, height);
  textFont(tipografia3);
  fill(255);
  textSize(16);
  text(jugabilidad, 320, posY2);
  

  
  // boton
  fill(200, 0, 0);  
  rect(465, 400, 140, 40, 10);  
  fill(255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Reiniciar", 465 + 70, 400 + 20); 

  
  if (posY2 > 95) {
    posY2--;

  
  }


   }
 }
    
void mousePressed() {
// reiniciar variables
  if (contador > 1000 && mouseX > 465 && mouseX < 605 && mouseY > 400 && mouseY < 440) {
    contador = 0;
    opacidad = 0;
    posX = -100;
    posY2 = 500;
  }
}
