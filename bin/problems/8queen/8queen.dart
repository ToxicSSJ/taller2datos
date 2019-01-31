import '../../problem.dart';
import 'package:colorize/colorize.dart';

class EightQueen implements Problem {

  @override
  bool available() {
    return true;
  }

  @override
  void call() {
    print(new Colorize("xdd")..bgCyan());
    return;

  }

}