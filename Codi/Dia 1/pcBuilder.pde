
void setup(){
  fullScreen();                       // Pantalla completa
  //size(1800, 1080);                 // Pantalla HD
  noStroke();                         // Sense bordes
  textAlign(CENTER); textSize(18);   // Alineació i mida del text
}

void draw(){
  
  drawPrincipalZone();
  
  drawLogoZone();
  
  drawSidebarZone();
  
  drawBannerZone();
  
  drawColumnsZone();
  
  println("X: "+mouseX+", Y:"+mouseY);
}
