enum PANTALLA {INICIO, ELECCION, PRESUPUESTO, INICIOSESION, EDITARELECCION, EDITAR}
Estant e;
Seccion secciones[] = new Seccion[9];


PANTALLA pantalla = PANTALLA.INICIO;
 

void setup(){
  //fullScreen();                       // Pantalla completa
  size(1920, 1080);                 // Pantalla full HD
  background(254);
  noStroke();                         // Sense bordes
  textAlign(CENTER); textSize(18);   // Alineació i mida del text
  
  initBoton();
  
  e = new Estant(1, "", logoWidth + 3*marginH, bannerHeight + 3*marginV, 3*columnWidth - 6*marginH, columnHeight - 3*marginV - bOHeight, 3);
  e.afegirComponentes(info);
  e.setColor(color(254));
  e.setButtons("bPrev.png", "bNext.png");
  
  secciones[1] = new Seccion("Procesador (CPU)", "Es el cerebro del ordenador", e);
}

void draw(){
  updateCursor();
   
  switch(pantalla){
    case INICIO: pantallaInicio(); break;
    case ELECCION: pantallaEleccion(); break;
    case PRESUPUESTO: pantallaPresupuesto(); break;
    case INICIOSESION: pantallaInicioSesion(); break;
    case EDITARELECCION: pantallaEditarEleccion(); break;
    case EDITAR: pantallaEditar(); break;
  } 


  //println("X: "+mouseX+", Y:"+mouseY);
}
