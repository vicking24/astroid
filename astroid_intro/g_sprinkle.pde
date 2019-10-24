class sprinkle extends gameobject {
  

float size= random (5,10);
int timer;



sprinkle (int s, float x, float y) {

location = new PVector (x, y);
velocity =new PVector (random (-1,1), random (-1,1));
velocity.setMag(5);
lives=1;

size=s;
timer =20;

}


void show () {
  fill (200);
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
