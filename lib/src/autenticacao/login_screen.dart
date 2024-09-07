import 'package:app_mobile/src/autenticacao/components/campo_texto_customizado.dart';
import 'package:app_mobile/src/base/base_screen.dart';
import 'package:app_mobile/src/cadastro/cadastro_screen.dart'; // Importar a tela de cadastro
import 'package:app_mobile/src/configuracao/cores_customizadas.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      text: 'Frontend',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                        text: 'Flow',
                        style: TextStyle(
                            color: CoresCustomizadas.corConstrasteCustomizada)),
                  ])),
                  const Text('\'Where vision meets code\''),
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
                    //Email
                    const CampoTextoCustomizado(
                      label: 'user.email',
                      icon: Icons.email,
                    ),
                    //Senha
                    const CampoTextoCustomizado(
                      label: 'user.password',
                      icon: Icons.lock,
                      isSecret: true,
                    ),

                    //Botão Entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                CoresCustomizadas.corAppCustomizada,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(builder: (c) {
                            return BaseScreen();
                          }));
                        },
                        child: const Text(
                          'Join the Network',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),

                    //Link Esqueceu a Senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Recover Your Key',
                          style: TextStyle(
                              color:
                                  CoresCustomizadas.corConstrasteCustomizada),
                        ),
                      ),
                    ),

                    // Divisor

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(100),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Text('||'),
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

                    //Botão novo usuario
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            side: BorderSide(
                              width: 3,
                              color: CoresCustomizadas.corAppCustomizada,
                            )),
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
                          'Build Your Profile',
                          style: TextStyle(
                              fontSize: 18,
                              color: CoresCustomizadas.corAppCustomizada),
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
