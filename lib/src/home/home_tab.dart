import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:app_mobile/src/home/components/titulo_categoria.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categorias = [
    'Frutas',
    'Verduras',
    'Temperos',
    'Cereais',
    'Grãos'
  ];

  String categoriaSelecionada = 'Verduras';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'faça sua pesquisa aqui...',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
                prefixIcon: Icon(
                  Icons.search,
                  color: CoresCustomizadas.corConstrasteCustomizada,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
          ),

          //categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return TituloCategoria(
                      onPressed: () {
                        setState(() {
                          categoriaSelecionada = categorias[index];
                        });
                      },
                      categoria: categorias[index],
                      foiSelecionada: categorias[index] == categoriaSelecionada,
                      );
                      
                },
                separatorBuilder: (_, index) => const SizedBox(
                      width: 10,
                    ),
                itemCount: categorias.length),
          )
        ],
      ),
    );
  }
}
