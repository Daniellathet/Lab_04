import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('order summary shows item, quantity and correct total', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(
          itemName: 'Cheese Pizza',
          quantity: 2,
          unitPrice: 12.50,
        ),
      ),
    );

    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Quantity: 2'), findsOneWidget);
    expect(find.textContaining('RM 25.00'), findsOneWidget);
  });
}
