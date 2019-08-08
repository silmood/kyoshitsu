#include <iostream>

using namespace std;

int calcularDiagonales(int lados) {
  return (lados * (lados - 3)) / 2;
}

int main() {
  cout << calcularDiagonales(5);

  return 0;
}