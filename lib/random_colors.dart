import 'dart:math';
import 'package:flutter/material.dart';

const Color red = Color(0xFFFF0000);
const Color blue = Color(0xFF0000FF);
const Color green = Color(0xFF00FF00);
const Color yellow = Color(0xFFFFFF00);
const Color white = Color(0xFFFFFFFF);
const Color orange = Color(0xFFFFA500);
const Color purple = Color(0xFF800080);
const Color pink = Color(0xFFFFC0CB);
const Color brown = Color(0xFFA52A2A);
const Color black = Color(0xFF000000);
const Color grey = Color(0xFF808080);
const Color teal = Color(0xFF008080);
const Color indigo = Color(0xFF4B0082);
const Color cyan = Color(0xFF00FFFF);
const Color lime = Color(0xFF00FF00);

class RandomColors {
  static List<Color> get colors => [
        red,
        blue,
        green,
        yellow,
        orange,
        purple,
        pink,
        brown,
        black,
        grey,
        teal,
        indigo,
        cyan,
        lime,
      ];

  static Color getRandomColor() {
    final random = Random();
    
    return colors[random.nextInt(colors.length)];
  }

  static Color getContrastingTextColor(Color backgroundColor) {
    const double threshold = 128.0;

    double bgLuminance = 0.2126 * backgroundColor.red +
        0.7152 * backgroundColor.green +
        0.0722 * backgroundColor.blue;

    if (bgLuminance > threshold) {
      return black;
    }

    return white;
  }
}
