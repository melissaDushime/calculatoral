import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/main.dart';

void main() {
  testWidgets('Tab navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify initial screen is SignInScreen
    expect(find.text('Sign In Screen'), findsOneWidget);
    expect(find.text('Sign Up Screen'), findsNothing);

    // Tap on the Sign Up tab
    await tester.tap(find.byIcon(Icons.person_add));
    await tester.pumpAndSettle();

    // Verify the screen changes to SignUpScreen
    expect(find.text('Sign Up Screen'), findsOneWidget);
    expect(find.text('Sign In Screen'), findsNothing);

    // Tap on the Settings tab
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pumpAndSettle();

    // Verify the screen changes to SettingsScreen
    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Calculator by clb'), findsNothing);

    // Optionally, you can add more tests for specific interactions or widgets as needed
  });
}
