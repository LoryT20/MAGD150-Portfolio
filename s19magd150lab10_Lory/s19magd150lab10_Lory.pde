PImage texture;

//ambient light.
float av1, av2, av3, az1, 
  ax2, ay2, az2;

//point light.
float pv1, pv2, pv3, pz1, 
  px2, py2, pz2;

//directional light.
float dv1, dv2, dv3, dx1, dy1, dz1, 
  dx2, dy2, dz2;

int colorMode;

void setup() {
  //Load captured image onto the program.
  texture = loadImage("circle.tif");
  surface.setResizable(true);
  pixelDensity(displayDensity());
  size(640, 420, P3D);
  background(64);
  noStroke();
  
  textureMode(NORMAL);
  
  textureWrap(REPEAT);


  //ambient light.
  av1 = random(0, 200);
  av2 = random(0, 200);
  av3 = random(0, 200);
  az1 = 0;

  //point light.
  pv1 = random(0, 200);
  pv2 = random(0, 200);
  pv3 = random(0, 200);
  pz1 = 0;

  //directional light.
  dv1 = 81;//random(0, 80);
  dv2 = 81;random(0, 90);
  dv3 = 81;random(0, 90);
  dx1 = random(-1, 1);
  dy1 = random(-1, 1);
  dz1 = random(-1, 1);

  //rate = 100;
  colorMode = RGB;
}

void draw() {
  colorMode(colorMode, 255, 255, 255);
  background(0);

  //Have the mouse controll the direction of the light.
  ambientLight(av1, av2, av3, mouseX, mouseY, az1);
  pointLight(pv1, pv2, pv3, mouseX, mouseY, pz1);
  directionalLight(dv1, dv2, dv3, dx1, dy1, dz1);

  // Draw a sphere on the left side of the screen.
  pushMatrix();
  translate(-width * 0.125, height / 2.0, -height );
  sphere(height / 4);
  popMatrix();
  
  
  // Draw a box on the right side of the screen.
  pushMatrix();
  translate(width * 1.125, height / 2.0, -height );
  rotateY(frameCount / 90.0);
  box(height/3);
  popMatrix();

  //Create a PShape with textures in the center
  pushMatrix();
  translate(width/2, height/2, 0);
  rotateX(map(mouseY, -height * 0.5, height * 0.5, 0, TWO_PI));
  rotateY(map(-mouseX, -width  * 0.5, width  * 0.5, 0, TWO_PI));
  scale(height/5);

  beginShape();
  texture(texture);
  vertex(-1, -1, 1, 0, 0);
  vertex(1, -1, 1, 0 + 1, 0);
  vertex(1, 1, 1, 0 + 1, 0 + 1);
  vertex(-1, 1, 1, 0, 0 + 1);
  endShape(CLOSE);

  beginShape();
  texture(texture);
  vertex(1, -1, 1, 0, 0);
  vertex(1, -1, -1, 0 + 1, 0);
  vertex(1, 1, -1, 0 + 1, 0 + 1);
  vertex(1, 1, 1, 0, 0 + 1);
  endShape(CLOSE);

  beginShape();
  texture(texture);
  vertex(1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 0 + 1, 0);
  vertex(-1, 1, -1, 0 + 1, 0 + 1); 
  vertex(1, 1, -1, 0, 0 + 1);
  endShape(CLOSE);

  beginShape();
  texture(texture);
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1, 1, 0 + 1, 0);
  vertex(-1, 1, 1, 0 + 1, 0 + 1);
  vertex(-1, 1, -1, 0, 0 + 1);
  endShape(CLOSE);

  beginShape();
  texture(texture);
  vertex(-1, 1, 1, 0, 0);
  vertex(1, 1, 1, 0 + 1, 0);
  vertex(1, 1, -1, 0 + 1, 0 + 1);
  vertex(-1, 1, -1, 0, 0 + 1);
  endShape(CLOSE);

  beginShape();
  texture(texture);
  vertex(-1, -1, -1, 0, 0);
  vertex(1, -1, -1, 0 + 1, 0);
  vertex(1, -1, 1, 0 + 1, 0 + 1);
  vertex(-1, -1, 1, 0, 0 + 1);
  endShape(CLOSE);  
  popMatrix();
}

// code from Example_10_6_Texturing and Example_10_5_Lighting were used for refference in the making of this program
