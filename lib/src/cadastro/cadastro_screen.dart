import 'package:app_mobile/src/autenticacao/components/campo_texto_customizado.dart';
import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tamanho = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CoresCustomizadas.corAppCustomizada,
      body: SingleChildScrollView(
        child: SizedBox(
          height: tamanho.height,
          child: Column(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                      TextSpan(style: const TextStyle(fontSize: 35), children: [
                    const TextSpan(
                      text: 'Input',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                        text: ' Web Dev',
                        style: TextStyle(
                            color: CoresCustomizadas.corConstrasteCustomizada)),
                  ])),
                ],
              )),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Nome
                    const CampoTextoCustomizado(
                      label: 'user.name',
                      icon: Icons.person,
                    ),
                    //Email
                    const CampoTextoCustomizado(
                      label: 'user.email',
                      icon: Icons.email,
                    ),
                    //Telefone
                    const CampoTextoCustomizado(
                      label: 'user.phone',
                      icon: Icons.phone,
                    ),
                    //CPF
                    const CampoTextoCustomizado(
                      label: 'user.id',
                      icon: Icons.badge,
                    ),
                    //Senha
                    const CampoTextoCustomizado(
                      label: 'user.password',
                      icon: Icons.lock,
                      isSecret: true,
                    ),

                    //Botão Cadastrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                CoresCustomizadas.corAppCustomizada,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        onPressed: () {
                          // Lógica para cadastrar o usuário
                        },
                        child: const Text(
                          'Deploy Now',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
