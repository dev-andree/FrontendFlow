import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:app_mobile/src/models/modelo_item.dart';
import 'package:app_mobile/src/pages/produto/produto_screen.dart';
import 'package:flutter/material.dart';

class TituloItem extends StatelessWidget {
  const TituloItem({super.key, required this.item});

  // Objeto ModeloItem que será exibido
  final ModeloItem item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            // Navega para a tela de detalhes do produto quando o item é tocado
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              return ProdutoScreen(item: item);
            }));
          },
          child: Card(
            elevation: 1, // Sombra da card
            shadowColor: Colors.grey.shade300, // Cor da sombra
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Bordas arredondadas
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Espaçamento interno
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Alinhamento dos itens
                children: [
                  // Imagem do item com animação de transição (Hero)
                  Expanded(
                    child: Hero(
                      tag: item.urlImagem, // Tag usada para animação de transição
                      child: Image.asset(item.urlImagem), // Exibe a imagem do item
                    ),
                  ),
                  // Nome do item
                  Text(
                    item.nomeItem, // Exibe o nome do item
                    style: const TextStyle(
                      fontSize: 16, // Tamanho da fonte
                      fontWeight: FontWeight.bold, // Fonte em negrito
                    ),
                  ),
                  // Preço e unidade do item
                  Row(
                    children: [
                      Text(
                        item.preco.toString(), // Exibe o preço
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Fonte em negrito
                          fontSize: 20, // Tamanho da fonte
                          color: CoresCustomizadas.corAppCustomizada, // Cor do texto
                        ),
                      ),
                      Text(
                        '/${item.tipoUnidade}', // Exibe o tipo de unidade
                        style: TextStyle(
                          color: Colors.grey.shade500, // Cor do texto
                          fontWeight: FontWeight.bold, // Fonte em negrito
                          fontSize: 14, // Tamanho da fonte
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 4, // Posição superior do botão
          right: 4, // Posição direita do botão
          child: GestureDetector(
            onTap: () {
              // Ação quando o ícone do carrinho é tocado
              print('item selecionado: ${item.nomeItem}');
            },
            child: Container(
              height: 40, // Altura do botão
              width: 36, // Largura do botão
              decoration: BoxDecoration(
                color: CoresCustomizadas.corAppCustomizada, // Cor de fundo do botão
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15), // Arredondamento da parte inferior esquerda
                  topRight: Radius.circular(20), // Arredondamento da parte superior direita
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined, // Ícone do carrinho
                color: Colors.white, // Cor do ícone
                size: 20, // Tamanho do ícone
              ),
            ),
          ),
        ),
      ],
    );
  }
}
