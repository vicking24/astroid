void win () {

background (0);

textSize (100);
fill (255);
text ("YOU WIN", width/2, 200);

if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<500) { //start
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (300, 400, 200, 100);
  
   textSize (60);
  fill (0);
 text ("RETRY", 400, 450);
  
  fill (255);
  textSize (40);
 text ("Points:"+point, width/2, 300);

  
}

void winclicked () {

  if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<500){
mode=intro;
myship.lives=3;
point=0;

mygameobject = new ArrayList <gameobject>();

mygameobject.add (myship);
mygameobject.add (new astroid() );
mygameobject.add (new astroid() );
mygameobject.add (new astroid() );

  }







}
