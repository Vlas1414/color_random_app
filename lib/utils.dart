import 'dart:math';
import 'package:flutter/material.dart';

class Utils {
  //* make random color
  static Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }
}
