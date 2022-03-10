
void pantallaPresupuesto(){
  
  drawPrincipalZone();
  
  drawLogoZone();
  
  drawSidebarZone();
  
  drawOverviewZone ();
  
  drawOverviewBannerZone();
  
  bSalir.display();
  
  for(Boton b :bEleccion){
    b.display();
  }
  noStroke();
}

void interaccionPresupuesto(){
  
 for(int i=0;i<9;i++){
   
    if(bEleccion[i].mouseOverButton() && bEleccion[i].enabled && pantalla == PANTALLA.PRESUPUESTO){
      pantalla = PANTALLA.ELECCION;
    }
  }
 if(bSalir.mouseOverButton() && bSalir.enabled && pantalla == PANTALLA.PRESUPUESTO){
   pantalla = PANTALLA.INICIO; 
   for(int i=1;i<10;i++){bEleccion[i].setEnabled(false);}
   bActivados = 1;
 }
}
