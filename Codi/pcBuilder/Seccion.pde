class Seccion {
  //Propiedades de una sección
  String titulo, descripcion;
  Estant e;

  //Método constructor
  Seccion(String t, String d, Estant e) {
    this.titulo = t;
    this.descripcion = d;
    this.e = e;
  }

  void display() {
    pushStyle();
   
    //Muestra el texto 
    textAlign(CENTER); 
    textSize(54); 
    fill(0);
    text(this.titulo, 2*marginH + logoWidth + bannerWidth/2, marginV + bannerHeight/3);
    textSize(34);
    text(this.descripcion, 2*marginH + logoWidth + bannerWidth/2, marginV + 2*bannerHeight/3);
    popStyle();
    
    //muestra estante
    e.display();
  }
}
