Boton bInicio, bSalir, bOpcion1, bOpcion2, bOpcion3;
Boton bEleccion[] = new Boton[10];

boolean cursorHand = false;

float bIWidth  = 500,
      bIHeight = 200;
    
float bEWidth,
      bEHeight;
      
float bOWidth,
      bOHeight;
      
color iBColor = color(255,220,0);


    
void initBoton(){
  bEWidth =  sidebarWidth - 2*marginH;
  bEHeight = (sidebarHeight - 11*marginV)/10;
  bOWidth = columnWidth - 2*marginH;
  bOHeight = 100;
  
  bInicio = new Boton("EMPEZAR", width/2-bIWidth/2, height/2-bIHeight/2, bIWidth, bIHeight, iBColor);
  
  bOpcion1 = new Boton("ELEGIR", 3*marginH + sidebarWidth, marginV + bannerHeight + columnHeight - bOHeight, bOWidth, bOHeight, iBColor);
  bOpcion2 = new Boton("ELEGIR", 4*marginH + sidebarWidth + columnWidth, marginV + bannerHeight + columnHeight - bOHeight, bOWidth, bOHeight, iBColor);
  bOpcion3 = new Boton("ELEGIR", 5*marginH + sidebarWidth + 2*columnWidth, marginV + bannerHeight + columnHeight - bOHeight, bOWidth, bOHeight, iBColor);

  bEleccion[0] = new Boton("Torre", 2*marginH, 3*marginV + logoHeight, bEWidth, bEHeight, iBColor);
  bEleccion[1] = new Boton("CPU", 2*marginH, 4*marginV + logoHeight + bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[2] = new Boton("Placa Base", 2*marginH, 5*marginV + logoHeight + 2*bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[3] = new Boton("GPU", 2*marginH, 6*marginV + logoHeight + 3*bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[4] = new Boton("RAM", 2*marginH, 7*marginV + logoHeight + 4*bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[5] = new Boton("Almacenamiento", 2*marginH, 8*marginV + logoHeight + 5*bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[6] = new Boton("2-Almacenamiento", 2*marginH, 9*marginV + logoHeight + 6*bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[7] = new Boton("Refri", 2*marginH, 10*marginV + logoHeight + 7*bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[8] = new Boton("Otros", 2*marginH, 11*marginV + logoHeight + 8*bEHeight, bEWidth, bEHeight, iBColor);
  bEleccion[9] = new Boton("PRECIO", 2*marginH, 12*marginV + logoHeight + 9*bEHeight, bEWidth, bEHeight, iBColor);
  
  bSalir = new Boton ("SALIR",2*marginH + bannerWidth, 2*marginV, logoWidth - marginH, bannerHeight/2 - 2*marginV, iBColor);

  for(int i =1; i <= bEleccion.length-1; i++){
    bEleccion[i].setEnabled(false);
  }
}

void mousePressed(){
  interaccionInicio();
  
  interaccionEleccion();
  
  interaccionPresupuesto();
}

// Modifica el cursor
void updateCursor(){
  
  cursorHand = false;
  for(Boton b : bEleccion){
    // Si estic sobre algun botó
    if(b.mouseOverButton() && b.enabled && (pantalla == PANTALLA.ELECCION || pantalla == PANTALLA.PRESUPUESTO) ||
    (bInicio.mouseOverButton() && bInicio.enabled && pantalla == PANTALLA.INICIO)||
    (bOpcion1.mouseOverButton() && bOpcion1.enabled && pantalla == PANTALLA.ELECCION)||
    (bOpcion2.mouseOverButton() && bOpcion2.enabled && pantalla == PANTALLA.ELECCION)||
    (bOpcion3.mouseOverButton() && bOpcion3.enabled && pantalla == PANTALLA.ELECCION)||
    (bSalir.mouseOverButton() && bSalir.enabled && pantalla == PANTALLA.PRESUPUESTO)){
      cursorHand = true;
      break;
    }
  }
  
  if(cursorHand){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
 
}
