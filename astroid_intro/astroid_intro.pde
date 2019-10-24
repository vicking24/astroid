//victoria
//oct 3

//make ufo timer work

boolean up, down, left, right, space;
PImage rocket;
PImage ufop;
int point;

final int intro=1;
final int play=2;
final int gameover=3;
final int win=4;

int mode=intro;


ship myship;
//ufo myufo;

ArrayList <gameobject> mygameobject;
ArrayList <sprinkle> mysprinkle;

void setup () {
  size (800, 600);
     
rocket =loadImage ("spaceship.png");
ufop= loadImage ("ufo.png");
imageMode (CENTER);
textAlign (CENTER, CENTER);

myship= new ship();
//myufo= new ufo ();

mygameobject = new ArrayList <gameobject>();
mysprinkle = new ArrayList <sprinkle>();

mygameobject.add (myship);
mygameobject.add (new astroid() );
mygameobject.add (new astroid() );
mygameobject.add (new astroid() );




}


void draw () {
  background (255);
  
  
  
  
  
 if (mode==intro) {
    intro();
  } else if (mode ==play) {
    play();
  } else if (mode==gameover) {
    gameover();
  }else if (mode==win ) {
  win ();
  }

}

void mouseReleased () {

  if (mode==intro) {
    introclicked();
  } else if (mode==gameover) {
    gameoverclicked();
  } else if (mode==win) {
  winclicked();
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
