import 'package:app_mobile/src/pages/autenticacao/components/campo_texto_customizado.dart';
import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Captura o tamanho da tela para definir a altura
    final tamanho = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CoresCustomizadas.corAppCustomizada, // Cor de fundo personalizada
      body: SingleChildScrollView( // Para permitir a rolagem em caso de telas menores
        child: SizedBox(
          height: tamanho.height, // Tamanho total da tela
          child: Column(
            children: [
              // Área expansível centralizada que contém o título
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
                  children: [
                    // Título estilizado com duas cores
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(fontSize: 35), // Tamanho do texto
                        children: [
                          const TextSpan(
                            text: 'Input', // Primeira parte do título em negrito
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' Web Dev', // Segunda parte do título com cor personalizada
                            style: TextStyle(
                              color: CoresCustomizadas.corConstrasteCustomizada,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Container que contém os campos de texto e o botão
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
                  crossAxisAlignment: CrossAxisAlignment.stretch, // Preenche todo o espaço horizontal
                  children: [
                    // Campo para o Nome do usuário
                    const CampoTextoCustomizado(
                      label: 'user.name', // Rótulo personalizado
                      icon: Icons.person, // Ícone de pessoa
                    ),
                    // Campo para o Email do usuário
                    const CampoTextoCustomizado(
                      label: 'user.email',
                      icon: Icons.email,
                    ),
                    // Campo para o Telefone do usuário
                    const CampoTextoCustomizado(
                      label: 'user.phone',
                      icon: Icons.phone,
                    ),
                    // Campo para o CPF do usuário
                    const CampoTextoCustomizado(
                      label: 'user.id',
                      icon: Icons.badge,
                    ),
                    // Campo para a Senha com opção de ocultar
                    const CampoTextoCustomizado(
                      label: 'user.password',
                      icon: Icons.lock,
                      isSecret: true, // Indicador de campo de senha
                    ),

                    // Botão para enviar o cadastro
                    SizedBox(
                      height: 50, // Altura do botão
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CoresCustomizadas.corAppCustomizada, // Cor personalizada do botão
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18), // Bordas arredondadas no botão
                          ),
                        ),
                        onPressed: () {
                          // Lógica para cadastrar o usuário
                        },
                        child: const Text(
                          'Deploy Now', // Texto do botão
                          style: TextStyle(
                            color: Colors.white, // Cor do texto do botão
                            fontSize: 20, // Tamanho do texto do botão
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
