class astroid extends gameobject {
  int size;

  astroid () {
    location = new PVector (random (0, width ), random (0, height));
    velocity = new PVector (random (-1, 1), random (-5, 5));

    lives=1;
    size =80;
  }

  astroid (int s, float x, float y) {
    location = new PVector (x, y);
    velocity = new PVector (random (-1, 1), random (-5, 5));
    lives=1;
    size =s;
  }


  void show () {
    fill (150);
    ellipse (location.x, location.y, size, size);
  }

  void act () {

    super.act ();

    int i=0;
    while ( i<mygameobject.size ()) {
      gameobject obj =mygameobject.get (i);
      if (obj instanceof bullet) {
        if (dist (obj.location.x, obj.location.y, location.x, location.y)<size/2+obj.size/2) {
          lives=0;
          obj.lives=0;
          point++;
         
          if (size>20) {
            mygameobject.add (new astroid(size/2, location.x, location.y) );
            mygameobject.add (new astroid(size/2, location.x, location.y) );
          }
          mygameobject.add (new sprinkle (5,location.x, location.y));
          mygameobject.add (new sprinkle (5,location.x, location.y));
          mygameobject.add (new sprinkle (5,location.x, location.y));
          mygameobject.add (new sprinkle (5,location.x, location.y));
          mygameobject.add (new sprinkle (5,location.x, location.y));
          mygameobject.add (new sprinkle (5,location.x, location.y));
          mygameobject.add (new sprinkle (5,location.x, location.y));
        }
      }

      i++;
    }

    if (dist (myship.location.x, myship.location.y, location.x, location.y)<size/2+30) {
      myship.lives --;
      myship.location.x= width/2;
      myship.location.y= height/2;
      myship.velocity.x=0;
      myship.velocity.y=0;
      location.x= (random (0, 800));
      location.y= (random (0, 600));
    }

    if (point==21) {
      mode=win;
    }
  }
}
