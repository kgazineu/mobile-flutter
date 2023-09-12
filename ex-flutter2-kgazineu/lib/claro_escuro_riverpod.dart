import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      home: Scaffold(body: Inicio()),
    ),
  ));
}

///
/// Determina se a interface está em modo escuro (true) ou claro (false).
/// No modo escuro, a cor de fundo é preta e o texto é branco.
/// No modo claro, a cor de fundo é branca e o texto é preto.
/// O valor inicial é false, ou seja, modo claro.
///

final modoEscuroProvider = StateProvider((ref) => false);

///
/// Converta a classe para um ConsumerWidget, de forma que a cor de fundo
/// e o texto ("Modo Claro" / "Modo Escuro") variam de acordo com o valor
/// do modoEscuroProvider.
///

class Inicio extends ConsumerWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool modoEscuro = ref.watch(modoEscuroProvider);

    return Container(
      color: modoEscuro ? Colors.black : Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MeuTexto(modoEscuro ? 'Modo Escuro' : 'Modo Claro'),
            const BotaoTrocarModo(),
          ],
        ),
      ),
    );
  }
}

///
/// Mude as cores de acordo com o modo atual (claro ou escuro)
/// Ao clicar no botão, alterne entre modo claro e escuro
///

class BotaoTrocarModo extends ConsumerWidget {
  const BotaoTrocarModo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool modoEscuro = ref.watch(modoEscuroProvider);

    return OutlinedButton(
      onPressed: (){
        ref.read(modoEscuroProvider.notifier).state = !modoEscuro;
      }, // Alternar entre modo claro e escuro
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: modoEscuro ? Colors.white : Colors.black,
        ),
      ),
      child: Text(
        'Trocar',
        style: TextStyle(
          color: modoEscuro ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

///
/// Mude as cores de acordo com o modo atual (claro ou escuro)
///

class MeuTexto extends ConsumerWidget {
  final String texto;
  const MeuTexto(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modoEscuro = ref.watch(modoEscuroProvider);

    return Text(
      texto,
      style: TextStyle(
        color: modoEscuro ? Colors.white : Colors.black,
      ),
    );
  }
}
