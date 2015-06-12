


void setup () {
  size (600,600);
}

void draw (){
  
  background(0);
  
  //integer- donde empieza, donde acaba y como es el incremento
  
 
  for(int i = 0; i < 10; i = i + 1){
    
    
    fill(100 + i*10);
    
    //line/inicialx,inicialy,finalx,finaly)
    stroke(255);
    line(100 + i*10, mouseX,mouseY,100+i*10);
    
    //empieza en el 100,100 y se le va sumando 60 
    ellipse(100 + i * mouseX ,100,50,50);
    ellipse (100,100+ i*mouseY,50,50);
    
  }
  
  
}
