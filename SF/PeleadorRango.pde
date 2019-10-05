class PeleadorRango extends Peleador  {
  final int DISTANCIA_ATAQUE = 200;
  
  private boolean ataqueActivo;
  private int ataqueX;
  private int metaAtaqueX;
  
  
  PeleadorRango(String nombre, color c) {
    super(nombre, c);
    this.ataqueActivo = false;
  }
  
  void atacar() {
    if(!ataqueActivo) {
      this.ataqueActivo = true;
      this.ataqueX = getX() + w / 2;
      this.metaAtaqueX = this.ataqueX + DISTANCIA_ATAQUE;
    }
  }
  
  void dibujarAtaque() {
    if(ataqueActivo) {
      fill(0, 255, 0);
      float margenY = sin(ataqueX) * 3;
      ellipse(ataqueX, getY() + margenY, 10, 7);
      
      if(ataqueX < metaAtaqueX) {
        this.ataqueX += 3;
      } else {
        this.ataqueActivo = false;
      }
    }
  }
}
