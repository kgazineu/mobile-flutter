import 'package:exercicios_dart/alo1.dart';
import 'package:test/test.dart';

void main() {
  // unit test dizAlo
  test('dizAlo', () {
    expect(dizAlo('João', 'Olá'), 'Olá, João!');
    expect(dizAlo('Maria'), 'Alô, Maria!');
    expect(dizAlo('Fulano', 'Oi'), 'Oi, Fulano!');
  });
}
