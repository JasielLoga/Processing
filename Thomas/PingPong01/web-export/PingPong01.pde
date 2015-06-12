//Circulo

//posicion de la bola
float bolaPosX = 0;
float bolaPosY = 300;
float bolaPosX2 = 70;
float bolaPosY2 = 300;

//velocidad Bola
float bolaVelX = 10;
float bolaVelY = 20;
float bolavelX2= 10;
float bolavelY2=20;

//tamanos 
float bolaTam  = 40;
float bolaTam2 = 40;

//Rectangulo

//posicion del rectangulo
float rectPosX = 300;
float rectPosY = 50;

//tamano del rectangulo
float rectWidth = 100;
float rectHeight = 20;

//colorElipseR 
float colorelipseR=0;
float colorelipseG=0;
float colorelipseB=0;

int numRebotes;
int numRebotes2;


void setup() {
  size(800, 800);
}


void draw() {
  //Fondo blanco
  rectMode(CORNER);
  fill(255, 255, 255, 10);
  rect(0, 0, width, height);
  background(mouseX,mouseY);

  //dibujar ellipse con centro (bolaPosX, bolaPosY) 
  //con tamano (bolaWidth, bolaHeight)
  noStroke();
  fill(colorelipseR, colorelipseG, colorelipseB);
  ellipse(bolaPosX, bolaPosY, bolaTam, bolaTam);
  ellipse (bolaPosX2, bolaPosY2, bolaTam2, bolaTam2);


  //Dibujar el Rectangulo
  //posicion esquina superior izquierda (rectPosX, rectPosY)
  rectPosX = mouseX;
  rectPosY= mouseY;
  rectMode(CENTER);
  rect(rectPosX, rectPosY, rectWidth, rectHeight);

  //actualizar las posiciones de la bola
  bolaPosX = bolaPosX + bolaVelX;
  bolaPosY = bolaPosY + bolaVelY;
  
  bolaPosX2 = bolaPosX2 + bolavelX2;
  bolaPosY2 = bolaPosY2 + bolavelY2;


  //si reboto cambiar la velocidad
  if (rebote() == true) {
    bolaVelX  = -bolaVelX;
    bolaVelY  = -bolaVelY;
    colorelipseR=random(1);
    colorelipseG=random(255);
    colorelipseB=random(255);
    
    numRebotes = numRebotes + 1;
  }
  
  text(numRebotes, 100,50);
  text("Ping Pong de Jasiel", 400,50);

  if (rebote2() == true) {
    bolavelX2  = -bolavelX2;
    bolavelY2  = -bolavelY2;
    colorelipseR=random(1);
    colorelipseG=random(255);
    colorelipseB=random(255);
    numRebotes2 = numRebotes2 + 1;
  
  
}

text(numRebotes2,200,50);

  //Rebotar con las paredes
  if (bolaPosX > width) {
    bolaVelX  = -bolaVelX;
  }

  if (bolaPosY > height) {
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosY < 0) {
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosX < 0) {
    bolaVelX  = -bolaVelX;
  }
  
  //Rebotar con las paredes 2
  if (bolaPosX2 > width) {
    bolavelX2  = -bolavelX2;
  }

  if (bolaPosY2 > height) {
    bolavelY2  = -bolavelY2;
  }

  if (bolaPosY2 < 0) {
    bolavelY2  = -bolavelY2;
  }

  if (bolaPosX2 < 0) {
    bolavelX2  = -bolavelX2;
  }
  
  
  
}

boolean rebote()
{
  return rectBall(rectPosX, rectPosY, rectWidth, rectHeight, bolaPosX, bolaPosY, bolaTam/2.0);
}

boolean rebote2()
{
  return rectBall(rectPosX, rectPosY, rectWidth, rectHeight, bolaPosX2, bolaPosY2, bolaTam2/2.0);
}

boolean rectBall(float rx, float ry, float rw, float rh, float bx, float by, float d) {

  if (bx+d/2 >= rx-rw/2 && bx-d/2 <= rx+rw/2 && abs(ry-by) <= d/2) {
    return true;
  }
  
  else if (by+d/2 >= ry-rh/2 && by-d/2 <= ry+rh/2 && abs(rx-bx) <= d/2) {
    return true;
  }

  float xDist = (rx-rw/2) - bx; 
  float yDist = (ry-rh/2) - by;
  float shortestDist = sqrt((xDist*xDist) + (yDist * yDist));

  // upper-right
  xDist = (rx+rw/2) - bx;
  yDist = (ry-rh/2) - by;
  float distanceUR = sqrt((xDist*xDist) + (yDist * yDist));
  if (distanceUR < shortestDist) { 
    shortestDist = distanceUR;    
  }

  // lower-right
  xDist = (rx+rw/2) - bx;
  yDist = (ry+rh/2) - by;
  float distanceLR = sqrt((xDist*xDist) + (yDist * yDist));
  if (distanceLR < shortestDist) {
    shortestDist = distanceLR;
  }

  // lower-left
  xDist = (rx-rw/2) - bx;
  yDist = (ry+rh/2) - by;
  float distanceLL = sqrt((xDist*xDist) + (yDist * yDist));
  if (distanceLL < shortestDist) {
    shortestDist = distanceLL;
  }

  if (shortestDist < d/2) { 
    return true;            
  }
  else {                    
    return false;
  }
}

