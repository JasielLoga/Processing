


// inicia valores
// como la ventana

void setup()
{
  size(500, 500);
 
}


// dibujar
void draw()
{
  background(255,0,0);
  fill(0,100,255);
  //stroke=contorno
  stroke(255,255,255);
  //elipse centro posocion en (x,y)
  ellipse (250,250,50,50);
  
  //rectangulo en esquina superior izquierda 
  //(200,200)
  rect(200,200,50,100);
  
  //linea en (x1,y1, tamaño, tamaño)
  stroke (0,0,0);
  line(200,200,100,100);
  
  triangle(30, 75, 58, 20, 86, 75);
  
  fill(255,255,255,255);
  rect(300,100,50,50);
  
  
  
  
  
}
