class circuse{
  
  void boxx(){
    pushMatrix();
    PVector boxCenter = new PVector(width/2,height*.75);
    PVector mouse = new PVector(mouseX,mouseY);
    translate(boxCenter.x,boxCenter.y);
    fill(#ff0000);
    //Have the box increase in size as the mouse goes farther down using the scale function.
    scale(map(mouse.x+100,0,width,0,2));
    rectMode(CENTER);
    rect(0,0,75,80);
    popMatrix();
  }
  
  void spinner(){
    //Have 3 balls spin from a center point using the rotate function to resemble juggling.
    pushMatrix();
    PVector spinCenter = new PVector(width/2,height/4*3);
    PVector mouse = new PVector(mouseX, mouseY);
    translate(spinCenter.x,spinCenter.y);
    fill(#0000ff);
    rotate(map(millis(),0,width,0,TWO_PI));   
    //Balls will also change size depending on the mouse's x value using the add() method
    mouse.add(spinCenter);
    mouse.div(15);
    fill(#0000ff);
    ellipse(100,0,mouse.x,mouse.x);
    ellipse(-100,0,mouse.x,mouse.x);
    ellipse(0,120,mouse.x,mouse.x);
    //ellipse(0,0,25,200);
    popMatrix();
  }
  void spotlight(){
    //Create a shape resembling a spot light that follows the courser.
    rotate(0);
    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width/2, 0);
    mouse.sub(center);
    translate(width/2, 0);
    strokeWeight(2);
    stroke(0);
    noStroke();
    fill(255,255,0);
    triangle(mouse.x-40, mouse.y,mouse.x+40,mouse.y,0,0);
    triangle(mouse.x,mouse.y-40,mouse.x,mouse.y+40,0,0);
    ellipse(mouse.x,mouse.y,80,80);
    fill(0);
    ellipse(0,0,20,20);
  }
  
  void croud(){
    //Use an array and for loop to put multiple dots across the screen to resemble an audience.
    fill(25);
    rect(0,0,width*2,height/2);
    int[] croud = {width/8,width/4,width/8*3,width/2,width/8*5,width/4*3,width/8*7};
    stroke(255);
    strokeWeight(50);
    //point(0,0);
    for(int i = 0; i< croud.length;i++){
      
      point(croud[i],height*.25);
    }
    noStroke();
    fill(#382014);
    rectMode(CORNER);
    rect(0,height*.25,width,height*.25);
  }
}
