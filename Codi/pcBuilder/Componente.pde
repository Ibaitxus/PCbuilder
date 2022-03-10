class Componente {
  
  PImage imagen;
  String nombre;
  String marca;
  String specs;
  String recomend;
  String precio;
  
  color c = color(254);
  
  float marge = 10;
  
  Componente (String n, String m, String s, String r, String p, String i){
    this.nombre = n;
    this.marca = m;
    this.specs = s;
    this.recomend = r;
    this.precio = p;
    setImagen(i);
  }
  
  void setImagen(String imgName){
    this.imagen = loadImage(imgName);
  }
  
  void setColor(color c){
    this.c = c;
  }
  
  void display(float x, float y, float w, float h){
    pushStyle();
      rectMode(CORNER);fill(c);
      stroke(0); strokeWeight(2);
      rect(x, y, w, h, 5);
      // Dibuja la imagen del componente
      if(imagen!=null){
        imageMode(CORNER);
        image(imagen, x+ marge, y + marge, w - 2*marge, 3*h/4);
      }
      else {
        fill(0);
        rect(x+ marge, y + marge, w - 2*marge, 3*h/4);
      }
      //Muestra el texto informativo del componente
      textAlign(LEFT); textSize(24); fill(0);
      text(this.nombre, marge + x, y + 3*h/4 + 50);
      textSize(18);
      text(this.marca, marge + x, y + 3*h/4 + 80);
      text(this.specs, marge + x, y + 3*h/4 + 110);
      text(this.recomend, marge + x, y + 3*h/4 + 130);
      text(this.precio + "€", x + 5*w/6, y + 3*h/4 + 130);
    popStyle();
  }
  
  boolean mouseOver(float x, float y, float w, float h){
    return mouseX>x && mouseX<x+w &&
           mouseY>y && mouseY<y+h;
  }
}
