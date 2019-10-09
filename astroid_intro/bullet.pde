class bullet extends gameobject {

bullet () {
 location = new PVector (myship.location.x, myship.location.y);
 velocity= new PVector (myship.direction.x, myship.direction.y);
 velocity.setMag(10);
 
//location.x=myship.location.x;
//location.y=myship.location.y;
//velocity.x = myship.direction.x;
//velocity.y = myship. direction.y;

}

void show () {
  fill (255, 0, 0);
ellipse (location.x, location.y, 20, 20);

}

void act () {
location.add (velocity);


}


}
