void setup() {
  size(1000, 700);
  background(0, 150, 150);
  fill(255, 0, 0);
rectMode(CENTER);
// frameRate(2);
fill(255, 0, 0, 30);
noStroke();
}

void draw() {
  translate(mouseX, mouseY);
  if(mousePressed)
  ellipse(0, 0, 100, 100);
  
  if(key=1)


}


