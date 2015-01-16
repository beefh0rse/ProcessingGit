class Robot {
  float wHead, x, y, easing;
  float easing = 1

  Robot(float headWidth, float easing_) {
    wHead = headWidth;
    x = width/2; 
    easing = easing_;
    y = height/2;
  }
  void drawRobot() { 
    pushMatrix();
    //move (0,0) to the center
    translate(x, y);

    float hHead = 80;//hight of head
    float rHead= wHead / 5;//radius of head
    fill(0, 0, 50, alphaLevel);
    rect(-wHead/2, -hHead, wHead, hHead);

    // draw eyes
    fill(255, 0, 0, alphaLevel);
    ellipse(-15, -30, 15, 10);
    ellipse(15, -30, 15, 10);

    //draw mouth
    fill(100, 2, 255);
    rect(-10, -15, 20, 5); 
    popMatrix();
  }

  void easeTowards(float x_, float y_) {
    x = x + easing * (x_ - x);
    y = y + easing * (y_ - y);
  }
}

