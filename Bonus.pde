public class Bonus{
  int x,y,speed,a,hero,r,g,b;
  boolean hidden = false;
Bonus(int x, int y, int a, int speed, int hero,int r,int g,int b){
this.r =r;
this.g =g;
this.b=b;
this.x = x;
this.y = y;
this.a = a;
this.speed = speed;
this.hero = hero;

}
boolean isMouseHere() {
    if (mouseX<=x+a+ hero/2 && mouseX>=x-a  && mouseY<=y +a+hero/2 && mouseY>=y-a && hidden == false) {
      hidden = true;
      return true;
    }
    else {
      return false;
    }
  }
  void moveX() {
    fill(r,g,b);
    x +=  speed;
    if (x>=width) {
      hidden = false;
      y = (int) random(30, height - 50);
      x =-600;
      speed =(int)random(2, 4);
    }
    if (hidden == false) {
 
     ellipse(x, y, a, a);
    }
  }
  void moveY(){
    fill(r,g,b);
    y +=  speed;
    if (y>=height) {
      hidden = false;
      x = (int) random(30, width - 50);
      y =-600;
      speed = (int) random(2, 6);
    }
    if (hidden == false){
      //fill(255);
      ellipse(x, y, a, a);
    }
  }
  void moveXb() {
    fill(r,g,b);
    x -=  speed;
    if (x<=0) {
      hidden = false;
      y = (int) random(30, height - 50);
      x = 2*width; //change
      speed =(int)random(2, 4);
    }
    if (hidden == false) {
 
     ellipse(x, y, a, a);
    }
  }
   void moveYb(){
    fill(r,g,b);
    y -=  speed;
    if (y<=0) {
      hidden = false;
      x = (int) random(30, width - 50);
      y =2*height; //change
      speed = (int) random(2, 6);
    }
    if (hidden == false){
      //fill(255);
      ellipse(x, y, a, a);
    }
  }
}
