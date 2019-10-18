void play () {
  myship.show();
myship.act();
  
  
int i=0;

while (i< mygameobject.size() ) {
  gameobject obj=mygameobject.get (i);
 
 obj.show ();
  obj.act();
  
  if (obj.lives==0){
  mygameobject.remove (i);
  } else {
   i++;  
  }

}

textSize (30);
text ("points:"+point, 100, 100);

text ("lives:"+myship.lives, 500, 100);

 


}
