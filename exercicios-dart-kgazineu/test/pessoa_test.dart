import 'package:exercicios_dart/pessoa.dart';
import 'package:test/test.dart';

void main() {
  // unit test dizAlo
  test('Pessoa admite duas formas de instanciar', () {
    var p = Pessoa('asd', idade: 17);
    expect(p.nome, 'asd');
    expect(p.idade, 17);
    expect(p.altura, null);
    p = Pessoa('qwe', idade: 20, altura: 1.91);
    expect(p.nome, 'qwe');
    expect(p.idade, 20);
    expect(p.altura, 1.91);
  });

  test('Pessoa alta pode jogar basquete', () {
    var p = Pessoa('fgh', idade: 40, altura: 2.03);
    expect(p.podeJogarBasquete(), true);
  });

  test('Pessoa baixa não pode jogar basquete', () {
    var p = Pessoa('zxcqweads', idade: 33, altura: 1.30);
    expect(p.podeJogarBasquete(), false);
  });
  test('Pessoa sem altura não pode jogar basquete', () {
    var p = Pessoa('dfg', idade: 50);
    expect(p.podeJogarBasquete(), false);
  });
}
