/*Game features:-
 powerups:-
 1) 10 points
 2) rect size 40% decreased for 3-4(200 frames) sec
 3) game speed 50% slow for 5 (100 frames) sec
 4) invincibility for 5 sec
 PowerDown:-
 1) Square size increased 20%
 2) -10 points
 3) game speedup for 5 sec
 
 */



import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
AudioPlayer player;
Minim minim;//audio context

//void setup()
boolean gameOver = false;
boolean invinc = false;
int bonus = 201;
int loop=110;
int loop2=200; 
int loop3=310;
int game = 0;
int j=0;
boolean repeat = false;
int i=0;
int hero = 20;
boolean splash = false;
Red Rxa= new Red(0, (int)random(30, 550), 20, (int)random(2, 5), hero/2);
Red Rxb= new Red(0, (int)random(30, 550), 20, (int)random(2, 5), hero/2);
Red Rya = new Red(0, (int)random(30, 550), 20, (int)random(2, 5), hero/2);
Red Ryb = new Red(0, (int)random(30, 550), 20, (int)random(2, 5), hero/2);
box Wxa = new box(0, (int)random(30, 550), 20, (int)random(2, 5), hero/2);
box Wxb = new box((int)random(30, 550), 0, 20, (int)random(2, 5), hero/2);
box Wxc = new box((int)random(30, 550), 0, 20, (int)random(2, 5), hero/2);
box Wya = new box((int)random(30, 550), 0, 20, (int)random(2, 5), hero/2);
box Wyb = new box((int)random(30, 550), 0, 20, (int)random(2, 5), hero/2);
box Wyc = new box((int)random(30, 550), 0, 20, (int)random(2, 5), hero/2);
Bonus Ba = new Bonus(0, (int)random(30, 550), 30, (int)random(2, 5), hero/2, 255, 0, 0);
Bonus Bb = new Bonus(0, (int)random(30, 550), 30, (int)random(2, 5), hero/2, 255, 0, 0);
Bonus Bc = new Bonus(0, (int)random(30, 550), 30, (int)random(2, 5), hero/2, 255, 0, 0);
Bonus Bwp = new Bonus(0, (int)random(30, 550), 30, (int)random(2, 5), hero/2, 50, 50, 50);
Bonus Bws = new Bonus(0, (int)random(30, 550), 30, (int)random(2, 5), hero/2, 50, 50, 50);
Bonus Bwsc = new Bonus(0, (int)random(30, 550), 30, (int)random(2, 5), hero/2, 50, 50, 50);
Bonus Bwa = new Bonus(0, (int)random(30, 550), 30, (int)random(2, 5), hero/2, 50, 50, 50);

void setup() {
  //frameRate();
  println("Loading...");
  size(700, 700);
  minim = new Minim(this);
  player = minim.loadFile("hip.mp3", 2048);
  //player.loop();  
  minim = new Minim(this);
  player = minim.loadFile("hip.mp3", 2048);
  if (repeat==false) {
    player.loop();
  }
  noStroke();
}

void draw() {
  if (gameOver==false) {

    //player.loop();
    if (splash==true) {
      background(250);
      textSize(60);
      if (i<0) {
        text(i, width/2.2, height/2);
      } else if (i<10) {
        text(i, width/2, height/2);
      } else if (i<100) {
        text(i, width/2.1, height/2);
      } else {
        text(i, width/2.2, height/2);
      }

      Rxa.moveX();
      Rxb.moveXb();
      Rya.moveY();
      Ryb.moveYb();
      Wxa.moveX();
      Wxb.moveX();
      Wxc.moveXb();
      Wya.moveYb();
      Wyb.moveY();
      Wyc.moveY();
      Bb.moveX();
      Ba.moveYb();
      Bc.moveXb();
      Bws.moveX();
      Bwp.moveY();
      Bwsc.moveXb();
      Bwa.moveYb();
      fill(50);
      rect(mouseX-hero/2, mouseY-hero/2, hero, hero);
      //player.play();
      if (Bwa.isMouseHere()) {
        bonus=0;
        invinc = true;
      } 


      if (Wxa.isMouseHere() || Wxb.isMouseHere()||Wxc.isMouseHere()||Wya.isMouseHere()||Wyb.isMouseHere() ||Wyc.isMouseHere()) {
        if (game<2000) {
          i=i+1;
        } else {
          i=i+2;
        }

        // hero+=5;
        println("Score: " + i);
      }
      if (invinc == false) {
        if (Rxa.isMouseHere()||Rxb.isMouseHere()||Rya.isMouseHere()||Ryb.isMouseHere()) {
          background(30);
          fill(255);
          textSize(60);
          text("GAME OVER", width/3.5, height/3);
          textSize(40);
          text("Score: " + i, width/2.7, height/2 );
          textSize(30);
          text("Made By Ammar", width/2.3, height/1.05);
          textSize(40);
          text("Press anywhere to Restart", width/5, height/1.5);
          i=0;
          game=0;
          hero = 30;
          loop = 101;
          loop2 = 201;
          loop3=601;
          repeat = true;
          gameOver = true;
          noLoop();
        }
      }//invinc
      if (Ba.isMouseHere()) {
        hero = hero+10;
      }
      if (Bb.isMouseHere()) {
        i=i-10;
        println("Score: " + i);
      }
      if (Bwp.isMouseHere()) {
        i=i+10;
        println("Score: " + i);
      }
      if (Bws.isMouseHere()) {
        loop=0;
        frameRate(20);
      }
      if (loop==100) {
        frameRate(60);
      }
      if (loop3==600) {
        frameRate(60);
      }
      if (Bc.isMouseHere()) {
        loop3=0;
        frameRate(120);
      }


      if (Bwsc.isMouseHere()) {
        hero=5*hero/10;
        loop2=0;
      }
      if (loop2==200) {
        hero=10*hero/5;
      }

      if (bonus==200) {
        invinc = false;
      }
      bonus++;
      loop++;
      loop2++;
      loop3++;
      game++;
    }//if****************************************************************
    else {
      PImage img;
      img = loadImage("my.jpg");
      image(img, 0, 0, width, height);
    }
  }//GameOver
}

void mouseClicked() {
  if (mouseX>=0 && mouseX<=600 && mouseY<=600 && mouseY>=0) {
    splash = true;
  }

  if (gameOver) {
    println("Restarting..");
    gameOver = false;
    loop();
  }
}

