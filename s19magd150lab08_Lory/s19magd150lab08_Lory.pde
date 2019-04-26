// The PFont object holds all the information about the font in memory.
import processing.pdf.*;

String[] words;
String file = "dream.txt";
int x;
String fileName;
boolean recordScreen;
Page p;

void setup() {
  surface.setResizable(true);
  pixelDensity(displayDensity());
  size(800, 600);
  String[] fontList = PFont.list();
  printArray(fontList);

  x=0;
  words = loadStrings(file);
  fileName = "rightClick";
  p = new Page(words,x);
  
}

void draw() {
  //Start the Recording.
  if (recordScreen) {
    beginRecord(PDF, fileName + ".pdf");
  }
  
  p.draw();
  
  //End the Recording.
  if (recordScreen) {
    endRecord();
    recordScreen = false;
  }
}
  
  void mousePressed() {
  if (mouseButton == RIGHT) {
    recordScreen = true;
  }
}

//Code from lesson_8D_ImportingTxtFile and lesson_8G_SavePDF 
//was used as a refference in the making of this program
