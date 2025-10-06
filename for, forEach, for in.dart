import 'dart:io';
void main() {
  // 1. feladat
  print('Kérek két egész számot (legfeljebb kétjegyű):');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int minNum = num1 < num2 ? num1 : num2;
  int maxNum = num1 > num2 ? num1 : num2;
  for (int i = minNum; i <= maxNum; i++) {
    String parity = (i % 2 == 0) ? 'páros' : 'páratlan';
    print('$i: $parity');
  }
  print('---');
  // 2. feladat
  List<String> uefa2024euro = [
    "Spain",
    "Germany",
    "Portugal",
    "France",
    "Netherlands",
    "Turkey",
    "England",
    "Switzerland"
  ];
  for (int i = 0; i < uefa2024euro.length; i++) {
    print('Index: $i, Érték: ${uefa2024euro[i]}');
  }
  print('---');
  // 4. feladat
  stdout.write('Adj meg egy két jegyű számot: ');
  String szam = stdin.readLineSync()!;
  int osszeg = 0;
  int darab = szam.length;

  for (int i = 0; i < szam.length; i++) {
    osszeg += int.parse(szam[i]);
  }

  double atlag = osszeg / darab;
  print('A számjegyek átlaga: ${atlag.toStringAsFixed(2)}');
  print('---');
  // 5. feladat
  stdout.write('Adj meg egy két jegyű számot: ');
  String szam2 = stdin.readLineSync()!;
  print('A számjegyek négyzete:');
  for (int i = 0; i < szam2.length; i++) {
    int digit = int.parse(szam2[i]);
    print('$digit négyzete: ${digit * digit}');
  }
  print('---');
  // 6. feladat
  stdout.write('Adj meg egy szöveget: ');
  String szoveg = stdin.readLineSync()!;
  String maganhangzokNelkul = '';
  List<String> maganhangzok = [ 'a', 'á', 'e', 'é', 'i', 'í', 'o', 'ó', 'ö', 'ő', 'u', 'ú', 'ü', 'ű',
    'A', 'Á', 'E', 'É', 'I', 'Í', 'O', 'Ó', 'Ö', 'Ő', 'U', 'Ú', 'Ü', 'Ű'
  ];
  for (int i = 0; i < szoveg.length; i++) {
    if (!maganhangzok.contains(szoveg[i])) {
      maganhangzokNelkul += szoveg[i];
    }
  }
  print('Szöveg magánhangzók nélkül: $maganhangzokNelkul');
  print('---');
  // 7. feladat
  stdout.write('Adj meg egy szöveget: ');
  String szoveg2 = stdin.readLineSync()!;
  print('Betűk és ASCII kódjaik:');
  for (int i = 0; i < szoveg2.length; i++)
    print('${szoveg2[i]}, ${szoveg2.codeUnitAt(i)}');
  print('---');
  // 8. feladat
  stdout.write('Adj meg egy számot: ');
  int szam3 = int.parse(stdin.readLineSync()!);
  print('FizzBuzz eredmény:');
  for (int i = 1; i <= szam3; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }
  print('---');
  // 9. feladat
  print('9. feladat eredmény:');
  for (int i = 1; i <= 6; i++) {
    for (int j = 1; j <= 6; j++) {
      if (i * j == 9) {
        break;
      }
      print('i: $i, j: $j, i*j: ${i * j}');
    }
  }
  print('---');
  // 10. feladat
  print('10. feladat eredmény:');
  outerLoop:
  for (int i = 1; i <= 6; i++) {
    for (int j = 1; j <= 6; j++) {
      if (i * j == 9) {
        break outerLoop;
      }
      print('i: $i, j: $j, i*j: ${i * j}');
    }
  }
  print('---');         
}