void intro () {
  
background (0);

textSize (100);
fill (255);
text ("ASTROIDS", width/2, 200);

if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<500) { //start
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (300, 400, 200, 100);
  textSize (60);
  fill (0);
  text ("START", 400, 450);
  
  rocket.resize (130, 70);
  image (rocket, 400, 300);
  

}


void introclicked() {


 if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<500){
mode=play;
  }




}
