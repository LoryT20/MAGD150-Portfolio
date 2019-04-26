import processing.sound.*;
import processing.video.*;

SoundFile birds;
Movie movie; 
PImage tree;
void setup() {
  size(560, 320);
  //Import the files into the program.
  birds = new SoundFile(this, "birds.wav");
  movie = new Movie(this, "rabbit.mov"); 
  tree = loadImage("tree.JPG");
  //Have the sound and video loop.
  birds.loop();
  movie.loop();
  //Set the amplitude of the sound to 0.5.
  birds.amp(.5);
}

void movieEvent(Movie movie) {
  movie.read();
  movie.volume(0);
}

void draw() {
  drawImage();
  drawMovie();  
}

void drawImage(){
  pushMatrix();
  //Set the tint to be slightly darker.
  tint(100);
  //Set the image to be flipped the right way and set to the right side of the screen.
  translate(0,320);
  scale(1,-1);
  image(tree,240,0,360,360);
  popMatrix();
  
}

void drawMovie(){
  pushMatrix();
  tint(255);
  //Rotate the movie 90 degrees and have it set to the left side of the window.
  translate(240, 0);
  rotate(radians(90));
  image(movie, 0, 0, 320,240);
  popMatrix();
}

//Code from example_16_04_MoviePlayback, example_15_02_ImageSprite, and example_20_13_soundfile_FFT were used for refference in this program.
