enum PANTALLA {INICIO, ELECCION, PRESUPUESTO, INICIOSESION, EDITARELECCION, EDITAR}

void setup(){
  fullScreen();                       // Pantalla completa
  //size(1800, 1080);                 // Pantalla full HD
  background(237);
  noStroke();                         // Sense bordes
  textAlign(CENTER); textSize(18);   // Alineació i mida del text
}

void draw(){
  
  PANTALLA pantalla = PANTALLA.INICIO;
  
  switch(pantalla){
    case INICIO: pantallaInicio(); break;
    case ELECCION: pantallaEleccion(); break;
    case PRESUPUESTO: pantallaPresupuesto(); break;
    case INICIOSESION: pantallaInicioSesion(); break;
    case EDITARELECCION: pantallaEditarEleccion(); break;
    case EDITAR: pantallaEditar(); break;
  } 
  
 // updateCursor();

  println("X: "+mouseX+", Y:"+mouseY);
}

// Modifica el cursor
/*void updateCursor(){
  
  if((b1.mouseOverButton() && b1.enabled)||
     (b2.mouseOverButton() && b2.enabled)||
     (b3.mouseOverButton() && b3.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
}*/
