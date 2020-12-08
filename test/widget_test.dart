// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:color_random/main.dart';

void main() {
  testWidgets('Change color test', (WidgetTester tester) async {
    //* Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    //* Verify that our container color is black.
    final myContainer = isA<AnimatedContainer>().having(
        (t) => t.decoration, 'decoration', BoxDecoration(color: Colors.black));

    expect(
      tester.widget(find.byType(AnimatedContainer)),
      myContainer,
    );

    //* Tap on text.
    await tester.tap(find.text('Hey there'));
    await tester.pump();

    //* Verify that our container color is different.
    expect(
      tester.widget(find.byType(AnimatedContainer)),
      isNot(myContainer),
    );
  });
}
