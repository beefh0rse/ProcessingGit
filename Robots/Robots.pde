ArrayList<Robot> allMyRobots = new ArrayList<Robot>();
int numberOfRobots = 10;

Robot greg, gary;
void setup() {
  size(1000, 1000);
  for (int robotCtr = 0; robotCtr < numberOfRobots; ++robotCtr) {
    allMyRobots.add(new Robot(100, 0.1));
  }
}

void draw() {
  background(#FFFFC0);
  //ease twords previous robot
  Robot previousRobot = allMyRobots.get(0);
  previousRobot.easeTowards(mouseX, mouseY);
  for (int robotCtr = 1; robotCtr < numberOfRobots; ++robotCtr) {
    Robot nextRobot = allMyRobots.get(robotCtr);
    nextRobot.easeTowards(previousRobot.x, previousRobot.y);
    previousRobot = nextRobot;
  }

  //draw robots
  for (int robotCtr = numberOfRobots - 1; robotCtr >= 0; --robotCtr) {
    allMyRobots.get(robotCtr).drawRobot();
  }
}

