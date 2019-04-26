class Page {
  int px;
  String[]pwords;
  PFont splatch;
  PFont headLock;
  Page(String[] words, int x){
    
    splatch = createFont("Home School",100);
    headLock = createFont("Sketch 3D",48);   px = x;
    pwords = words;
  }
  void draw() {
    
    background(#024740);
    
    //Create the top text.
    textAlign(CENTER,TOP);
    textFont(splatch);
    fill(255);
    //Set x value of the text to px to have it move left.
    text("you can do anything",px,10);
    px-=3;
    if(px<-width*1.5)
      px=(int)(width*1.5);
    
    //Create bottom text.
    fill(255);
    textSize(32);
    textFont(headLock);
    textAlign(LEFT);
    //Take each line from text file and print it one by one using a for loop.
    for (int i = 0; i < pwords.length; ++i) {
    text(words[i], 40, 160+i*50);
    }
  }
}
