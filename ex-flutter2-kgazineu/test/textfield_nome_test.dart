import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exercicios_flutter_parte2/textfield_nome.dart';

void main() {
  group('ex1', () {
    late Finder textFieldFinder;
    late Finder buttonFinder;

    setUp(() {
      textFieldFinder = find.byType(TextField);
      buttonFinder = find.byType(ElevatedButton);
    });
    testWidgets('Os widgets estão presentes', (tester) async {
      await tester.pumpWidget(const App());
      expect(textFieldFinder, findsOneWidget);
      expect(buttonFinder, findsOneWidget);
      expect(find.text('Olá, mundo!'), findsOneWidget);
    });
    testWidgets('Atualiza a mensagem ao clicar no botão',
        (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      await tester.enterText(textFieldFinder, 'World');
      final greetingTextFinder = find.text('Olá, World!');
      expect(greetingTextFinder, findsNothing);

      await tester.tap(buttonFinder);
      await tester.pump();

      expect(greetingTextFinder, findsOneWidget);
    });
  });
}
