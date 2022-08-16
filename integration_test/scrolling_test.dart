import 'package:demo_flutter_performance_test/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  final IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding.ensureInitialized()
          as IntegrationTestWidgetsFlutterBinding;

  testWidgets('Counter increments smoke integration_test', (tester) async {
    await tester.pumpWidget(const App());

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.text('Item: 50');

    await binding.traceAction(
      () async {
        await tester.scrollUntilVisible(
          itemFinder,
          500.0,
          scrollable: listFinder,
        );
      },
      reportKey: 'scrolling_timeline',
    );

    expect(itemFinder, findsOneWidget);
  });
}
