PImage img1;
PImage img2;
PImage img3;

int step = 10;

float di;
float dj;
float dz;

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
  //translate(220,53);
  //scale(.7);
  noStroke();
  
  
   pushMatrix();
    scale(10);
    img1 = loadImage("px1.png");
    image(img1, 0, 0);
  popMatrix();
  
  
  pushMatrix();
  translate(0,0);
  //di += 0.5;
  dj += 0.1;
  dz+=0.05;
  for (int i= 0; i<170; i+=10){
    for (int j = 0; j<300; j+=10){
      float noise = noise(i*0.01,j*0.01+dj,dz);
      fill(noise*255);
       if (noise<0.5){
        rect(i,j,step,step);
      rect(i,j,20,20);
       }
    }
  }
  popMatrix();
  
  
  pushMatrix();
  translate(190,0);
  di1 += -0.3;
  //dj1 += -0.2;
  for (int i= 0; i<1130; i+=10){
    for (int j = 0; j<700; j+=10){
      fill(noise(i*0.01+di1,j*0.01+dj1)*255,40);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  
  
  
   pushMatrix();
    scale(10);
    img2 = loadImage("px3.png");
    image(img2, 0, 0);
  popMatrix();
  
  
  
  
  
  
 
  
  
  
  popMatrix();
}