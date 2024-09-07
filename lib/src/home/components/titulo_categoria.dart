import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:flutter/material.dart';

class TituloCategoria extends StatelessWidget {
  const TituloCategoria(
      {super.key, required this.categoria, required this.onPressed, required this.foiSelecionada});

  final String categoria;
  final bool foiSelecionada;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: foiSelecionada ? CoresCustomizadas.corAppCustomizada : Colors.transparent,
          ),
          child: Text(
            categoria,
            style: TextStyle(
              color: foiSelecionada ? Colors.white: CoresCustomizadas.corConstrasteCustomizada,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
