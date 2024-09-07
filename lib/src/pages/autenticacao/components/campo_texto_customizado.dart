import 'package:flutter/material.dart';

class CampoTextoCustomizado extends StatefulWidget {
  // Propriedades do campo de texto personalizável
  final IconData icon;  // Ícone que aparece à esquerda do campo
  final String label;   // Rótulo do campo de texto
  final bool isSecret;  // Define se o texto será oculto (ex: senha)

  // Construtor da classe com parâmetros obrigatórios e opcionais
  const CampoTextoCustomizado(
      {super.key,
      required this.icon,
      required this.label,
      this.isSecret = false});  // Por padrão, o texto não será oculto

  @override
  State<CampoTextoCustomizado> createState() => _CampoTextoCustomizadoState();
}

class _CampoTextoCustomizadoState extends State<CampoTextoCustomizado> {
  // Variável para controlar se o texto está oculto
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret; // Inicializa com base no valor de isSecret
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15), // Espaçamento inferior entre campos
      child: TextFormField(
        obscureText: isObscure, // Define se o campo é obscuro (ex: senha)
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon), // Ícone à esquerda do campo
          suffixIcon: widget.isSecret // Condicional para exibir ícone de visibilidade em campos secretos
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure; // Alterna entre mostrar ou esconder o texto
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off, // Alterna o ícone de visibilidade
                  ),
                )
              : null, // Caso não seja secreto, o ícone à direita não é exibido
          labelText: widget.label, // Define o rótulo do campo
          isDense: true, // Ajusta a densidade do campo, tornando-o mais compacto
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18), // Bordas arredondadas do campo
          ),
        ),
      ),
    );
  }
}
