class ufo extends gameobject {

  float r;
  float a, b;
  int shottimer;
  int threshold;

  ufo () {

    lives=1;
    shottimer=0;
    threshold=100;
    size = 60;

    location= new PVector (a, b);
    //location= new PVector (random (0, width), 0);
    //location= new PVector (random (0, width), height);
    //location= new PVector (0, random (0, height));
    //location = new PVector (width, random (0, height));


    r= random (0, 4);

    if (r<1) {
      location.x=random (0, width);
      location.y=0;
    } else if (r<2) {
      location.x= random (0, width);
      location.y=height;
    } else if (r<3) {
      location.x=0;
      location.y=random (0, height);
    } else {
      location.x=width;
      location.y=random (0, height);
    }

    velocity= new PVector (width/2-location.x, height/2- location.y);
    velocity.setMag (2);
  }

  void show() {



    ufop.resize (size, size);
    image (ufop, location.x, location.y);
  }

  void act () {
    location.add(velocity);

    if (location.x>width||location.x<0|| location.y>height|| location.y<0) {
      lives=0;
    }
    shottimer++;
    if (shottimer>threshold) {
      mygameobject.add ((new ufobullet (location.x, location.y)) );
      shottimer=0;
    }

    int i=0;
    while ( i<mygameobject.size ()) {
      gameobject obj2 = mygameobject.get (i);
      if (obj2 instanceof bullet) {
        if (dist (obj2.location.x, obj2.location.y, location.x, location.y)<size/2+obj2.size/2) {
          lives=0;
          obj2.lives=0;
        }
      }
      i++;
    }
   
    
  }
}
