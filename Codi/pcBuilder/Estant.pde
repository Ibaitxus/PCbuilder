class Estant {

  float x, y, w, h;

  int pos;
  String nom;
  color cFons = color(256);

  int currentComponente=0;
  int numComponentes = 0;
  int numComponentesVisibles = 3;
  Componente[] componentes;

  float componenteW;
  float margeH = 3*marginH;
  int selected = -1;

  RoundButton bPrev, bNext;

  Estant(int p, String n, float x, float y, float w, float h, int nv) {
    this.pos = p;
    this.nom = n;
    this.componentes = new Componente[100];
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.numComponentesVisibles = nv;
    this.componenteW = w / (float) nv;
  }

  void afegirComponente(Componente l) {
    if (numComponentes < this.componentes.length) {
      this.componentes[numComponentes] = l;
      numComponentes++;
    }
  }

  void afegirComponentes(Componente[] ls) {
    for (Componente l : ls) {
      afegirComponente(l);
    }
  }
  
  void afegirComponente(String[] info){
    Componente c = new Componente(info[0], info[1], info[2], info[3], info[4], info[5]);
    afegirComponente(c);
  }
  
  void afegirComponentes(String[][] info){
    for(int f=0; f<info.length; f++){
      afegirComponente(info[f]);
    }
  }

  void setButtons(String img1, String img2) {
    PImage imgPrev = loadImage(img1);
    bPrev = new RoundButton(imgPrev, x, y + h/2, 30);

    PImage imgNext = loadImage(img2);
    bNext = new RoundButton(imgNext, x + w + 30, y + h/2, 30);
  }
  
  void setColor(color c){
    this.cFons = c;
  }

  void next() {
    if (this.currentComponente<this.numComponentes - this.numComponentesVisibles) {
      this.currentComponente+=this.numComponentesVisibles;
      this.currentComponente = constrain(this.currentComponente, 0,this.numComponentes-1); 
    }
  }

  void prev() {
    if (this.currentComponente>0) {
      this.currentComponente-=this.numComponentesVisibles;
      this.currentComponente = constrain(this.currentComponente, 0,this.numComponentes-1); 
    }
  }

  void display() {
    pushStyle();
    fill(cFons); stroke(0); strokeWeight(2);
    rectMode(CORNER);
    //rect(x-5, y-5, w+10 + margeH*2, h+10, 5);
    
    //rect(x+w-200+ margeH*2+5, y -40, 200, 40, 5);
    noStroke();
    //rect(x+w-200+ margeH*2+6, y -39, 198, 44, 5);
    
    fill(0); textAlign(CENTER); textSize(24);
    //text("("+this.numComponentes+") "+this.nom, x+w-100+ margeH*2+10, y -10);

    for (int i=0; i<this.numComponentesVisibles; i++) {

      int index = i + this.currentComponente;

      if (index<this.numComponentes) {
        
        // Posició dins l'estant
        float xPos = x + i*(this.componenteW + this.margeH);

        // Componente a mostrar
        Componente l= componentes[index];
        l.display(xPos, y, this.componenteW, h);

        // Número del componente
        fill(cFons); noStroke(); rectMode(CENTER);
        rect(xPos + 40, y + 40, 40, 40, 10);
        fill(0); textAlign(CENTER);
        text(index+1, xPos + 40, y + 48);
      }
    }

    if (bNext!=null && (this.currentComponente + this.numComponentesVisibles)<this.numComponentes) {
      bNext.display();
      bNext.setEnabled(true);
    }
    else {
      bNext.setEnabled(false);
    }
    if (bPrev!=null && this.currentComponente > 0) {
      bPrev.display();
      bPrev.setEnabled(true);
    }
    else {
      bPrev.setEnabled(false);
    }
    
    popStyle();
  }
  
  boolean checkButtons(){
    if(bNext.mouseOverButton() && bNext.enabled){
      this.next();
      return true;
    }
    else if(bPrev.mouseOverButton() && bPrev.enabled){
      this.prev();
      return true;
    }
    return false;
  }
  
  boolean checkCursor(){
    if(bNext.mouseOverButton() && bNext.enabled){
      return true;
    }
    else if(bPrev.mouseOverButton() && bPrev.enabled){
      return true;
    }
    else if(this.checkMouseComponente()){
      return true;
    }
    return false;
  }

  
  int checkClickComponente(){
    for (int i=0; i<this.numComponentesVisibles; i++) {
      int index = i + this.currentComponente;
      if (index<this.numComponentes) {
        float xPos = x + i*(this.componenteW + this.margeH);
        Componente l= componentes[index];
        if(l.mouseOver(xPos, y, this.componenteW, h)){
          return index;
        }
      }
    }
    return -1;
  }
  
  boolean checkMouseComponente(){
    for (int i=0; i<this.numComponentesVisibles; i++) {
      int index = i + this.currentComponente;
      if (index<this.numComponentes) {
        float xPos = x + i*(this.componenteW + this.margeH);
        Componente l= componentes[index];
        if(l.mouseOver(xPos, y, this.componenteW, h)){
          return true;
        }
      }
    }
    return false;
  }
  
}
