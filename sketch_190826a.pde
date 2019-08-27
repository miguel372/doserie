float x=100, y=100;
float velocidad = 1.0;
float cabeza=60;
int direction = 1;
void setup() {
  size(200, 200);
  background(255);
  smooth();
  ellipseMode(CENTER);
  rectMode(CENTER);
}
int linea=10;
void draw() {
  point(0, 30);
  point(50, 30);

  if (x<170) {
    //cuerpo 
    stroke(0);
    fill(150, 0, 0);
    rect(x, y, 20, 100);
    //cabeza
    fill(0, 0, 255);
    ellipse(x, y-30, cabeza, cabeza);
  }
  x += velocidad * direction;
  if ((x>width-cabeza) ||(x<cabeza)) {
    direction = -direction;
  }
  line(0, linea, width, linea);
  linea=linea+2;
}
