import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:app_mobile/src/pages/home/components/titulo_categoria.dart';
import 'package:app_mobile/src/pages/home/components/titulo_item.dart';
import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:app_mobile/src/configuracao/dados_app.dart' as dadosApp;
import 'package:app_mobile/src/pages/home/components/titulo_item.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // Categoria atualmente selecionada
  String categoriaSelecionada = 'Verduras';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar da tela
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(fontSize: 35),
            children: [
              TextSpan(
                text: 'Frontend',
                style: TextStyle(
                  color: CoresCustomizadas.corAppCustomizada,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Flow',
                style: TextStyle(
                  color: CoresCustomizadas.corConstrasteCustomizada,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: Icon(
              Icons.shopping_cart,
              color: CoresCustomizadas.corAppCustomizada,
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          // Campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Faça sua pesquisa aqui...',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
                prefixIcon: Icon(
                  Icons.search,
                  color: CoresCustomizadas.corConstrasteCustomizada,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60), // Bordas arredondadas
                  borderSide: const BorderSide(
                    width: 0, // Largura da borda
                    style: BorderStyle.none, // Sem borda
                  ),
                ),
              ),
            ),
          ),

          // Lista de categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return TituloCategoria(
                  onPressed: () {
                    setState(() {
                      // Atualiza a categoria selecionada
                      categoriaSelecionada = dadosApp.categorias[index];
                    });
                  },
                  categoria: dadosApp.categorias[index],
                  foiSelecionada: dadosApp.categorias[index] == categoriaSelecionada,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10, // Espaçamento entre categorias
              ),
              itemCount: dadosApp.categorias.length,
            ),
          ),

          // Grid de produtos
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              physics: const BouncingScrollPhysics(), // Rolagem com efeito de mola
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Número de colunas
                mainAxisSpacing: 10, // Espaçamento vertical entre itens
                crossAxisSpacing: 10, // Espaçamento horizontal entre itens
                childAspectRatio: (9 / 12.2), // Proporção dos itens
              ),
              itemCount: dadosApp.items.length,
              itemBuilder: (_, index) {
                return TituloItem(item: dadosApp.items[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
