import 'package:taller2datos/taller2datos.dart' as taller2datos;

import 'problems/8queen/8queen.dart';

main(List<String> arguments) {
  print('Hello world: ${taller2datos.calculate()}!');

  EightQueen eightQueen = new EightQueen();
  eightQueen.call();

}
