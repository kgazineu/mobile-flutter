import 'package:flutter/material.dart';

void main() {
  runApp(criaApp());
}

// Modifique esta função para retornar um widget do tipo Text
// com a mensagem "Aprendendo Flutter!"
criaApp() {
  return const Placeholder(child: 
  Text("Aprendendo Flutter!",
   textDirection: TextDirection.ltr));
}
