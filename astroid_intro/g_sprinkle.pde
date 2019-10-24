class sprinkle extends gameobject {
  

int size;
int timer;



sprinkle (int s, float x, float y) {

location = new PVector (x, y);
velocity =new PVector (random (-1,1), random (-1,1));
lives=1;

size=s;
timer =80;

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
