void play () {
  
  
  
  myship.show();
myship.act();
  
  ufotimer++;
  if (ufotimer==400){
  ufotimer=0;
  mygameobject.add (new ufo());
  }
 
  
  
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

 int j=0;
  while (j< mysprinkle.size() ) {
    sprinkle s = mysprinkle.get (j); //class, variable = arraylist.get (variable);
    
    s.show();
    s.act();

    i=i+1;
    
    }
    
    
 

textSize (30);
fill (100);
text ("points:"+point, 100, 100);

text ("lives:"+myship.lives, 500, 100);

 


}
