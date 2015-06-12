
float posX = 100;
float posY = 100;
//va a ir de escala de grises cuando pasa el imiete de la pantalla
float colorElipseR = 200;
float colorElipseG = 0;
float colorElipseB = 0;

float velocidadX = 100;
float velocidadY = 100;

void setup() {
  size(1024,768);
  
}




void draw() {
  //truco para actualizar la pantalla
  //fill pone el efecto Rec 255, el 5 es casi invisible no se nota mucho, cambiando los numeros se cambia el color
    fill(255,255,0,5);
    
    
  //widt tamaño en X
  //height tamaño en Y
  //agregar un cuardo para decorar el fondo, del tamaño de la plantilla
  rect(0,0,width,height);
  
  //se pone RGB para que cambia de 0 a 200
  fill(colorElipseR,colorElipseG,colorElipseB);
  ellipse(posX, posY,50,50);

  
  //para mover el objeto
  //cambio de posiciones en X,Y
  posX = posX + velocidadX;
  posY = posY + velocidadY;
  
  //cuando va de ida X
  if (posX > width) {
    velocidadX = -velocidadX;
    colorElipseR = random (255);
    colorElipseG = random (255);
    colorElipseB = random (255);
  }
  
  //cuando va de regreso X
  if (posX < 0) {
    velocidadX = -velocidadX;
    colorElipseR = random (255);
    colorElipseG = random (255);
    colorElipseB = random (255);
  }
  
  if (posY > height){
  velocidadY = -velocidadY;
  colorElipseR =random (255);
  colorElipseG = random (255);
  colorElipseB = random (255);
  }
  
  if (posY < 0 ){
    velocidadY = -velocidadY;
    colorElipseR = random (255);
    colorElipseG = random (255);
    colorElipseB = random (255);
  }
}


void keyPressed (){
  
  //barra de espacio
  if (key == ' '){ 
    background (255);
  }
  
  if (key == 'a'){
    save("imagen001.png");
  }


}
