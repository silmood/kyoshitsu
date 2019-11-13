class Menu implements Pantalla {
  
  void dibujar() {
    text("Menu", 0, 0, 50, 20);
  }
  
  void onClick(int x, int y) {
    if((x >= 0 && x <= 50) && (y >= 0 && y <= 20)) {
      System.out.println("Menu");
    }
  }
}
