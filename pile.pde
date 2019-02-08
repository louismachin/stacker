class Pile {
  
  float l, w, h;
  Tier[] tiers;
  
  Pile(float l, float w, float h) {
    
    this.l = l;
    this.w = w;
    this.h = h;
    
  }
  
  void calculateA(int x, int y, int z) {

    tiers = new Tier[z];
    
    for (int k = 0; k < z; k++) {
      tiers[k] = new Tier(l, w, h);
      if (k==0) {
        tiers[k].calculate(new PVector(0, 0, 0), x, y);  
      } else {
        tiers[k].calculate(tiers[k-1].top(), x, y);  
      }
    }
    
  }
  
  void calculateB(int boundX, int boundY, int boundZ) {
   
    tiers = new Tier[floor(boundZ / h)];
    
    PVector bound = new PVector(boundX, boundY);
    
    for (int k = 0; k < tiers.length; k++) {
      if (k % 2 == 0) {
        tiers[k] = new Tier(l, w, h);
      } else {
        tiers[k] = new Tier(w, l, h);
      }
      
      if (k==0) {
        bound = tiers[k].calculate(new PVector(0, 0, 0), bound.x, bound.y);  
      } else {
        bound = tiers[k].calculate(tiers[k-1].top(), bound.x, bound.y);  
      }
    }    
    
  }
  
  void show() {
    
    for (int k = 0; k < tiers.length; k++) {
      tiers[k].show();
    }
    
  }

}