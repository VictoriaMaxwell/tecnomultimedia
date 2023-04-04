 PImage pandita;
 void setup (){ 
   
size (800,800);  
  pandita  = loadImage ("pandita.jpg");
  
 }
  void draw() {
 
background(127, 179, 213 );
 
  //CUERPO   
     //MANO
   stroke (0);
  strokeWeight (65);
  line (500, 320, 559, 260);
  
     //PATITA
     noStroke ();
     fill (250, 219, 216);
     circle (550, 270, 30);
     circle (548, 245, 15);
     circle (565, 250, 15);
     circle (575, 267, 15);
     
     //PANZA
   noStroke();
 fill (0);
  ellipse (390, 400, 270, 310);
fill (255);
  ellipse (390, 400, 200, 190); 
  
 //CABEZA  
 stroke (0);
  strokeWeight(3); 
  fill (0);
   circle (295, 140, 90); //oreja izquierda
   circle (490, 140, 90); //oreja derecha
  fill (255);
   ellipse( 390, 200, 250, 200 );
 
  //OJOS
  fill (0);
   circle (330, 195, 100);  
   circle (445, 195, 100);
   
  fill (255);
   circle (340, 195, 83);
   circle (435, 195, 83);
 
  fill (0);
   circle (345, 195, 68);
   circle (429, 195, 68);

  fill(255);
   circle (340, 190, 20); //ojo izquierdo
   circle (350, 200, 10); 
   circle (420, 190, 20);  //ojo derecho
   circle (430, 200, 10);
 
 //BOCA Y NARIZ
    stroke (0);
  strokeWeight(7); 
  line( 388, 268, 388, 251);
  
  noStroke ();
  fill ( 241, 148, 138 );
   ellipse (388,240, 40, 20); 
   
//BAMBÚ
    //HOJAS
     stroke (14, 102, 85 );
  strokeWeight(2); 
     fill(25, 111, 61);
     
     ellipse (56, 245, 50, 20); // hojas izquierdas //#1
     
     
      ellipse (160, 100, 50, 20); // hojas izquierdas //#2
      ellipse (160, 190, 50, 20); // ""
      ellipse (170, 240, 30, 14); // ""
      ellipse (165, 350, 50, 20); // ""
  
      ellipse (115, 300, 30, 14); // "" //#1
      ellipse (225, 130, 50, 20); //hojas derechas //#2
      ellipse (230, 320, 50, 20); // ""
      
       // TALLO
        //#1
  stroke(29, 131, 72);
       strokeWeight(20);
       line(90, 220, 90, 400);
       
        stroke (130, 224, 170);
  strokeWeight(20); 
  line( 94, 260, 86, 260);
  line( 94, 350, 86, 350);
   
    //#2
       stroke(29, 131, 72);
       strokeWeight(20);
       line(190, 100, 200, 400);
     
         stroke (130, 224, 170 );
  strokeWeight(20); 
  line( 196, 160, 187, 160);
  line( 200, 270, 189, 270);
  line( 205, 380, 193, 380);
  
  // NUBE
  noStroke();
    
  fill(250);
  ellipse(700, 120, 100, 60);
  ellipse(650, 120, 70, 50);
  ellipse(600, 120, 70, 50); 
  ellipse(650, 90, 70, 50);
  ellipse(700, 90, 50, 30); 
  
   image (pandita ,0 ,400, 800,400);
 }
