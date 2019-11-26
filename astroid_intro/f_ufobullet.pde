class ufobullet extends gameobject {

  int timer;
 
  
ufobullet (float x, float y) {
 location = new PVector (x,y);
 velocity= new PVector (myship.location.x-x, myship.location.y-y);
 velocity.setMag(3);
 lives=1;
 timer=250;
 size=10;
 
 
//location.x=myship.location.x;
//location.y=myship.location.y;
//velocity.x = myship.direction.x;
//velocity.y = myship. direction.y;

}

void show () {

 stroke (1);
 fill (100);
ellipse (location.x, location.y, size, size);
 
}

void act () {
super.act();
 
    if (dist (myship.location.x, myship.location.y, location.x, location.y)<size/2+25) {
      myship.lives --;
      lif_ = true;
      myship.location.x= width/2;
      myship.location.y= height/2;
      myship.velocity.x=0;
      myship.velocity.y=0;
      lives=0;
    
    }


timer--;
if (timer==0) {
 lives=0;
}


}


}
