// Candela Di Lorenzo //
// legajo: 100296/0  DNI: 41988874//
// Comisión 1//

PFont fuente;
PImage imagen1, imagen3;
String cast, serie, estado;
int py, pantalla, segundos;
boolean activo;

void setup() {
  size(640, 480);
  py = height;
  fuente = loadFont("artisanale.vlw");
  textFont (fuente, 43);
  serie = "Wednesday (titulada Merlina en Hispanoamérica y Miércoles en España) es una serie de televisión por internet estadounidense de misterio y comedia oscura, basada en el personaje Wednesday Addams de The Addams Family. Creada por Alfred Gough y Miles Millar, la serie está producida por MGM Television y distribuida por Netflix";
  estado = "comienzo";
  activo = false;
  imagen1 = loadImage("Merlina.jpg");
  imagen3 = loadImage("MerlinaBoton.png");
}

void draw() {
  background(75,40,130);

  if (pantalla == 1) {
    image(imagen1, 0, 0);
  } else if (pantalla == 2) {
    textAlign(CENTER, CENTER);
    stroke(255);
    text(serie, 100, 50, 440, 400);
  } else if (pantalla == 3) {
    textAlign(CENTER, CENTER);
    stroke(255);
    text("Jenna Ortega como Merlina Addams \n Catherine Zeta-Jones como Morticia Addams \n Luiz Guzmán como Homero Addams \n Isaac Ordoñez como Pericles Addams \n Victor Dorobantu como Dedos", width/2, py);
    if (py > 50) {
      py --;
    }
  } else if (pantalla == 4) {
    image(imagen3, 300,280);
    text("Click aquí para reiniciar", width/2, height/2);
  }
  if (activo == true) {
  }
    if (frameCount % 60 == 0) {
      segundos++;
    }
    if (segundos == 0) {
      pantalla = 1;
    } else if (segundos >= 3 && segundos <= 8) {
      pantalla = 2;
    } else if (segundos >8 && segundos < 13) {
      pantalla = 3;
    } else if (segundos >13)
    pantalla = 4;
  }

void mousePressed (){
pantalla = 4;
segundos = 0;
}
