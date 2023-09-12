import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(body: Inicio()),
  ));
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: const Center(
        child: BotaoOnOff(),
      ),
    );
  }
}

///
/// Transforme este widget em um stateful widget
/// e faça com que o botão alterne entre "On" e "Off"
/// quando for clicado.
///
/// O valor inicial do botão deve ser "Off".
///
class BotaoOnOff extends StatefulWidget {
  const BotaoOnOff({super.key});

  @override
  State<BotaoOnOff> createState() => _BotaoOnOffState();
}

class _BotaoOnOffState extends State<BotaoOnOff> {
  bool isOn = true;

  void _toggleSwitch() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toggleSwitch,
      child: Text(isOn ? 'Off' : 'On'),
    );
  }
}
