//victoria
//oct 3


boolean up, down, left, right, space;
PImage rocket;
int point;

final int intro=1;
final int play=2;
final int gameover=3;

int mode=intro;


ship myship;
ufo myufo;

ArrayList <gameobject> mygameobject;

void setup () {
  size (800, 600);
     
rocket =loadImage ("spaceship.png");
imageMode (CENTER);
textAlign (CENTER, CENTER);

myship= new ship();
myufo= new ufo ();

mygameobject = new ArrayList <gameobject>();

mygameobject.add (myship);
mygameobject.add (new astroid() );
mygameobject.add (new astroid() );
mygameobject.add (new astroid() );

mygameobject.add (myufo);


}


void draw () {
  background (255);
  
  
  
  
  
 if (mode==intro) {
    intro();
  } else if (mode ==play) {
    play();
  } else if (mode==gameover) {
    gameover();
  }

}

void mouseReleased () {

  if (mode==intro) {
    introclicked();
  } else if (mode==gameover) {
    gameoverclicked();
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
