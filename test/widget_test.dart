import 'package:flutter_test/flutter_test.dart';
import 'package:sonhos_revelados/main.dart';

void main() {
  testWidgets('abre a tela inicial', (tester) async {
    await tester.pumpWidget(const SonhosReveladosApp());
    expect(find.text('Sonhos Revelados'), findsOneWidget);
  });
}
