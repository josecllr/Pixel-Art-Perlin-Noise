PImage img;

float di;
float dj;

float di1;
float dj1;
float dz1;

float di2;
float dj2;
float dz2;

float di3;
float dj3;
float dz3;

float di4;
float dj4;
float dz4;



void setup(){
  size(1240,700);
  //background(0);
  noSmooth();
}

void draw(){
  pushMatrix();
  translate(220,53);
  scale(.7);
  noStroke();
  
  
  pushMatrix();
  translate(410,570);
  //di += 0.5;
  dj += -0.2;
  for (int i= 0; i<50; i+=10){
    for (int j = 0; j<200; j+=10){
      fill(138,noise(i*0.05+di,j*0.005+dj)*255,226);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  
  pushMatrix();
  translate(460,570);
  //di += 0.5;
  dj1 += -0.2;
  for (int i= 0; i<50; i+=10){
    for (int j = 0; j<200; j+=10){
      fill(25,noise(i*0.05+di1,j*0.005+dj1)*255,112);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(500,570);
  //di += 0.5;
  dj2 += -0.2;
  for (int i= 0; i<50; i+=10){
    for (int j = 0; j<200; j+=10){
      fill(50,noise(i*0.05+di2,j*0.005+dj2)*255,50);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(540,500);
  //di += 0.5;
  dj3 += -0.2;
  for (int i= 0; i<50; i+=10){
    for (int j = 0; j<270; j+=10){
      fill(255,noise(i*0.05+di3,j*0.005+dj3)*255,0);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(580,500);
  //di += 0.5;
  dj4 += -0.2;
  for (int i= 0; i<50; i+=10){
    for (int j = 0; j<270; j+=10){
      fill(255,noise(i*0.05+di4,j*0.005+dj4)*100,0);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  
  
  
  
  pushMatrix();
    scale(10);
    img = loadImage("px1.png");
    image(img, 0, 0);
  popMatrix();
  
  
  
  popMatrix();
}