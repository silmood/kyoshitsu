Peleador ryu;

void setup() {
  size(400, 400);
  ryu = new PeleadorRango("Ryu", color(255, 0, 0));
}

void draw() {
  background(255);
  
  ryu.dibujar();
}

void keyPressed() {
  ryu.onKeyPressed(key);
}
