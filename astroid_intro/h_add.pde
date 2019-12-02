class addl extends gameobject {


float size;

  
addl () {
  
location=new PVector (random (0, 800), random (0,800));
size =20;
lives=1;
velocity=new PVector (0,0);




}

void show () {
fill (#D0E531); //yellow
stroke (0);
if (lives==1){
 ellipse (location.x, location.y, size, size);
 
}

}


void act () {

  super.act();



    if (dist (myship.location.x, myship.location.y, location.x, location.y)<25+size) {
    lives=0;
    myship.lives=myship.lives+2;
    
    
    }



}








}
