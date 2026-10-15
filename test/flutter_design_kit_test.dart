import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_design_kit/flutter_design_kit.dart';

void main() {
  testWidgets('design components render under the kit theme', (tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: DesignTheme.light(),
      home: Scaffold(body: Column(mainAxisSize: MainAxisSize.min, children: [
        AppButton(label: 'Continue', onPressed: () {}),
        const AppTextField(label: 'Email'),
        const StatusBadge(label: 'Ready', tone: StatusTone.success),
        const AppCard(child: Text('Card content')),
      ])),
    ));

    expect(find.text('Continue'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Ready'), findsOneWidget);
    expect(find.text('Card content'), findsOneWidget);
  });
}
