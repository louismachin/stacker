void setup() {
  
  size(800, 800);
  frameRate(1);
  draw();
  
}

void draw() {

  background(#FFFFFF);
  stroke(255);
  
  float l = 16 + random(8);
  float w = 32 + random(48);
  float h = 24;
  
  Pile pile = new Pile(l, w, h);
  pile.calculateB(320, 240, 240);
  translate(320, 240);
  pile.show();

}