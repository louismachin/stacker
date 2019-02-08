class Box {
  
  PVector A, B, C, D, E, F, G, O;
  float l, w, h;
  
  Box(PVector O, float l, float w, float h) {
    
    this.O = O;
    this.l = l;
    this.w = w;
    this.h = h;
    
  }
  
  PVector left() {
    return new PVector(O.x-(sqrt(3)*l)/2, O.y+l/2);
  }
  
  PVector right() {
    return new PVector(O.x+(sqrt(3)*w)/2, O.y+w/2);
  }
  
  PVector top() {
    return new PVector(O.x, O.y-h);
  }
  
  
  void show() {
    
    A = new PVector((sqrt(3)*l)/2, 0);
    B = new PVector((sqrt(3)*l+sqrt(3)*w)/2, w/2);
    C = new PVector(0, l/2);
    D = new PVector((sqrt(3)*w)/2, (l+w)/2);
    E = new PVector((sqrt(3)*l+sqrt(3)*w)/2, h+(w/2));
    F = new PVector(0, h+(l/2));
    G = new PVector((sqrt(3)*w)/2,h+(l+w)/2);
    
    pushMatrix();
    
    translate(O.x - A.x, O.y - A.y);
    
    stroke(#000000);
    strokeWeight(1);
    strokeJoin(ROUND);
    
    fill(#F7D296);
    beginShape();
    vertex(A.x, A.y);
    vertex(B.x, B.y);
    vertex(D.x, D.y);
    vertex(C.x, C.y);
    endShape(CLOSE);
    
    fill(#B88660);
    beginShape();
    vertex(C.x, C.y);
    vertex(D.x, D.y);
    vertex(G.x, G.y);
    vertex(F.x, F.y);
    endShape(CLOSE);
    
    fill(#E1B872);
    beginShape();
    vertex(B.x, B.y);
    vertex(D.x, D.y);
    vertex(G.x, G.y);
    vertex(E.x, E.y);
    endShape(CLOSE); 
    
    popMatrix();
    
  }
  
}