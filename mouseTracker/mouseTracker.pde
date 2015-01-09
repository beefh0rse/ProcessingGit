void setup() {
  size(1000, 700);
  background(0, 150, 150);
  fill(255, 0, 0);
  rectMode(CENTER);
  // frameRate(2);
  fill(255, 0, 0);
  noStroke();
}

void draw() {
  translate(mouseX, mouseY);
  if (mousePressed)
    ellipse(0, 0, 50, 50);
  if (keyPressed) {
    if (key=='4') {
      fill(0, 0, 255);
    } else if (key=='1') {
      fill(0, 255, 0);
    } else if (key=='2') {
      fill(255, 0, 0);
    } else if (key=='3') {
      fill(255, 255, 0);
    }
  }
}




