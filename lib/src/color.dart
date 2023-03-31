import 'package:flutter/material.dart';

Color showColors(int i, [int? active]) {
  switch (i) {
    case 0:
      return (active != null && i == active)
          ? Colors.red
          : Colors.red.withOpacity(.4);
    case 1:
      return (active != null && i == active)
          ? Colors.yellow
          : Colors.yellow.withOpacity(.4);
    case 2:
      return (active != null && i == active)
          ? const Color.fromARGB(255, 15, 129, 74)
          : const Color.fromARGB(255, 15, 129, 74).withOpacity(.4);
    default:
      return Colors.black;
  }
}
