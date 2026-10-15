import 'package:flutter/material.dart';
import 'package:flutter_design_kit/flutter_design_kit.dart';

void main() {
  runApp(const DesignKitExampleApp());
}

class DesignKitExampleApp extends StatelessWidget {
  const DesignKitExampleApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Flutter Design Kit Example',
    theme: DesignTheme.light(),
    darkTheme: DesignTheme.dark(),
    themeMode: ThemeMode.system,
    home: const ExampleHomePage(),
  );
}

class ExampleHomePage extends StatelessWidget {
  const ExampleHomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Flutter Design Kit')),
    body: ListView(
      padding: const EdgeInsets.all(DesignSpacing.lg),
      children: [
        const StatusBadge(label: 'Ready', tone: StatusTone.success),
        const SizedBox(height: DesignSpacing.md),
        const AppTextField(
          label: 'Email',
          hint: 'name@example.com',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: DesignSpacing.md),
        AppButton(
          label: 'Continue',
          icon: Icons.arrow_forward,
          onPressed: () {},
          expand: true,
        ),
        const SizedBox(height: DesignSpacing.md),
        const AppCard(child: Text('Components inherit the active app theme.')),
      ],
    ),
  );
}
