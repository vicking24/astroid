//victoria
//oct 3


boolean up, down, left, right, space;
PImage rocket;

ship myship;

ArrayList <gameobject> mygameobject;

void setup () {
  size (800, 600);
  
rocket =loadImage ("spaceship.png");
rocket.resize (70,50);
imageMode (CENTER);

myship= new ship();

mygameobject = new ArrayList <gameobject>();

}


void draw () {
  background (255);
  
myship.show();
myship.act();

int i=0;

while (i< mygameobject.size() ) {
  gameobject bullet=mygameobject.get (i);
  bullet.show ();
  bullet.act();
  
i++;

}


}

void keyPressed () {
if (keyCode == UP) up=true;
  if (keyCode == DOWN) down=true;
  if (keyCode == LEFT) left=true;
  if (keyCode == RIGHT) right=true;
  if (key==' ') space=true;
  
}


void keyReleased () {
if (keyCode == UP) up=false;
  if (keyCode == DOWN) down=false;
  if (keyCode == LEFT) left=false;
  if (keyCode == RIGHT) right=false;
  if (key==' ') space=false;

}
