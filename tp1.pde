// Di Lorenzo Candela //
// TP 1  Comision 1 //

PImage tp1;

void setup (){
size (800, 400);
tp1 = loadImage ("tp1.jpg");

}

void draw () {
background(255);
image(tp1, 0, 0, 400, 400);

println(mouseX);
println(mouseY);
noStroke();

fill(0, 128, 255);
rect(400, 0, 400, 400);

fill(200);
rect(400, 280, 400, 160);

fill(220, 77, 1);
circle(646, 253, 80);
triangle(505, 231, 644, 213, 644, 293);
triangle(506, 231, 467, 180, 467, 280);
triangle(600, 199, 593, 222, 607, 219);
triangle(557, 206, 569, 224, 554, 226);
triangle(579, 283, 599, 269, 581, 264);
triangle(543, 265, 560, 254, 547, 249);

fill(139, 64, 0);
circle(664, 247, 17);
fill(0);
circle(664, 247, 9);
triangle(669, 274, 678, 277, 672, 283);

fill(255);
stroke(0);
quad(652, 213, 639, 213, 614, 279, 625, 286);
quad(594, 218, 568, 222, 560, 255, 580, 265);
quad(498, 221, 493, 214, 485, 255, 495, 244);

fill(0);
quad(475, 192, 467, 179, 467, 280, 473, 279);


}
