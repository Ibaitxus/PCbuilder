int bActivados = 0;

Componente componenteSeleccionat = null;

void pantallaEleccion(){
  
  drawPrincipalZone();
  
  drawLogoZone();
  
  drawSidebarZone();
  
  drawBannerZone();
  
  drawColumnsZone();
  
  for(Boton b :bEleccion){
    b.display();
  }
  bOpcion1.display();
  bOpcion2.display();
  bOpcion3.display();
 
  if (bActivados<2){
    //secciones[bActivados].display();
  }

  noStroke();
}

void interaccionEleccion(){
  
  if((bOpcion1.mouseOverButton()&& bOpcion1.enabled && pantalla == PANTALLA.ELECCION && bActivados<9)||
    (bOpcion2.mouseOverButton() && bOpcion2.enabled && pantalla == PANTALLA.ELECCION && bActivados<9)||
    (bOpcion3.mouseOverButton() && bOpcion3.enabled && pantalla == PANTALLA.ELECCION && bActivados<9)){
    bEleccion[bActivados + 1].setEnabled(true);
    bActivados++;
  }
  
  if((bEleccion[9].mouseOverButton()&& bEleccion[9].enabled && pantalla == PANTALLA.ELECCION)||
    bActivados == 9){
      pantalla = PANTALLA.PRESUPUESTO;
    }
    
    if (!e.checkButtons()) {
    int nc = e.checkClickComponente();
    if (nc!=-1) {
      componenteSeleccionat = e.componentes[nc];
    } else {
      componenteSeleccionat = null;
    }
  }
  
  for (int i=0; i<10; i++){
    if (bEleccion[i].mouseOverButton()&& bEleccion[i].enabled && pantalla == PANTALLA.ELECCION){
      bActivados = i;
    }
  }
}
