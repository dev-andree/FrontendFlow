import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:flutter/material.dart';

class TituloCategoria extends StatelessWidget {
  const TituloCategoria({
    super.key,
    required this.categoria,
    required this.onPressed,
    required this.foiSelecionada,
  });

  // Nome da categoria
  final String categoria;

  // Indica se a categoria foi selecionada
  final bool foiSelecionada;

  // Função chamada quando o widget é pressionado
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Ação ao tocar no widget
      child: Align(
        alignment: Alignment.center, // Alinha o widget no centro
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7), // Espaçamento interno
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Bordas arredondadas
            color: foiSelecionada 
                ? CoresCustomizadas.corAppCustomizada // Cor de fundo se selecionado
                : Colors.transparent, // Cor de fundo se não selecionado
          ),
          child: Text(
            categoria, // Texto da categoria
            style: TextStyle(
              color: foiSelecionada 
                  ? Colors.white // Cor do texto se selecionado
                  : CoresCustomizadas.corConstrasteCustomizada, // Cor do texto se não selecionado
              fontWeight: FontWeight.bold, // Fonte em negrito
              fontSize: 16, // Tamanho da fonte
            ),
          ),
        ),
      ),
    );
  }
}
