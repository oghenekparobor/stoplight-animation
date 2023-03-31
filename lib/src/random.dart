import 'dart:math';

int randomNumber({int min = 0, int max = 2}) {
  var rnd = Random().nextInt(max + 1);

  return rnd;
}
