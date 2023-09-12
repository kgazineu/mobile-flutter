import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Contador(),
    ),
  ));
}

/// Crie um StatelessWidget chamado contador, que exibe três botões:
/// +1, +5 e +25. Ao clicar em cada um deles, o contador é incrementado
/// em 1, 5 e 25, respectivamente, e uma snackbar é exibida com o texto
/// "Contador: <N>", onde <N> é o valor atual do contador.
/// 
/// OBS.: Não é uma boa prática guardar o estado do contador dentro de
/// um StatelessWidget, mas vamos fazer isso por enquanto para aprender
/// como funciona.
class Contador extends StatelessWidget {
  const Contador({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton(
          child: const Text("+1"),
          onPressed: () {
            contador += 1;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Contador: $contador"),
                duration: const Duration(milliseconds: 500)));
          }),
      ElevatedButton(
          child: const Text("+5"),
          onPressed: () {
            contador += 5;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Contador: $contador"),
                duration: const Duration(milliseconds: 500)));
          }),
      ElevatedButton(
          child: const Text("+25"),
          onPressed: () {
            contador += 25;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Contador: $contador"),
                duration: const Duration(milliseconds: 500)));
          })
    ]));
  }
}
