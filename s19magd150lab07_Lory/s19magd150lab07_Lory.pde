circuse light;
circuse croud;
circuse spin;
circuse box;
void setup(){
  background(#142038);
  size(800,600);
  croud = new circuse();
  light = new circuse();
  spin = new circuse();
  box = new circuse();
}

void draw(){
  background(#ff8800);
  croud.croud();
  box.boxx();
  spin.spinner();
  light.spotlight();
}
//code from Ex_13_vector_subtraction, and Ex_1_7_Transformations was used as a refference for his program
