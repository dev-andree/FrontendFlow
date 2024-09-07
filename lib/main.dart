import 'package:app_mobile/src/autenticacao/login_screen.dart';
import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: CoresCustomizadas.corAppCustomizada,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.75),
        bottomAppBarTheme: BottomAppBarTheme(
          color: CoresCustomizadas.corAppCustomizada,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
