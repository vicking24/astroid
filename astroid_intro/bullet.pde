class bullet extends gameobject {

  int timer;
 
  
bullet () {
 location = new PVector (myship.location.x, myship.location.y);
 velocity= new PVector (myship.direction.x, myship.direction.y);
 velocity.setMag(10);
 lives=1;
 timer=40;
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

timer--;
if (timer==0) {
 lives=0;
}


}


}
