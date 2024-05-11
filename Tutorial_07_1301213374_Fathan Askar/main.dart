import 'dart:io';
void main(){
    print("Hello World!\n");
    var name = "Fathan";

    int age = 20;
    String city = "Bogor";
    double beratBadan = 88.5;
    bool olahraga = true;
    int nilaiQuiz,nilaiPraktikum,nilaiTubes;
    nilaiQuiz = 100;
    nilaiPraktikum = 90;
    nilaiTubes = 85;
    if (olahraga){
        print("Hello $name (130121337) dari kelas IF-45-04, umur kamu sekarang $age tahun. Kamu memiliki berat badan $beratBadan Kg, tetapi kamu Olahraga");
    }

    if (city=="Bogor"){
        print("You are from Bogor");
    }
    stdout.write("Kamu mendapatkan ");
    double nilaiTotal = (nilaiTubes*0.6)+(nilaiPraktikum*0.25)+(nilaiQuiz*0.15);
    if (nilaiTotal>80){
        print("Nilai A");
    }else if(nilaiTotal<=80 && nilaiTotal>70){
        print("Nilai AB");
    }else if(nilaiTotal<=70 && nilaiTotal>65){
        print("Nilai B");
    }else if (nilaiTotal<=65 && nilaiTotal>60){
        print("Nilai BC");
    }else if (nilaiTotal<=60 && nilaiTotal>50){
        print("Nilai C");
    }else if (nilaiTotal<=50 && nilaiTotal>40){
        print("Nilai D");
    }else if (nilaiTotal<40 && nilaiTotal>=0){
        print("Nilai E");
    }else{
        print("Nilai Tidak Valid");
    }
    switch (age) {
    case >=17:
      print('Kamu punya KTP');
      break;
    case <17:
      print('Kamu belum punya KTP');
      break;
    }
    print("");
    print("For Loop");
    for (var i = 1; i <= 5; i++) {
        print('Number: $i');
    }
    print("");
    print("While Loop");
    var i = 5;
    while (i > 0) {
        print('Number: $i');
        i--;
    }
    print("");
    // Mendeklarasikan fixed-length list
    var fixedLengthList = ["Messi", "Pele", "Maradonna", "Cryuff", "Ronaldo"];

    // Mendeklarasikan growable list
    var growableList = [];

    // Menginisialisasikan growable list
    growableList.add("Yamal");
    growableList.add("Gavi");
    growableList.add("Wirtz");
    growableList.add("Cubarsi");
    growableList.add("Guler");

    print('Greatest Football Players of All Time(Fixed List):');
    for (int i = 0; i < fixedLengthList.length; i++) {
        stdout.write(fixedLengthList[i]+" ");
    }
    print('\nYoung and upcoming Football Stars:');
    for (int i = 0; i < growableList.length; i++) {
        stdout.write(growableList[i]+" ");
    }
    
    print('Fibonacci sequence:');
    fibonacci(10);
    print(" ");
    int x = 5;
    print("Sum Up To $x");
    print(sumUpTo(x));
}

void fibonacci(int n) {
  List<int> sequence = [0, 1];
  print('Fibonacci sequence:');
  stdout.write(sequence[0]);
  stdout.write(" ");
  stdout.write(sequence[1]);
  stdout.write(" "); 
  for (int i = 2; i < n; i++) {
    sequence.add(sequence[i - 1] + sequence[i - 2]);
    stdout.write(sequence[i]);
    stdout.write(" ");
  }
}

int sumUpTo(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + sumUpTo(n - 1);
  }
}