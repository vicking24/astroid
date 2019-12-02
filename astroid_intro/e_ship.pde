class ship extends gameobject { //connects the classes together

  PVector direction;
  int shottimer;
  int threshold;

  ship () {

    lives=3;
    location= new PVector (width/2, height/2);
    velocity= new PVector (0, 0);
    direction =new PVector (0, -0.08);
    shottimer=0;
    threshold=30;
  }

  void show () {

    pushMatrix ();
    translate (location.x, location.y);

    rotate (direction.heading());
    rocket.resize (50,30);
    image (rocket, 0, 0);
    

    popMatrix();
    
    if (safe==true){
    stroke (#17A5CE);
    noFill ();
    ellipse (location.x, location.y, 150, 150);}
  }

  void act () {
    
    super.act();
    
    shottimer++;

    if (up)velocity.add (direction);
    if (down)velocity.sub (direction);
    if (left) direction.rotate (-radians(2));
    if (right) direction.rotate (radians(2));
    if (space&& shottimer>threshold) {
      mygameobject.add (new bullet() );
      shottimer=0;
    }
    
    if (lives<=0) {
    mode=gameover;
    
    }
    

    
  }
}
