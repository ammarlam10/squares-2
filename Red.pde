public class Red {

  int x, y;
  int a;
  int speed;
  int hero;
  boolean hidden = false;

  Red (int x, int y, int a, int speed, int hero) {
    this.x = x;
    this.y = y;
    this.a = a;
    this.hero = hero;
    this.speed = speed;
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
    fill(255, 0, 0);
    x +=  speed;
    if (x>=width) {
      hidden = false;
      y = (int) random(0, height - 50);
      x =-50;
      speed = (int) random(2, 9);
    }
    if (hidden == false) {

      rect(x, y, a, a);
    }
  }
  void moveXb() {
    fill(255, 0, 0);
    x -=  speed;
    if (x<=0) {
      hidden = false;
      y = (int) random(0, height - 50);
      x = 150 + width;
      speed = (int) random(2, 9);
    }
    if (hidden == false) {

      rect(x, y, a, a);
    }
  }
  void moveY() {
    fill(255, 0, 0);
    y +=  speed;
    if (y>=height) {
      hidden = false;
      x = (int) random(30, width - 50);
      y = -50;
      speed = (int) random(2, 9);
    }
    if (hidden == false) {
      //fill(255);
      rect(x, y, a, a);
    }
  }
  void moveYb() {
    fill(255, 0, 0);
    y -=  speed;
    if (y<=0) {
      hidden = false;
      x = (int) random(30, width - 50);
      y = 50 + height;
      speed = (int) random(2, 9);
    }
    if (hidden == false) {
      //fill(255);
      rect(x, y, a, a);
    }
  }
}

