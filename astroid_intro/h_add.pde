class addl extends gameobject {

float shottimer;
float threshold;
float x, y, size;

  
addl () {

shottimer=0;
threshold=350;
x=random (0, 800);
y= random (0, 800);
size =20;
lives=1;




}

void show () {
fill (#D0E531); //yellow
if (lives==1){
 ellipse (x, y, size, size);
 
}

}


void act () {

 shottimer++;
    if (shottimer>threshold) {
      lives=1;
     myaddl= new addl();
      shottimer=0;
    }


    if (dist (myship.location.x, myship.location.y, x, y)<25+size) {
    lives=0;
    myship.lives=myship.lives+2;
    
    
    }



}








}
