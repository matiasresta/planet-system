float scale = 1.8;
int centerX;
int centerY;
int radius;
int sizeX;
int sizeY;
int anglePosition;
int angle = 0;
Planet planets[] = new Planet [9]; 
PImage starBackground;

void setup() {
  sizeX = 1000;
  sizeY = 1000;
  size(1000, 1000);
  background(0);
  stroke(255);
  strokeWeight(2);
  for (int i = 0; i < sizeX; i++) {
    for (int j = 0; j < sizeY; j++) {
      if (int(random(0, 500)) == 1) {
        point(i, j);
      };
    };
  };
  save("starBackground.jpg");
  starBackground = loadImage("starBackground.jpg");
  centerX = width /2;
  centerY = height /2;
  // NAME - Centro X - Centro Y, Distancia-Sol, Color, Tamaño, Velocidad-Orbital
  planets[0] = new Planet("Sun", centerX, centerY, 0 * scale, #FFFF00, 80 * scale, 0);
  planets[1] = new Planet("Mercury", centerX, centerY, 150 * scale, #F7D358, 20 * scale, 1.59);
  planets[2] = new Planet("Venus", centerX, centerY, 200 * scale, #FFBF00, 20 * scale, 1.175);
  planets[3] = new Planet("Earth", centerX, centerY, 250 * scale, #00FF00, 20 * scale, 1);
  planets[4] = new Planet("Mars", centerX, centerY, 300 * scale, #FF4000, 20 * scale, 0.809);
  planets[5] = new Planet("Jupiter", centerX, centerY, 350 * scale, #DF7401, 20 * scale, 0.450);
  planets[6] = new Planet("Saturn", centerX, centerY, 400 * scale, #FACC2E, 20 * scale, 0.326);
  planets[7] = new Planet("Uranus", centerX, centerY, 450 * scale, #5882FA, 20 * scale, 0.228);
  planets[8] = new Planet("Neptune", centerX, centerY, 500 * scale, #0404B4, 20 * scale, 0.181);
};


void draw() {
  image(starBackground, 0, 0);
  for (int i = 0; i < planets.length; i++) {
    planets[i]. displayOrbit();
    planets[i]. display();
    planets[i]. translation(2);
  };
};
