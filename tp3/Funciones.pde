void ubicarcuadraditos() { //esta funcion ubica y le da color a los cuadraditos
int xinicio = 400;
int yinicio = 0;

for (int fila = 0; fila < 2; fila ++){
  for (int columna = 0; columna < 2; columna ++) {
  int x = xinicio + 100 + columna * 200; //para calcular la posx del cuadrado
  int y = yinicio + 100 + fila * 200; // para calcular la posy del cuadrado
  int colorcuadrado;
  if (fila == 0 && columna == 0) {
  colorcuadrado = color1;
  } else if (fila == 0 && columna == 1) {
    colorcuadrado = color2;
  } else if (fila == 1 && columna == 0) {
    colorcuadrado = color3;
  } else {
    colorcuadrado = color4;
  } 
  dibujarcuadraditos(x, y, cuadrados, medida, colorcuadrado);
    }
  }
}
void dibujarcuadraditos(int x, int y, int cuadrados, float medida, int colorcuadrado){ //esta es para dibujar los cuadrados
noStroke ();
rectMode(CENTER);
float rojoinicial =red(colorcuadrado);
float verdeinicial = green(colorcuadrado);
float azulinicial = blue(colorcuadrado);

float rojofinal = 255;
float verdefinal = 255;
float azulfinal = 255;

for (int i = 0; i < cuadrados; i++) { //este for es para dibujar los cuadraditos uno adentro del otro, i es cero; y si i es menor que cuadrados (osea 12); entonces se forma otro cuadrado
  float degrade = (float)i / (cuadrados -1); //esto para hacer los degradados y los maps lo calcula
  int r = (int)map (degrade, 0, 1, rojoinicial, rojofinal);
  int g = (int) map (degrade, 0, 1, verdeinicial, verdefinal);
  int b = (int) map (degrade, 0, 1, azulinicial, azulfinal);
  
  int colornuevo = color (r, g, b); //este es el color que se forma de los maps anteriores
  fill (colornuevo);
  float tam = medida - i * (medida / cuadrados); //este calcula la medida de cada cuadrado a medida que se van achicand
  rect(x, y, tam, tam);
   }
}

void restauracolores (){
color1 = color(0, 180, 0);
color2 = color(180, 0, 0);
color3 =color(180, 100, 0);
color4 = color(100, 0, 180);
}
