class Planet {
  String name;
  int centerX;
  int centerY; 
  float x;
  float y = 0;
  int colour;
  float diameter;
  float angle = 0;
  float distanceFromCenter;
  float translationSpeed;

  Planet(String tempName, int tempcenterX, int tempcenterY, float tempdistanceFromCenter, int tempColour, float tempDiameter, float temptranslationSpeed) {
    name = tempName;
    centerX = tempcenterX;
    centerY =  tempcenterY;
    distanceFromCenter = tempdistanceFromCenter;
    colour = tempColour;
    diameter = tempDiameter;
    translationSpeed = temptranslationSpeed;
    x = centerX + distanceFromCenter;
    y = centerY;
  };

  void displayOrbit() {
    noFill();
    stroke(255);
    strokeWeight(2);
    circle(centerX, centerY, distanceFromCenter);
    noStroke();
  };

  void display() {
    fill(colour);
    circle (x, y, diameter);
  };


  void translation(float tempSpeed) {
    x = ((float) (centerX + distanceFromCenter / 2 * Math.cos(Math.toRadians(angle))));
    y = ((float) (centerY - distanceFromCenter / 2 * Math.sin(Math.toRadians(angle))));
    if (angle >= 360) {
      angle = 0;
    }
    angle = angle + translationSpeed * tempSpeed;
  }
};
