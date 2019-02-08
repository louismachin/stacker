class Tier {
  
  float l, w, h;
  int x, y;
  Box[][] boxes;
  
  Tier(float l, float w, float h) {
    
    this.l = l;
    this.w = w;
    this.h = h;
    
  }
  
  PVector calculate(PVector origin, float boundX, float boundY) {
   
    this.x = floor(boundX / l);
    this.y = floor(boundY / w);
    
    boxes = new Box[x][y];
    
    if (x > 0 && y > 0) {
    
      boxes[0][0] = new Box(origin, l, w, h);
      Box last  = boxes[0][0];
      Box line  = boxes[0][0];
      
      for (int j = 0; j < y; j++) {
        for (int i = 0; i < x; i++) {  
          // Create box at line pointer if start of line
          // else create box at left of last box created
          if (i == 0) {
            boxes[i][j] = line;
          } else {
            boxes[i][j] = new Box(last.left(), l, w, h);       
          } 
          // Set last box pointer
          last = boxes[i][j];
        } 
        // Set new line pointer to right side of previous
        line = new Box(line.right(), l, w, h);
      }
    
    }
    
    return new PVector(x * l + w/2, y * w + l/2);
    
  }
  
  PVector top() {
    
    if (x > 0 && y > 0) { 
      return boxes[0][0].top(); 
    } else {
      return new PVector(0, 0);  
    }
    
  }
  
  void show() {
    for (int j = 0; j < y; j++) {
      for (int i = 0; i < x; i++) {  
        boxes[i][j].show();
      }
    }
  }
  
}