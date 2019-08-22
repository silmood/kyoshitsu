class Peleador {
  String nombre;
  color c;
  int x;
  int y;
  
  Peleador(String nombre, int x, int y, color c) {
    
    this.nombre = nombre;
    this.c = c;
    this.x = x;
    this.y = y;
    
    fill(c);
    ellipse(x, y, 20, 20);
  }
}
