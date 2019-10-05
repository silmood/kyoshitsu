abstract class Peleador {
  final int DISTANCIA_MOVIMIENTO = 20;
  
  private int x;
  private int y;
  final int w;
  final int h;
  String nombre;
  color c;
  
  private int metaX;
  
  Peleador(String nombre, color c) {
    this(10, height/2, nombre, c);
  }
  
  Peleador(int x, int y, String nombre, color c){
    this.x = x;
    this.metaX = x;
    this.y = y;
    this.nombre = nombre;
    this.c = c;
    this.w = 20;
    this.h = 20;
  }
  
  public void setX(int x) {
    if(x >= w / 2 && x <= width - (w/2)) {
      this.x = x;
    }
  }
  
  public void setMetaX(int x) {
    if(x >= w / 2 && x <= width - (w/2)) {
      this.metaX = x;
    }
  }
  
  public void setY(int y) {
    if(y == height / 2) {
      this.y = y;
    }
  }
  
  public int getX() {
    return x;
  }
  
  public int getY() {
    return y;
  }
  
  void onKeyPressed(char key) {
    switch(key) {
      case 'd':
        setMetaX(this.x + DISTANCIA_MOVIMIENTO);
        break;
      case 'a': 
        setMetaX(this.x - DISTANCIA_MOVIMIENTO);
        break;
      case ' ':
        atacar();
    }
  }
  
  void mover() {
    if(x < metaX) {
      setX(x + 2);
    } else if(x > metaX) {
      setX(x - 2);
    }
  }
  
  void dibujar() {
    mover();
    dibujarAtaque();
    fill(c);
    ellipse(x, y, w, h);
  }
  
  abstract void atacar();
  abstract void dibujarAtaque();
}
