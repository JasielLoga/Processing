

void setup(){
  size(500,500);
  
}


void draw(){
  
  background(255);
  stroke(255);
  for(int i = 0; i < 50; i = i + 1){
    //line(50,50+i*random(50),200,50+i*random(50));
   
   //colorearlo
    stroke(i*5,0,0,mouseX);    
    //anchodelalinea
    strokeWeight(i);
    line(50,50+i*mouseX,150,50+i*mouseY);
    
    stroke(i*5,0,0,mouseX);
    stroke(200);
    line(200,50+i*mouseX,300,50+i*mouseY);
    
    stroke(i*5,0,0,mouseX);
    stroke(30);
    line(350,50+i*mouseX,400,50+i*mouseY);
  }
}
