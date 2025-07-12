//palavecino julian 
//legajo 121140/4
//comision 2 
//https://www.youtube.com/watch?v=l2WioOKWLF4


PImage imag;
int cant=21;

float mitadDePantalla; // Comenzar desde la mitad derecha
float anchoGrilla = 800; // Ancho de la cuadrícula
float tamY =0;
float movimiento=0;

void setup() {
  size(800, 400);
  background(255);
  imag= loadImage("ilusion.jpg");
  mitadDePantalla = width / 2;
}

void draw() {
  image(imag, 0, 0, width/2, height);
  Cuadrilla();
}
void Cuadrilla() {

  tamY = height / cant; // Altura de cada rectángulo

  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {

     float tamX = map(abs(j - cant / 2), cant / 2, 0, anchoGrilla / cant, movimiento/(anchoGrilla/cant));
      float x = mitadDePantalla + juntarColumnas(j, cant, anchoGrilla);
      float y = i * tamY;

      if ((i + j) % 2 == 0) {
        fill(0); 
      } else {
        fill(255);
      }

      rect(x, y, tamX, tamY);
    }
  }
}

float juntarColumnas(int columnaActual, int cantidad, float anchoGrilla) {
  float ajustarPosicion = 0;
  for (int col = 0; col < columnaActual; col++) {
    ajustarPosicion += map(abs(col - cantidad / 2), cantidad / 2, 0, anchoGrilla / cantidad, movimiento/(anchoGrilla/cant));
  }
  return ajustarPosicion;
}
void keyPressed() {
  if (key=='a' && movimiento > 0) //para q se mueva hacia la derecha
    movimiento-=50;
  else if (key=='d' && movimiento < 2500) //para q descuente y llegue a un tope
    movimiento+=50;
  else if (key=='r') //reinico
    movimiento=0;
}
