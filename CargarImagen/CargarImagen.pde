PImage imagen; 
float posX = 0;
float posY = 0;
float velocidad = .1;
float velocidadY = 10;

void setup(){
  size(500,500);
  
  //cargar imagen
    imagen = loadImage("particle.png");
 //cambiar color de la imagen
 tint (255,255,0);
 
}


void draw(){
  background(178);
  //dibujar imagen en la posicion w,y)
  image (imagen,posX,posY);
  
  posX = posX + velocidad;  
  posY = posY + velocidadY;
  
  if (posX > width) {
    velocidad = -velocidad;
  }
  
  if (posX < 0){
    velocidad = -velocidad;
  }
  
  if (posY > height){
    velocidadY = -velocidadY;
  }
  
  if (posY < 0){
    velocidadY = -velocidadY;
  }
  
}
