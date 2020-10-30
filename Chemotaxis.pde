Bacteria[] Chemotaxis = new Bacteria[300];
 void setup()   
 {     
   size(500,500);
   for(int i = 0; i < Chemotaxis.length; i++){
     Chemotaxis[i] = new Bacteria();
   }
 }   
 void draw()   
 { 
   background(0);
   for(int i = 0; i < Chemotaxis.length; i++){
   Chemotaxis[i].move();
   Chemotaxis[i].show();
   }
   fill(255);
   ellipse(400,100,100,100);
 } 
 class Bacteria    
 {     
   int myX;
   float myY;
   float mySpeed;
   int mySize;
   int myColor;
   Bacteria(){
     myX = (int)(Math.random()*600);
     myY = (int)(Math.random()*600);
     mySize = (int)(Math.random()*10-1);
     mySpeed = mySize/100.0;
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256));
   }
   void move(){
     myX = myX + (int)(Math.random()*5)-1;
     myY = myY + (float)(Math.random()*3)+1;
     if(myY > 600){
       myY = 0;
     }if(myX > 600){
       myX = 0;
     }
   }
   void show(){
     fill(myColor);
     stroke(myColor);
     ellipse(myX,myY,mySize,mySize);
     move();
   }
 }
