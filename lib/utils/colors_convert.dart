import 'package:flutter/material.dart';

Color stringToColor(String colorName) {
  switch (colorName) {
    case "red":
      return Colors.red;
    case "green":
      return Colors.green;
    case "blue":
      return Colors.blue;
    case "yellow":
      return Colors.yellow.shade700;
    case "purple":
      return Colors.purple;
    case "pink":
      return Colors.pink;
    case "brown":
      return Colors.brown;
    case "grey":
      return Colors.grey;
    case "black":
      return Colors.black;
    case "white":
      return Colors.white;
    default:
      return Colors.red;
  }
}
