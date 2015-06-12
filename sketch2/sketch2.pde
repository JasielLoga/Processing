


float posx = 100;
float posy = 100;
float colorR = 0;
float colorEllipse = 255;
float tamanoEllipse = 50;

//decimales 10^6 tiene decimales
float velocidad = 0.3;


void setup()
{
size(400,400);
}



void draw()
{
  
  background(colorR,colorR,colorR);
  
  noStroke();
  fill(colorEllipse, colorEllipse, colorEllipse);
  ellipse(posx,posy,tamanoEllipse,tamanoEllipse);
  ellipse(posx,posy,tamanoEllipse,tamanoEllipse);
  rect(posx, 300,50,50);
  
  stroke(255,0,0);
  line(posx, 200,posx,250);
  
  //posicion mas la velocidad
  posx = posx + velocidad;
  posy = posy + velocidad;
  
  colorR = colorR + velocidad;
  colorEllipse = colorEllipse - velocidad;
  tamanoEllipse = tamanoEllipse + velocidad;
  
  
  //<> == igual
  if(posx > 200) {
    posx = 0;
  }
  
  println(tamanoEllipse);
}
