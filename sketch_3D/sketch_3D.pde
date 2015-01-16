void setup() {
  size(1000, 1000, P3D);
}

void draw() {
  background(0,150,0);
  translate(mouseX, mouseY);
  rotateX(mouseX * 0.01);
  rotateY(mouseY * 0.01);
  stroke(255, 0, 0);
  fill(0, 0, 150);
  float radius = height/2  * (1 + sin(frameCount*0.02));
  lights();
  sphere(radius);
}

