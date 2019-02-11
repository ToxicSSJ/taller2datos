import 'package:taller2datos/taller2datos.dart' as taller2datos;

import 'dart:io';

import 'problems/horse/horse.dart';
import 'problems/nqueen/nqueen.dart';

main(List<String> arguments) {

  print('[TALLER2] Escribe el numero del ejercicio para ejecutar:\n');

  print("(#1) REINAS NxN");
  print("(#2) CABALLO NxN");
  print("(#3) NUMERO 14");
  print("(#4) BARCO CARGUERO");

  var input = stdin.readLineSync();

  switch(input) {

    case '1':

      print('[REINAS] Escribe el tamaño del tablero NxN:\n');
      input = stdin.readLineSync();

      int value = int.tryParse(input);
      print('[REINAS] Tamaño del tablero \n' + value.toString() + 'x' + value.toString() + ' fijado.');
      print('[REINAS] ¿Fijar tres reinas? y/n');
      input = stdin.readLineSync();
      
      if(input.contains("y")) {

        print('[REINAS] Coloca el valor de la posición de A y luego la Columna de A.');

        int positionA = int.tryParse(stdin.readLineSync());
        int columnA   = int.tryParse(stdin.readLineSync());

        print('[REINAS] Coloca el valor de la posición de B y luego la Columna de B.');

        int positionB = int.tryParse(stdin.readLineSync());
        int columnB   = int.tryParse(stdin.readLineSync());

        print('[REINAS] Coloca el valor de la posición de C y luego la Columna de C.');

        int positionC = int.tryParse(stdin.readLineSync());
        int columnC   = int.tryParse(stdin.readLineSync());

        print('[REINAS] Generando ubicaciones posibles con 3 reinas predefinidas...');

        NQueen nQueen = new NQueen();
        nQueen.call([true, value, [[positionA, columnA], [positionB, columnB], [positionC, columnC]]]);
        return;

      }

      print('[REINAS] Generando ubicaciones posibles...');

      NQueen nQueen = new NQueen();
      nQueen.call([false, value]);
      return;

    case '2':

      print('[CABALLO] Escribe el tamaño del tablero NxN:\n');
      input = stdin.readLineSync();

      int value = int.tryParse(input);
      print('[CABALLO] Tamaño del tablero \n' + value.toString() + 'x' + value.toString() + ' fijado.');
      print('[CABALLO] Generando camino del caballo...');

      Horse horse = new Horse();
      horse.call([value]);
      return;

  }

}
