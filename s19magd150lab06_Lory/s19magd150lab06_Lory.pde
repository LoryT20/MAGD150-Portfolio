weather flake1;
weather flake2;
weather diamond1;
weather diamond2;
void setup(){
  background(#142038);
  size(800,600);
  flake1 = new weather();
  diamond1 = new weather();
  flake2 = new weather();
  diamond2 = new weather();
}

void draw(){
  background(#142038);
  //Create a snowflake.
  flake1.move();
  flake1.snowDisplay();
  //Create a diamond.
  diamond1.move();
  diamond1.diamondDisplay(50,50,75,0,100,50,75,100);
  //Create a second diamond.
  diamond2.move();
  diamond2.diamondDisplay(60,60,85,0,110,60,85,110);
  //Create a second snowflake.
  flake2.move();
  flake2.snowDisplay();
}
//Code from Box Dude was used in this project
