PImage img;

float di;
float dj;

float di1;
float dj1;

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
      fill(noise(i*0.02+di,j*0.04+dj)*200,200,225);
      rect(i,j,20,20);
    }
  }
  
  pushMatrix();
  translate(670,300);
  //di1 += -0.015;
  dj1 += -0.2;
  for (int i= 0; i<280; i+=10){
    for (int j = 0; j<300; j+=10){
      fill(noise(i*0.04+di1,j*0.01+dj1)*255,240,255);
      rect(i,j,20,20);
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(490,600);
   di2 += 0.02;
  //dj2 += 0.2;
  for (int i= 0; i<1240; i+=10){
    for (int j = 0; j<700; j+=10){
      fill(noise(i*0.01+di2,j*0.04+dj2)*255,240,255);
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