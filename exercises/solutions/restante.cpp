#include <iostream>

using namespace std;

int obtenerMayor(int* num, int tamanio) {
  int mayor = 0;
  for (size_t i = 1; i < tamanio; i++)
  {
    if (num[mayor] < num[i])
    {
      mayor = i;
    }
  }

  return mayor;
}

int obtenerMenor(int* num, int tamanio) {
  int menor = 0;
  for (size_t i = 1; i < tamanio; i++)
  {
    if (num[menor] > num[i])
    {
      menor = i;
    }
  }

  return menor;
}

void recorreArreglo(int* num, int posicion, int tamanio) {
  for (size_t i = posicion; i < (tamanio - 1); i++)
  {
    num[i] = num[i + 1];
  }
}

int main() {
  int num[] = {8, 1, 2, 9, 4, 3, 7, 5};
  int tamanio = sizeof(num) / sizeof(int);
  bool turnoMayor = true;

  while (tamanio > 1)
  {
    int posicionARecorrer = turnoMayor ? obtenerMayor(num, tamanio) : obtenerMenor(num, tamanio);
    recorreArreglo(num, posicionARecorrer, tamanio);
    turnoMayor = !turnoMayor;
    tamanio--;
  }

  cout << "Restante: " << num[0];
}