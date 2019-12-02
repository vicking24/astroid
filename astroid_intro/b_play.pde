void play () {



  //myship.show();
  //myship.act();
  //myaddl.show();
 // myaddl.act ();

  ufotimer++;
  if (ufotimer==400) {
    ufotimer=0;
    mygameobject.add (new ufo());
  }
  
   addtimer++;
    if (addtimer>350) {
     mygameobject.add(new addl());
      addtimer=0;
    }


  int i=0;

  while (i< mygameobject.size() ) {
    gameobject obj=mygameobject.get (i);

    obj.show ();
    obj.act();

    if (obj.lives==0) {
      mygameobject.remove (i);
    } else {
      i++;
    }
  }




  textSize (30);
  fill (100);
  text ("points:"+point, 100, 100);

  text ("lives:"+myship.lives, 500, 100);
}
