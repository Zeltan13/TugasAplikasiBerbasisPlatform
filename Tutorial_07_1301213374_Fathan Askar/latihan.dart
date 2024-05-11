void main() {
  List<List<int>> array2D = [
    [],
    [],
    [],
    [] 
  ];

  int value = 6;
  for (int i = 0; i < 4; i++) {
    array2D[0].add(value);
    value += 6;
  }

  value = 3;
  for (int i = 0; i < 5; i++) {
    array2D[1].add(value);
    value += 2;
  }

  value = 4;
  for (int i = 0; i < 6; i++) {
    array2D[2].add(value * value * value);
    value++;
  }

  value = 3;
  for (int i = 0; i < 7; i++) {
    array2D[3].add(value);
    value += 7;
  }

  print('Isi List:');
  for (int i = 0; i < array2D.length; i++) {
    print(array2D[i].join(' '));
  }
  int bilangan1 = 12;
  int bilangan2 = 8;

  print('Bilangan 1: $bilangan1');
  print('Bilangan 2: $bilangan2');
  print('FPB $bilangan1 dan $bilangan2 = ${cariFPB(bilangan1, bilangan2)}');
}

int cariFPB(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}
