// Candela Di Lorenzo //
// legajo: 120296/0  DNI: 41988874//
// Comisión 1//

PFont fuente;
PImage imagen1, imagen2, imagen3;
String cast, serie, estado;
int py, px, x, pantalla, segundos;
color violeta;

void setup() {
  size(640, 480);
  py = height;
  x = 30;
  px = 500;
  fuente = loadFont("artisanale.vlw");
  textFont (fuente, 43);
  serie = "Wednesday (titulada Merlina en Hispanoamérica y Miércoles en España) es una serie de televisión por internet estadounidense de misterio y comedia oscura, basada en el personaje Wednesday Addams de The Addams Family. Creada por Alfred Gough y Miles Millar, la serie está producida por MGM Television y distribuida por Netflix";
  imagen1 = loadImage("Merlina.jpg");
  imagen2= loadImage ("Cast.jpg");
  imagen3 = loadImage("MerlinaBoton.png");
  violeta = color(75,50,130);
}

void draw() {
  background(violeta);

  if (pantalla == 1) {
    image(imagen1, 0, 0);
  } else if (pantalla == 2) {
    textAlign(CENTER, CENTER);
    stroke(255);
    text(serie, x, 50, 440, 400);
    if (x > -100 && x < 100) {
    x ++;
  }
  
  } else if (pantalla == 3) {
    image(imagen2, -15, 0);
    textAlign(CENTER, CENTER);
    stroke(255);
    text("Jenna Ortega como Merlina Addams \n Catherine Zeta-Jones como Morticia Addams \n Luiz Guzmán como Homero Addams \n Isaac Ordoñez como Pericles Addams \n Victor Dorobantu como Dedos", width/2, py);
    if (py > 300) {
      py --;
    }
  } else if (pantalla == 4) {
    image(imagen3, 300,280);
    text("Click aquí para reiniciar", px, height/2);
  if (px > 320) {
    px --;
  }
  }
 
    if (frameCount % 60 == 0) {
      segundos++;
    }
    if (segundos == 0) {
      pantalla = 1;
    } else if (segundos >= 3 && segundos <= 10) {
      pantalla = 2;
    } else if (segundos >10 && segundos < 20) {
      pantalla = 3;
    } else if (segundos >20)
    pantalla = 4;
  }

void mousePressed (){
if (pantalla == 4){
  segundos = 0;
  py = height;
  x = 30;
  px = 500;
}
}
