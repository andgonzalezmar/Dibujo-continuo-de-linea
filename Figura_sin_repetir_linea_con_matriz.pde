//Imagen guia
PImage img;

//Posicion de los puntos
int [] x = {120,345,570,345,240,450,345,120,345,570};
int [] y = {110,110,110,220,335,335,430,560,560,560};

void setup(){
  size(1200,700);
  background(0);
  img = loadImage("Figura2.jpg");
}

void draw(){
  image(img,700,140);
  fill(255);
  for(int i = 0; i < x.length; i++){
    ellipse(x[i],y[i],20,20);
  }
  stroke(255);
  strokeWeight(8);
  if(mousePressed && mouseX>90 && mouseX<150 && mouseY<140 && mouseY>80){
    line(120,110,mouseX,mouseY);
    if(mousePressed && mouseX>90 && mouseX<150 && mouseY<590 && mouseY>530){
    line(120,110,345,110);
    }
  }
}