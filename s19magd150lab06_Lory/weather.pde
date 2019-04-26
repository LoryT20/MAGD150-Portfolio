class weather{
  int centerX, centerY;
  
  weather(){
    centerX = round(random(0,width));
    centerY = round(random(0,height));
  }
  
  void snowDisplay(){
   // int start = (int)random(0,3);
    stroke(255);
    strokeWeight(10);
    rectMode(CENTER);
    //fill(255, 0, 0);
    fill(255);
    //The code is creating 4 lines at 4 different angles to form a snow flake.
    line(centerX-70,centerY,centerX+70,centerY);
    line(centerX-50,centerY+50,centerX+50,centerY-50);
    line(centerX-50,centerY-50,centerX+50,centerY+50);
    line(centerX,centerY+70,centerX,centerY-70);
  }
  void diamondDisplay(int x1,int y1,int x2,int y2,int x3,int y3,int x4,int y4){
    //The code is taking the given integers to form a diamond shape.
    quad(x1+centerX,y1+centerY,x2+centerX,y2+centerY,x3+centerX,y3+centerY,x4+centerX,y4+centerY);
  }
  
  void move(){
    //The code is having the objects move down in a fluttering pattern to simulate real snowflakes
    centerX = round(random(-5,5)) + centerX;
    centerY = round(random(-5,5)) + centerY+5;
    //If the code goes out of bounds, have it reset.
    if(centerY>700){
      centerX=(int)random(0,width);
      centerY=-100;
    }
    if(centerX<-100||centerX>900){
      centerX=(int)random(0,width);
      centerY=(int)random(-800,-100);
    }
  }
}
