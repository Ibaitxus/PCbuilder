
void pantallaInicio(){
  
  drawPrincipalZone();

  drawLogoZone();
  
  
  bInicio.display();
  noStroke();
  
}

void interaccionInicio(){
  
  if((bInicio.mouseOverButton()&& bInicio.enabled && pantalla == PANTALLA.INICIO)){
    pantalla = PANTALLA.ELECCION;
  }

}
