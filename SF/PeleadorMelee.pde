class PeleadorMelee extends Peleador {
  
  PeleadorMelee(String nombre, color c) {
    super(nombre, c);    
  }
  
  void dibujar() {
    super.dibujar();
    this.c = color(random(1, 255));
  }
  
  void atacar() {
  }
  
  void dibujarAtaque() {
  }
  
}
