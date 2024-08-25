import 'package:flutter/material.dart';

abstract class CoresCustomizadas {
  static final Map<int, Color> _opacidade = {
    50: const Color(0xFFFFF9C4),
    100: const Color(0xFFFFF59D),
    200: const Color(0xFFFFF176),
    300: const Color(0xFFFFEE58),
    400: const Color(0xFFFFEB3B),
    500: const Color(0xFFFFC107),
    600: const Color(0xFFFFB300),
    700: const Color(0xFFFFA000),
    800: const Color(0xFFFF8F00),
    900: const Color(0xFFFF6F00),
  };

  static Color corConstrasteCustomizada = const Color.fromARGB(255, 0, 0, 0);

  static MaterialColor corAppCustomizada =
      MaterialColor(0xFFFFC107, _opacidade);
}
