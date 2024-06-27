import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patron_chain_r/widgets/price_tag.dart';

void main() {
  group('PriceTag Tests', () {
    testWidgets('Should display the correct price',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: PriceTag(),
        ),
      );
      expect(find.text(r'Precio: 5 usd'), findsOneWidget);
    });
  });

  /*
  Completar el Test Faltante: A continuación,
  hay un test incompleto relacionado con la función de remover
   ingredientes.
   Completa este test para asegurarte de que los ingredientes
   se pueden añadir y luego remover correctamente.
   */

  group('Handler Tests', () {
    test('Should calculate total price correctly', () {
      // descomentar y completar el ejercicio
      //  final Handler handler = ChocolateHandler(null);
      //  handler.addIngredient('chocolate', 1.5);
      //  expect(handler.calculateTotal(), 1.5);
    });
    // Test que la audiencia debe completar
    test('Should remove ingredient correctly', () {
      //  final handler = Handler();
      // Agregar lógica para añadir y luego remover un ingrediente
      // Verificar que el ingrediente se ha removido correctamente
    });
  });
}
