public class box {

  int x, y;
  int a;
  int speed;
  boolean hidden = false;
  int hero;

  public box (int x, int y, int a, int speed,int hero) {
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
    } else {
      return false;
    }
  }

  void moveX() {
 fill(50);
    x +=  speed;
    if (x>=width) {
      hidden = false;
      y = (int) random(0, height - 50);
      x =0;
      speed = (int) random(2, 5);
    }
    if (hidden == false) {
 
      rect(x, y, a, a);
    }
  }
  
  void moveXb() {
  fill(50);
    x -=  speed;
    if (x<=0) {
      hidden = false;
      y = (int) random(0, height - 50);
      x = width;
      speed = (int) random(2, 5);
    }
    if (hidden == false) {
 
      rect(x, y, a, a);
    }
  }
  void moveY() {
    fill(50);
    y +=  speed;
    if (y>=height) {
      hidden = false;
      x = (int) random(0, width - 50);
      y =0;
      speed = (int) random(2, 5);
    }
    if (hidden == false) {
      //fill(255);
      rect(x, y, a, a);
    }
  }
  void moveYb() {
    fill(50);
    y -=  speed;
    if (y<=0) {
      hidden = false;
      x = (int) random(0, width - 50);
      y = height;
      speed = (int) random(2, 5);
    }
    if (hidden == false) {
      //fill(255);
      rect(x, y, a, a);
    }
  }
}

