import java.util.Scanner;

void setup() {
  size(400, 400);
  background(255);
  
  int numeroPeleadores = 7;
  Peleador peleadores[] = new Peleador[numeroPeleadores];
  
  int i = 0;
  while(i < peleadores.length) {
    
    String nombre = "Peleador " + (i + 1);
    int x = i % 2 == 0 ? 10 : 390;
    color c = i % 2 == 0 ? color(255, 255, 0) : color(0, 255, 255);
    
    peleadores[i] = new Peleador(nombre, x, (i * 20) + 10 , c);
    
    i++;
  }
  
}

void draw() {
}
