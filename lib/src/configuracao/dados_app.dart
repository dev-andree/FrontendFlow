import 'package:app_mobile/src/models/modelo_item.dart';

// Definição dos itens com suas respectivas propriedades

ModeloItem maca = ModeloItem(
  descricao:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda',
  urlImagem: 'assets\\images\\goiaba_015.jpg', // Caminho para a imagem
  nomeItem: 'Maçã', // Nome do item
  preco: 5.5, // Preço por unidade
  tipoUnidade: 'kg', // Tipo de unidade (quilo)
);

ModeloItem uva = ModeloItem(
  descricao:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda',
  urlImagem: 'assets\\images\\goiaba_015.jpg',
  nomeItem: 'uva',
  preco: 5.5,
  tipoUnidade: 'kg',
);

ModeloItem goiaba = ModeloItem(
  descricao:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda',
  urlImagem: 'assets\\images\\goiaba_015.jpg',
  nomeItem: 'goiaba',
  preco: 5.5,
  tipoUnidade: 'kg',
);

ModeloItem kiwi = ModeloItem(
  descricao:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda',
  urlImagem: 'assets\\images\\goiaba_015.jpg',
  nomeItem: 'kiwi',
  preco: 5.5,
  tipoUnidade: 'kg',
);

ModeloItem manga = ModeloItem(
  descricao:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda',
  urlImagem: 'assets\\images\\goiaba_015.jpg',
  nomeItem: 'manga',
  preco: 5.5,
  tipoUnidade: 'kg',
);

// Lista de todos os itens
List<ModeloItem> items = [
  maca,
  uva,
  goiaba,
  kiwi,
  manga,
];

// Lista de categorias de produtos
List<String> categorias = [
  'Frutas',   // Categoria 1
  'Verduras', // Categoria 2
  'Temperos', // Categoria 3
  'Cereais',  // Categoria 4
  'Grãos'     // Categoria 5
];
