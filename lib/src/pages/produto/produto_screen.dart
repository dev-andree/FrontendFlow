import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:app_mobile/src/models/modelo_item.dart';
import 'package:flutter/material.dart';

class ProdutoScreen extends StatelessWidget {
  const ProdutoScreen({super.key, required this.item});

  final ModeloItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          Column(
            children: [
              // Imagem do produto com animação Hero
              Expanded(
                child: Hero(
                  tag: item.urlImagem,
                  child: Image.asset(item.urlImagem),
                ),
              ),
              // Container com informações do produto
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(0, 2),
                        blurRadius: 6, // Suavização da sombra
                        spreadRadius: 1, // Espalhamento da sombra
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Nome do produto e quantidade (placeholder)
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              item.nomeItem,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            color: Colors.blue, // Placeholder para quantidade
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Preço do produto
                      Text(
                        'R\$ ${item.preco.toStringAsFixed(2)}', // Formata o preço com 2 casas decimais
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CoresCustomizadas.corAppCustomizada,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Descrição do produto com rolagem
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SingleChildScrollView(
                            child: Text(
                              item.descricao,
                              style: const TextStyle(
                                height: 1.5,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Botão para adicionar ao carrinho
                      SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CoresCustomizadas.corAppCustomizada,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {
                            // Ação ao pressionar o botão (ainda não implementada)
                          },
                          icon: const Icon(Icons.shopping_cart_checkout_outlined),
                          label: const Text('Add no carrinho'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Botão de voltar
          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
