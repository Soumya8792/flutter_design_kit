# Flutter Design Kit

A customizable Material 3 design system for Flutter apps. It provides coordinated light and dark themes, semantic color and spacing tokens, and common components that inherit their styling from your app theme.

## Features

- Material 3 light and dark themes with configurable brand seed color and font family.
- Semantic colors for primary, surface, outline, success, warning, and error states.
- Shared spacing, radius, and control-height tokens.
- Reusable `AppButton`, `AppCard`, `AppTextField`, and `StatusBadge` widgets.
- Components follow the active Flutter theme and support normal Flutter customization.

## Getting started

Add `flutter_design_kit` to your Flutter app, then import the package:

```dart
import 'package:flutter_design_kit/flutter_design_kit.dart';
```

## Usage

Set up light and dark themes in your app:

```dart
MaterialApp(
  theme: DesignTheme.light(seedColor: const Color(0xFF6750A4)),
  darkTheme: DesignTheme.dark(seedColor: const Color(0xFF6750A4)),
  themeMode: ThemeMode.system,
  home: const HomePage(),
);
```

Use the shared components in any widget tree:

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const StatusBadge(label: 'Ready', tone: StatusTone.success),
    const SizedBox(height: DesignSpacing.md),
    AppTextField(label: 'Email', keyboardType: TextInputType.emailAddress),
    const SizedBox(height: DesignSpacing.md),
    AppButton(
      label: 'Continue',
      icon: Icons.arrow_forward,
      onPressed: () {},
      expand: true,
    ),
    const SizedBox(height: DesignSpacing.md),
    const AppCard(child: Text('Content goes here')),
  ],
)
```

Use `AppButtonVariant.secondary` or `.tertiary` for alternate button treatments. `DesignColors` is available from the current theme with `Theme.of(context).extension<DesignColors>()`; `copyWith` can override semantic colors. The theme factories also accept `fontFamily` to use your app's typography.

## Customization

The kit is intentionally built on Flutter's `ThemeData` and Material widgets. Override component themes in `ThemeData`, supply a brand seed color to `DesignTheme`, or wrap individual controls with standard Flutter theme widgets. Spacing values are available through `DesignSpacing`.

## Compatibility

Requires Flutter and Dart versions declared in `pubspec.yaml`. The package has no third-party runtime dependencies.
