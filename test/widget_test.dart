import 'package:flutter_test/flutter_test.dart';

import 'package:learn_flutter/main.dart';

void main() {
  testWidgets('muestra la grilla de talleres', (WidgetTester tester) async {
    await tester.pumpWidget(const FlutterWorkshopsApp());
    await tester.pumpAndSettle();

    expect(find.text('Talleres Flutter'), findsOneWidget);
    expect(find.text('Animaciones'), findsOneWidget);
    expect(find.text('Transiciones'), findsOneWidget);
    expect(find.text('Interacciones'), findsOneWidget);
  });
}
