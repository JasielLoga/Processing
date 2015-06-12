
int  incremento = 0 ;
int incremento2 = 0;
int incremento3 = 0;





void setup () {
  size(1000,1000);
  
}

void draw (){
  background(incremento,incremento,incremento);
  
  //i = i + 1
  stroke (240,17,69);
  for(int i = 0; i < 10; i++){
    line (400 + i*incremento2,50 +  incremento,400 + i*incremento,50 + i * incremento3);
  }
  
  incremento = incremento  + 1;
  
  if (incremento > 600){
    incremento = 0;
  }
  
  if (incremento2 > 400){
    incremento  = 0;
  }
  
  if (incremento3 > 500){
    incremento = 0;
  }
  
}

