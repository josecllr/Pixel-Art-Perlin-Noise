PImage img;

float di;
float dj;

float di1;
float dj1;
float dz1;

float di2;
float dj2;



void setup(){
  size(550,700);
  //background(0);
  noSmooth();
}

void draw(){
  noStroke();
  
  pushMatrix();
  translate(0,0);
  //di1 += -0.015;
  //dj1 += -0.01;
  dz1+=0.05;
  for (int i= 0; i<550; i+=10){
    for (int j = 0; j<700; j+=10){
      fill(200,noise(i*0.0001*mouseX,j*0.0001*mouseY,dz1)*255,0);
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