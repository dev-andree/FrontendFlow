import 'package:app_mobile/src/pages/autenticacao/components/campo_texto_customizado.dart';
import 'package:app_mobile/src/pages/base/base_screen.dart';
import 'package:app_mobile/src/cadastro/cadastro_screen.dart'; // Importar a tela de cadastro
import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtém o tamanho da tela para ajustar a altura dos componentes
    final tamanho = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CoresCustomizadas.corAppCustomizada, // Cor de fundo personalizada
      body: SingleChildScrollView( // Permite rolar o conteúdo em telas menores
        child: SizedBox(
          height: tamanho.height, // Ajusta o tamanho da tela
          child: Column(
            children: [
              // Área expansível que contém o título
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Centraliza o conteúdo verticalmente
                  children: [
                    // Título estilizado com duas cores
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(fontSize: 35), // Tamanho da fonte
                        children: [
                          const TextSpan(
                            text: 'Frontend', // Primeira parte do título
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold, // Negrito
                            ),
                          ),
                          TextSpan(
                            text: 'Flow', // Segunda parte do título com cor de contraste
                            style: TextStyle(
                              color: CoresCustomizadas.corConstrasteCustomizada,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text('\'Where vision meets code\''), // Slogan da aplicação
                  ],
                ),
              ),

              // Container que contém os campos de login e botões
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32, // Espaçamento horizontal
                  vertical: 40, // Espaçamento vertical
                ),
                decoration: const BoxDecoration(
                  color: Colors.white, // Fundo branco do container
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45), // Bordas arredondadas na parte superior
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // O conteúdo preenche a largura
                  children: [
                    // Campo de texto para o email
                    const CampoTextoCustomizado(
                      label: 'user.email', // Rótulo do campo
                      icon: Icons.email, // Ícone de email
                    ),
                    // Campo de texto para a senha com ocultação de texto
                    const CampoTextoCustomizado(
                      label: 'user.password',
                      icon: Icons.lock,
                      isSecret: true, // Campo de senha
                    ),

                    // Botão de entrar
                    SizedBox(
                      height: 50, // Altura do botão
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              CoresCustomizadas.corAppCustomizada, // Cor do botão
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18), // Bordas arredondadas
                          ),
                        ),
                        onPressed: () {
                          // Navegação para a BaseScreen
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (c) {
                            return BaseScreen();
                          }));
                        },
                        child: const Text(
                          'Join the Network', // Texto do botão
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                            fontSize: 20, // Tamanho do texto
                          ),
                        ),
                      ),
                    ),

                    // Link para recuperação de senha
                    Align(
                      alignment: Alignment.centerRight, // Alinha à direita
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Recover Your Key', // Texto do link
                          style: TextStyle(
                              color: CoresCustomizadas.corConstrasteCustomizada),
                        ),
                      ),
                    ),

                    // Divisor entre as seções
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(100), // Cor do divisor
                              thickness: 2, // Espessura do divisor
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Text('||'), // Texto separador
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(100),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Botão de novo usuário
                    SizedBox(
                      height: 50, // Altura do botão
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18), // Bordas arredondadas
                          ),
                          side: BorderSide(
                            width: 3, // Largura da borda
                            color: CoresCustomizadas.corAppCustomizada, // Cor da borda
                          ),
                        ),
                        onPressed: () {
                          // Navega para a tela de cadastro
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CadastroScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Build Your Profile', // Texto do botão
                          style: TextStyle(
                            fontSize: 18, // Tamanho do texto
                            color: CoresCustomizadas.corAppCustomizada, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
