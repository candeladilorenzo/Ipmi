//Di Lorenzo Candela
//Comisión 1
// Link de video: https://youtu.be/kmtJ6p4Rk6Q

int cuadrados = 12;
float medida = 200;
int color1, color2, color3, color4;
PImage obra;

void setup(){
size (800, 400);
obra = loadImage("cubitos.jpg");
color1 = color(0, 180, 0);
color2 = color(180, 0, 0);
color3 =color(180, 100, 0);
color4 = color(100, 0, 180);
}
void draw (){
background (255);
image (obra, 0, 0, 400, 400);
ubicarcuadraditos();
}
void keyPressed(){
if(key=='v') {
  color1 = color(0, random (50, 255), 0);
} else if (key == 'r') {
  color2 =  color(random (50,255), 0, 0);
} else if (key == 'a') {
  color3 = color (random (50, 255), random (50,255), 0);
} else if (key == 'b') {
  color4 = color(random (50, 255), 0, random (50, 255));
} else if (key == ' ') {
  restauracolores ();
}
}
