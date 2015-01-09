Robot greg, gary;
void setup() {
  size(480, 320);

  greg = new Robot(100);
  gary = new Robot(100);
}

void draw() {
  background(#FFFFC0);

  greg.drawRobot();
  greg.easeTowards(mouseX, mouseY);
  gary.drawRobot();
  gary.easeTowards(greg.x, greg.y);
}

