Ball[] b = new Ball[4];
int state;

void setup(){
  size(800, 800);
  frameRate(60);
  background(0);
  ellipseMode(RADIUS);
  
  b[0] = new Ball(width/2, height/2, 30, 80, 0.03, color(200, 100, 150, 50));
  b[1] = new Ball(b[0].getX(), b[0].getY(), 30, 110, 0.12, color(100, 200, 150, 50));
  b[2] = new Ball(b[1].getX(), b[1].getY(), 30, 140, 0.36, color(200, 100, 150, 50));
  b[3] = new Ball(b[2].getX(), b[2].getY(), 30, 170, 0.36, color(200, 200, 200, 50));
  
  state = Def.GOON;
}

void draw(){
  if(state == Def.GOON){
    b[0].setPosition(width/2, height/2);
    b[1].setPosition(b[0].getX(), b[0].getY());
    b[2].setPosition(b[1].getX(), b[1].getY());
    //b[3].setPosition(b[2].getX(), b[2].getY());
    b[0].Update();
    b[1].Update();
    b[2].Update();
    //b[3].Update();

  
    b[0].Draw();
    b[1].Draw();
    b[2].Draw();
    //b[3].Draw();
    stroke(255, 255, 255, 100);
    line(b[0].getX(), b[0].getY(), b[1].getX(), b[1].getY());
    line(b[1].getX(), b[1].getY(), b[2].getX(), b[2].getY());
    //line(b[2].getX(), b[2].getY(), b[3].getX(), b[3].getY());
  }
}

void keyPressed(){
  if(key == ' ')
    state = (state == Def.GOON) ? Def.STOP : Def.GOON;
  if(key == 'x')
    background(0);
  if(key == 's')
    save("output.png");
}

void keyReleased(){
  //
}
