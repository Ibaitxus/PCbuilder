// Marges Horitzontal i Vertical
float marginH = 20,
      marginV = 20;

// Dimensions Zona Lateral
float sidebarWidth  = 300, 
      sidebarHeight = 870;

// Dimensions Logo
float logoWidth  = 300, 
      logoHeight = 150;
      
// Dimensions Banner
float bannerWidth  = 1560, 
      bannerHeight = 300;
      
// Dimensions Columnes
float columnWidth  = 505,
      columnHeight = 720;
      
// Dimensions PresupostBanner
float overviewWidth  = 505,
      overviewHeight = 240; 

float editWidth  = 1560,
      editHeigth = 350;

// Zona Principal

  void drawPrincipalZone(){
    
    fill(237);
    rect(marginH, marginV, width - marginH*2, height - marginV*2);
  }
  
  // Zona Logo
  
  void drawLogoZone(){
  
    fill(255,220,0);
    rect(marginH, marginV, logoWidth, logoHeight);
  
  }
  
  // Zona Sidebar
  
  void drawSidebarZone(){
    
    fill(16,60,133);
    rect(marginH, 2*marginV + logoHeight, sidebarWidth, sidebarHeight);
  
  }
  // Zona Banner
  
  void drawBannerZone(){
    
    fill(16,60,133);
    rect(2*marginH + logoWidth, marginV, bannerWidth, bannerHeight);
  
  }
  
  // Zona Columnes 1, 2 i 3
  
  void drawColumnsZone(){
    
    fill(28,136,244);
    rect(2*marginH + sidebarWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  
    fill(28,136,244);
    rect(3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  
    fill(28,136,244);
    rect(4*marginH + sidebarWidth + 2*columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  }
  
  void drawOverviewBannerZone(){
    
    fill(16,60,133);
    rect(2*marginH + logoWidth, marginV, bannerWidth, bannerHeight/2);
  
  }
  void drawOverviewZone (){
    
    fill(28,136,244);
    rect(2*marginH + sidebarWidth, 2*marginV + logoHeight, overviewWidth, overviewHeight);
    rect(2*marginH + sidebarWidth, 3*marginV + logoHeight + overviewHeight, overviewWidth, overviewHeight);
    rect(2*marginH + sidebarWidth, 4*marginV + logoHeight + 2*overviewHeight, overviewWidth, overviewHeight);

  
    fill(28,136,244);
    rect(3*marginH + sidebarWidth + columnWidth, 2*marginV + logoHeight, overviewWidth, overviewHeight);
    rect(3*marginH + sidebarWidth + columnWidth, 3*marginV + logoHeight + overviewHeight, overviewWidth, overviewHeight);
    rect(3*marginH + sidebarWidth + columnWidth, 4*marginV + logoHeight + 2*overviewHeight, overviewWidth, overviewHeight);
  
    fill(28,136,244);
    rect(4*marginH + sidebarWidth + 2*columnWidth, 2*marginV + logoHeight, overviewWidth, overviewHeight);
    rect(4*marginH + sidebarWidth + 2*columnWidth, 3*marginV + logoHeight + overviewHeight, overviewWidth, overviewHeight);
    rect(4*marginH + sidebarWidth + 2*columnWidth, 4*marginV + logoHeight + 2*overviewHeight, overviewWidth, overviewHeight);
    
  }
  
  void drawEditZone (){
    
  fill(28,136,244);
  rect(2*marginH + sidebarWidth,2*marginV + bannerHeight,editWidth, editHeigth);
  rect(2*marginH + sidebarWidth,3*marginV + bannerHeight + editHeigth,editWidth/2 - marginH, editHeigth);
  rect(2*marginH + sidebarWidth + editWidth/2,3*marginV + bannerHeight + editHeigth,editWidth/2, editHeigth);


  }
  
