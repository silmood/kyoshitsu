Pantalla pantallaActual = new Pantalla() {
 
  void dibujar() {
    text("Clase anonima", 0, 0, 20, 100);
 }
 
 void onClick(int x, int y) {
 }
};


Status status = Status.MENU;

void draw() {
  background(0);
  pantallaActual.dibujar();
}

void mouseReleased() {
  pantallaActual.onClick(mouseX, mouseY);
}
