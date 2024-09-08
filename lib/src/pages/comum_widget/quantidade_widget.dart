import 'package:flutter/material.dart';

// Widget para representar a quantidade, com dois botões (aumentar/diminuir)
class QuantidadeWidget extends StatelessWidget {
  final int valor;
  final String tipo;
  final Function(int quantidade) resultadoTotal;

  const QuantidadeWidget(
      {super.key,
      required this.valor,
      required this.tipo,
      required this.resultadoTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Estilização da caixa que contém os botões
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400, // Sombra em torno da caixa
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          // Botão de diminuir quantidade
          _BotaoQuantidade(
            color: Colors.red,
            icon: Icons.remove,
            onPressed: () {
              if (valor == 1) return;
              int total = valor - 1;
              resultadoTotal(total);
            }, // Aqui você deve adicionar a lógica de ação
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '$valor$tipo',
              style: const TextStyle(fontSize: 15),
            ),
          ),

          // Botão de aumentar quantidade (sem parâmetros customizados)
          _BotaoQuantidade(
            color:
                Colors.green, // Exemplo de cor verde para o botão de adicionar
            icon: Icons.add,
            onPressed: () {
              int total = valor + 1;
              resultadoTotal(total);
            }, // Aqui você deve adicionar a lógica de ação
          ),
        ],
      ),
    );
  }
}

// Botão reutilizável para aumentar/diminuir quantidade
class _BotaoQuantidade extends StatelessWidget {
  final Color color; // Cor do botão
  final IconData icon; // Ícone do botão
  final VoidCallback onPressed; // Função a ser executada ao clicar

  const _BotaoQuantidade({
    required this.color,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Torna o fundo do material transparente
      child: InkWell(
        borderRadius: BorderRadius.circular(30), // Borda circular do botão
        onTap: onPressed, // Acionamento da função ao clicar
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: color, // Cor do fundo do botão
            shape: BoxShape.circle, // Formato circular do botão
          ),
          child: Icon(
            icon, // Ícone do botão
            color: Colors.white, // Cor do ícone
            size: 17, // Tamanho do ícone
          ),
        ),
      ),
    );
  }
}
