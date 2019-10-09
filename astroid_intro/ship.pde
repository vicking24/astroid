class ship extends gameobject { //connects the classes together

  PVector direction;

  ship () {

    lives=3;
    location= new PVector (width/2, height/2);
    velocity= new PVector (0, 0);
    direction =new PVector (0, -1);
  }

  void show () {

    pushMatrix ();
    translate (location.x, location.y);

    rotate (direction.heading());
    image (rocket, 0, 0);
    
    if (location.x>width+50) {
    location.x=-50;
    }
    
     if (location.x<-50) {
    location.x=width+50;
    }
    
    if (location.y>height+50) {
    location.y=-50;
    }
    
    if (location.y<-50) {
    location.y=height+50;
    }



    popMatrix();
  }

  void act () {
    location.add(velocity);

    if (up)velocity.add (direction);
    if (down)velocity.sub (direction);
    if (left) direction.rotate (-radians(2));
    if (right) direction.rotate (radians(2));
    if (space) mygameobject.add (new bullet() );
    
  }
}
