
void setup(){
  fullScreen();                       // Pantalla completa
  //size(1800, 1080);                 // Pantalla HD
  background(237);
  noStroke();                         // Sense bordes
  textAlign(CENTER); textSize(18);   // Alineació i mida del text
}

void draw(){
  
  //pantallaEleccion();
  
  //pantallaInicio();
  
  pantallaPresupuesto ();
  
  println("X: "+mouseX+", Y:"+mouseY);
}
