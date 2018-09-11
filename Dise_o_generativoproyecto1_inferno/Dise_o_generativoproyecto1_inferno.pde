PImage img;

float di;
float dj;

float di1;
float dj1;
float dz1;

float di2;
float dj2;



void setup(){
  size(1240,700);
  //background(0);
  noSmooth();
}

void draw(){
  noStroke();
  
  di += -0.015;
  //dj += 0.2;
  for (int i= 0; i<1240; i+=10){
    for (int j = 0; j<700; j+=10){
      fill(noise(i*0.01+di,j*0.01+dj)*255);
      rect(i,j,20,20);
    }
  }
  
  pushMatrix();
  translate(0,400);
  //di1 += -0.015;
  //dj1 += -0.01;
  dz1+=0.05;
  for (int i= 0; i<1240; i+=10){
    for (int j = 0; j<300; j+=10){
      fill(200,noise(i*0.01+di1,j*0.01+dj1,dz1)*255,10);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  
  
  pushMatrix();
    scale(10);
    img = loadImage("px1.png");
    image(img, 0, 0);
  popMatrix();
}