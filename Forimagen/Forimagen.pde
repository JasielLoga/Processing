
PImage imagen;
float posX = 0;
float posY = 0;
float velocidadX = 1;
float velocidadY = 2;

float teta = 50;


void setup(){
size (500,500);
imagen = loadImage("smiley.png");
tint (179,139,108);

//NUEVA PARTE


}

void draw(){
  //si le agrego las rayas o no tiene un efecto diferente
  background(mouseX,mouseY);
  
  for(int i = 0; i < 10; i = i + 1){
  image(imagen, posX + i*mouseX, posY, 50,50);
  }
  
  for(int i = 0; i < 10; i = i + 1){
  image(imagen, posX , posY + i*mouseY, 50,50);
  }
  
  //mover objeto
  posX = posX + velocidadX;
  posY = posY + velocidadY;
  
  if (posX > width) {
    velocidadX = -velocidadX;
  }
    
  if (posX < 0) {
    velocidadX = -velocidadX;
  }
    
  if (posY > height){
  velocidadY = -velocidadY;
  }

 if (posY < 0 ){
    velocidadY = -velocidadY; 
 }
    
    
    //NUEVA PARTE
    
    float valor = cos(teta)*mouseX;
    fill(valor,0,0);
    ellipse(width/2, height/2,valor,valor);

    //coseno(valor) -> (-1,1)
    cos(valor);
    teta=teta+.01;
    
}

