#include <iostream>
#include <string>

using namespace std;

int obtenerMasLargo(string* nombres, int numeroNombres)
{
  int masLargo = 0;

  for (size_t i = 1; i < numeroNombres; i++)
  {
    if (nombres[masLargo].length() < nombres[i].length())
    {
      masLargo = i;
    }
  }

  return masLargo;
}

int main()
{
  string nombres[] = {"Lola", "Jorge", "Ulises"};
  int masLargo = obtenerMasLargo(nombres, 3);
  cout << nombres[masLargo];
}