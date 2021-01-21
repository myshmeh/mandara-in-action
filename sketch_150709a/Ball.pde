class Ball{
  public float x, y, r;
  public float px, py;
  public float d;
  public float angle;
  public float speed;
  private color c;
  
  public Ball(float px_rcv, float py_rcv, float r_rcv, float distance, float speed_rcv, color c_rcv){
    x = px_rcv;
    y = py_rcv;
    px = px_rcv;
    py = py_rcv;
    d = distance;
    r = r_rcv;
    angle = 0;
    speed = speed_rcv;
    c = c_rcv;
  }
  
  public void Update(){
    x = cos(angle) * d + px;
    y = sin(angle) * d + py;
    angle += speed;
  }
  
  public void Draw(){
    stroke(c);
    fill(0,0,0,0);
    ellipse(x, y, r, r);
  }
  
  public void setPosition(float px_rcv, float py_rcv){
    px = px_rcv;
    py = py_rcv;
  }
  
  ///////////////////////////
  //SET / GET
  ///////////////////////////
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
}
