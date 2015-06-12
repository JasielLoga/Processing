

void setup(){
size(500,500);
}


void draw(){
  
  background(0);
  
  //horizontales cambia en Y
  for(int i = 0; i < 21; i = i + 1){
    stroke(0,255,0); // color blanco
    line(mouseX,50 + i*10,250,mouseY + i*10); //asi se dibuja una linea
  }
  
  //verticales cambia en X
  for(int i = 0; i < 21; i = i + 1){
    stroke(255,162,0); // color blanco
    line(50 + i*10,mouseY,mouseX + i*10,250); 
  }
  
 
}
