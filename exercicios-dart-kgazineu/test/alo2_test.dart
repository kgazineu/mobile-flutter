import 'package:exercicios_dart/alo2.dart';
import 'package:test/test.dart';

void main() {
  // unit test dizAlo
  test('dizAlo', () {
    expect(dizAlo(nome: 'João', saudacao: 'Olá'), 'Olá, João!');
    expect(dizAlo(nome: 'Maria'), 'Alô, Maria!');
    expect(dizAlo(nome: 'Fulano', saudacao: 'Oi'), 'Oi, Fulano!');
  });
}
