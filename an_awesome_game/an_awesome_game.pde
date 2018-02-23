float x,y,n,r; 
float dx, dr,dy; 
int c,w,h; 
int fondos = 1;
int turno = 1; 
int screen = 0;
int Points =100;
int Point_1 = 100;
boolean p1C;
boolean p2C;
int dibujo;
int play1,play2;



personaje xxx1; 
personaje CSTL2; 
personaje JHN3;
personaje HRRY4;
personaje DIRK5; 

personaje p1; 
personaje p2;

void setup(){
size (900,900); 
background(0);

 xxx1 = new personaje(100,25,1);
 CSTL2 = new personaje (100,25,2);
 JHN3 = new personaje (100,25,3);
 HRRY4 = new personaje (100,25,4);
 DIRK5 = new personaje (100,25,5);
 
 p1 = new personaje (100,25,1);
 p2 =new personaje (100,25,1);

}


void draw(){
  

switch (screen){
case 0: 
Start (); 
break; 

case 1:
Choosing(); 
break; 

case 2: 
fight(); 
break; 

case 3: 
end(); 
break; 

}
//println(screen);

}

class personaje {
  int life; 
  int pow; 
  int tipe;

  
  personaje (int life_,int pow_,int tipe_){
  life = life_;
  pow = pow_;
  tipe = tipe_;
  
  }
  void display_fight(){
switch(tipe){
  case 1:
  
  stroke(0);
  ellipse(150,150,100,100);
  stroke(0);
  triangle(90,180,200,180,200,100);
  
  break;
  
case 2:
fill(255);
stroke(0);
ellipse (200,90, 30,30);

fill(255);
stroke(#FEFF00);
ellipse(200,80, 30,10);

stroke(0);
line(197,105,199,159);

stroke(0);
line(198,158,172,180);

stroke(0);
line(198,159,222,176);

stroke(0);
line(197,125,171,114);

stroke(0);
line(198,126,221,120);
break;

case 3:

  stroke(255);
  ellipse(750,100,30,30);
  stroke(255);
  rect(738,115,25,40);
  stroke(255);
  rect(738,125,25,20);
  stroke(255);
  triangle(738,120,730,145,738,150);
  stroke(255);
  triangle(763,120,772,145,763,150);
  stroke(255);
  rect(738,155,12,40);
  stroke(255);
  rect(751,155,12,40);
  
  break;
  
  
 case 4:
 
 
 ellipse(150,550,30,40);
  
  beginShape();
 
  vertex(150,530);
  vertex(157,540);
  vertex(147,545);
  vertex(150,551);
  endShape();
 
  ellipse(150,596,50,50);
  
  //brazo izq
 
  ellipse(125,575,25,10);
  
  ellipse(120,593,10,25);
  
  ellipse(120,615,10,20);
  stroke(0);
  ellipse(120,630,15,15);
  
  //brazo der
  
  ellipse(177,575,25,10);
 
  ellipse(178,593,10,25);

  ellipse(178,615,10,20);

  ellipse(178,630,15,15);

  ellipse(150,641,25,45);

  ellipse(131,644,10,20);

  ellipse(166,644,10,20);
  break;
  
  case 5:
  
  ellipse(735,495,30,40);
  ellipse(735,539,10,10);
  ellipse(735,546,40,60);
  ellipse(710,531,10,10);
  ellipse(757,531,10,10);
  ellipse(710,588,10,70);
  ellipse(757,588,10,70);
  ellipse(736,596,20,30);
  ellipse(723,610,7,7);
  ellipse(750,610,7,7);
  ellipse(724,638,7,45);
  ellipse(750,638, 7,45);
  break;
}
}

 void display(){
switch(tipe){
  case 0:

  stroke(255);
  ellipse(150,150,100,100);
  stroke(255);
  triangle(90,180,200,180,200,100);
  
  break;
  
case 1:
fill(255);
stroke(255);
ellipse (200,90, 30,30);

fill(255);
stroke(#FEFF00);
ellipse(200,80, 30,10);

stroke(255);
line(197,105,199,159);

stroke(255);
line(198,158,172,180);

stroke(255);
line(198,159,222,176);

stroke(255);
line(197,125,171,114);

stroke(255);
line(198,126,221,120);
break;

case 2:

  stroke(255);
  ellipse(750,100,30,30);
  stroke(255);
  rect(738,115,25,40);
  stroke(255);
  rect(738,125,25,20);
  stroke(255);
  triangle(738,120,730,145,738,150);
  stroke(255);
  triangle(763,120,772,145,763,150);
  stroke(255);
  rect(738,155,12,40);
  stroke(255);
  rect(751,155,12,40);
  
  break;
  
  case 3:
  
  stroke(255);
  ellipse(150,550,30,40);
  
  beginShape();
  stroke(255);
  vertex(150,530);
  vertex(157,540);
  vertex(147,545);
  vertex(150,551);
  endShape();
  
  stroke(255);
  ellipse(150,596,50,50);
  
  //brazo izq
  stroke(255);
  ellipse(125,575,25,10);
  stroke(255);
  ellipse(120,593,10,25);
  stroke(255);
  ellipse(120,615,10,20);
  stroke(255);
  ellipse(120,630,15,15);
  
  //brazo der
  stroke(255);
  ellipse(177,575,25,10);
  stroke(255);
  ellipse(178,593,10,25);
  stroke(255);
  ellipse(178,615,10,20);
  stroke(255);
  ellipse(178,630,15,15);
  stroke(255);
  ellipse(150,641,25,45);
  stroke(255);
  ellipse(131,644,10,20);
  stroke(255);
  ellipse(166,644,10,20);
  break;
  
  case 4:
  stroke(255);
  ellipse(735,495,30,40);
  stroke(255);
  ellipse(735,539,10,10);
  stroke(255);
  ellipse(735,546,40,60);
  stroke(255);
  ellipse(710,531,10,10);
  stroke(255);
  ellipse(757,531,10,10);
  stroke(255);
  ellipse(710,588,10,70);
  stroke(255);
  ellipse(757,588,10,70);
  stroke(255);
  ellipse(736,596,20,30);
  stroke(255);
  ellipse(723,610,7,7);
  stroke(255);
  ellipse(750,610,7,7);
  stroke(255);
  ellipse(724,638,7,45);
  stroke(255);
  ellipse(750,638, 7,45);
  break;
}
}

  
}
   void Start(){
   stroke(255);
  
   
 
   ellipse(width/2+cos(n)*r, height/2+sin(n)*r,5,5);
   n=n+0.05;
   r=r+0.1;
   textSize(36);
   textAlign(RIGHT); 
   text("An",200,100); 
   fill(#00FFDB);
   textSize(36); 
   textAlign(CENTER);
   text("Awesome", 370,370);
   fill(#0DB29A);
   textSize(36); 
   textAlign(LEFT); 
   text("Game",600,600);
   fill(#0DB29A);
   
   textSize(15);
   textAlign (CENTER);
   text("Presiona el mouse",450,50);
   fill(255);
   
   if (mousePressed){
     screen +=1;
   }
  
      }
    
 

void Choosing(){
 

  
  background(0);
  textSize(20);
  textAlign(CENTER);
  text("Choose your idea", 450,50); 
  xxx1.display();
  CSTL2.display();
  JHN3.display();
  HRRY4.display();
  DIRK5.display();
  
 
  textSize(15); 
  textAlign(RIGHT);
  text("CSTL, for p1 press 'k',p2 press 's'",300,70);
  textSize(15); 
  textAlign(CENTER);
  text("XXX, for p1 press 'l',p2 press 'a' ", 450,70);
  textSize(15); 
  textAlign(LEFT);
  text("JHN, for p1 press 'm', p2 press 'd'", 600,70);
  textSize(15); 
  textAlign(RIGHT);
  text("HRRY, for p1 press 'j',p2 press 'e'",300, 500);
  textSize(15); 
  textAlign(LEFT);
  text("DIRK, for p1 press 'o', p2 press 'z'", 600,450);
  
  
  if (p1C && p2C){
    screen +=1;
  }
  if (keyPressed){
  switch(key){
  case 'k':
  xxx1 = p1;
  p1C = true;
  break;
  case 'l':
  CSTL2 = p1;
  p1C = true;
  break;
  case'm':
  JHN3 = p1;
  p1C = true;
  break;
  case 'j':
  HRRY4 = p1;
  p1C = true;
  break;
  case 'o':
  DIRK5 = p1;
  p1C = true;
  break;

  
  case 's':
  xxx1 = p2;
  p2C = true;
  break;
  case 'a':
  CSTL2 = p2;
  p2C = true;
  break;
  case 'd':
  JHN3 = p2;
  p2C = true;
  break;
  case 'e':
  HRRY4 = p2;
  p2C = true;
  break; 
  case 'z':
  DIRK5 = p2;
  p2C = true;
  break; 
  
  }
  }

 }


void fight (){
    pushMatrix();
  background(255);
  for(int i=0; i<100; i++){
      ellipseMode(CENTER);
      noStroke();
      fill(random(255),random(255),random(255),random(50));
      ellipse(random(1000),random(500),50,50);
      
  }
  popMatrix();
  
 
 
  fill(0);
  textSize(10);
  textAlign(RIGHT); 
  text("Press 'm' to attack", 150,600);
  fill(0);
  textSize(10);
  textAlign(LEFT); 
  text("Press 'x' to attack", 600,600); 
  
  p1.display_fight();
  p2.display_fight();
  
 
  fill(0);
  textSize(15);
  text(Points,500,400);
  
   fill(0);
  textSize(15);
  text(Point_1,700,400);
  
  if(turno == 1){
    if (keyPressed){
      if (key == 'm'){
        p2.life = p2.life - p1.pow;
        Points = p2.life;
        turno = 2;
      }
    }
  }
  
  
  if (turno == 2){
    if (keyPressed){
      if(key == 'x'){
        p1.life = p1.life - p2.pow; 
        Point_1 = p1.life;
        turno = 1;
      }
    }
  }
  
 
  if (p1.life <= 0 || p2.life <= 0){
  screen +=1;
} 
}




void end(){
  background(0);
  textSize(45);
  textAlign(CENTER);
  text("this idea it´s the winner, for this round", 450,450);
  fill (255);
  textSize(20);
  textAlign(CENTER);
  text("Press 'r' for reboot", 600,600);
  fill(255);
  if(keyPressed){
  if (key == 'r'){
    p1C = false;
    p2C = false;
    p1.life = 100;
    p2.life = 100;
    screen = 0;
    Points = 100;
    Point_1 = 100;
    background(0);
  }    
  }   
  }