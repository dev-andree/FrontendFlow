import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:app_mobile/src/pages/home/home_tab.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  // Índice atual da navegação
  int currentIndex = 0;

  // Controlador para o PageView
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Corpo da tela com PageView
      body: PageView(
        // Desabilita a rolagem manual entre as páginas
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController, // Controlador do PageView
        children: [
          const HomeTab(), // Aba inicial (Home)
          Container(
            color: const Color.fromARGB(255, 0, 0, 0), // Página com fundo preto (Carrinho)
          ),
          Container(
            color: const Color.fromARGB(255, 30, 233, 64), // Página com fundo verde (Pedidos)
          ),
          Container(
            color: const Color.fromARGB(255, 255, 208, 0), // Página com fundo amarelo (Perfil)
          ),
        ],
      ),
      // Barra de navegação inferior
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            // Atualiza o índice da página ao clicar no ícone da barra de navegação
            currentIndex = index;
            pageController.jumpToPage(index); // Navega para a página correspondente
          });
        },
        currentIndex: currentIndex, // Índice da página atualmente selecionada
        type: BottomNavigationBarType.fixed, // Barra fixa com 4 itens
        selectedItemColor: Colors.white, // Cor do item selecionado
        unselectedItemColor: Colors.white.withAlpha(100), // Cor dos itens não selecionados
        items: const [
          // Ícones da barra de navegação
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), // Ícone para Home
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), // Ícone para Carrinho
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list), // Ícone para Pedidos
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), // Ícone para Perfil
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
