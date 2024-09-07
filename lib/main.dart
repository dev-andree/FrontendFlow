import 'package:app_mobile/src/pages/autenticacao/login_screen.dart';
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
        useMaterial3: true, // Ativa o Material 3
        scaffoldBackgroundColor: Colors.white.withOpacity(0.75), // Cor de fundo
        bottomAppBarTheme: BottomAppBarTheme(
          color: CoresCustomizadas.corAppCustomizada, // Cor do BottomAppBar
        ),
      ),
      home: const LoginScreen(), // Tela inicial do aplicativo
    );
  }
}
